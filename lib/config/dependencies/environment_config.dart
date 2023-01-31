import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig {
  static Future<void> get development async =>
      dotenv.load(fileName: "assets/env/.env_dev");
  static Future<void> get production async =>
      dotenv.load(fileName: "assets/env/.env_prod");
}
