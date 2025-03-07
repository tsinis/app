// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'api_image.dart';

part 'agent.mapper.dart';

@MappableClass()
class Agent with AgentMappable {
  const Agent({
    this.availability,
    this.image,
    this.name,
    this.telephone,
    this.text,
    this.vita,
  });

  final String? availability;
  final ApiImage? image;
  final String? name;
  final String? telephone;
  final String? text;
  final String? vita;

  static Agent fromJson(Map<String, dynamic> json) =>
      AgentMapper.ensureInitialized().decodeMap<Agent>(json);
}
