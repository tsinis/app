import 'package:rest_api/hotels_api.dart';

class CoreDependencies {
  const CoreDependencies(this.restClient);

  final ClientHttp restClient;
}
