// ignore_for_file: avoid_print, avoid-non-ascii-symbols,

import 'dart:async';
import 'dart:io';

/// Run `dart run :cli` from package root to generate REST clients and models.
Future<void> main() async {
  print('🚀 Starting REST API workflow...');

  final schemaFile = File('schema/openapi.json');
  if (!schemaFile.existsSync()) {
    print('❌ Error: Schema file not found at "schema/openapi.json"');
    print('Fetch new one or/and put JSON schema file in the `schema` folder');
    exit(1);
  }

  print('✅ Schema file found');

  await _runCommand(
    ['run', 'swagger_parser'],
    '📝 Generating REST '
    'clients and data classes',
  );

  final clientFile = File('lib/src/clients/client_http.dart');
  if (!clientFile.existsSync()) {
    print('⚠️ Warning: client_http.dart file not found. Skip modification.');
  }

  print('📝 Modifying client_http.dart file...');
  try {
    String content = await clientFile.readAsString();
    const import = "import 'package:dio/dio.dart';";
    content = content.replaceFirst(
      import,
      "$import\nimport 'package:flutter/foundation.dart';",
    );
    const annotation = '@RestApi';
    content = content.replaceFirst(
      '$annotation()',
      '$annotation(parser: Parser.FlutterCompute)',
    );
    const type = 'ApiResponse';
    content = content.replaceFirst('<$type>', '<$type?>');

    await clientFile.writeAsString(content);
    print('✅ Successfully modified client_http.dart');
  } catch (error) {
    print('❌ Error modifying client_http.dart: $error');
  }
  await _runCommand(['pub', 'get'], '📦 Running pub get');

  const buildRunner = ['run', 'build_runner', 'build', '-d'];
  await _runCommand(buildRunner, '🏗️ Running build_runner for retrofit');

  final codgeGenFile = File('lib/src/clients/client_http.g.dart');
  if (!codgeGenFile.existsSync()) {
    print('⚠️ Warning: client_http.g.dart file not found. Skip modification.');
  }

  print('📝 Modifying client_http.g.dart file...');
  try {
    String content = await codgeGenFile.readAsString();
    content = content.replaceFirst(
      'deserializeApiResponse',
      'ApiResponse.fromJson',
    );

    await codgeGenFile.writeAsString(content);
    print('✅ Successfully modified client_http.g.dart');
  } catch (error) {
    print('❌ Error modifying client_http.g.dart: $error');
  }

  await _runCommand(['format', '.'], '✨ Formatting code');

  print('🎉 Clients and models are generated!');

  return _runCommand(
    ['test'],
    '🧪 Running tests to verify serialization and deserialization',
    isFlutter: true,
  );
}

// ignore: prefer-static-class, just a CLI tool.
Future<void> _runCommand(
  List<String> arguments,
  String message, {
  bool isFlutter = false,
}) async {
  print('\n$message...');
  final executable = isFlutter ? 'flutter' : 'dart';
  final result = await Process.run(executable, arguments);

  if (result.stderr.toString().trim().isNotEmpty && !isFlutter) {
    print('⚠️ Warnings/Errors:');
    print(result.stderr);
  }

  if (result.exitCode != 0) {
    print('❌ Command failed with exit code ${result.exitCode}');
    if (isFlutter) return;
    // ignore: only_throw_errors, it's just a CLI tool.
    throw 'Command failed: $executable ${arguments.join(' ')}';
  }

  print('✅ Step completed successfully');
}
