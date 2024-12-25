import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentHandler{
  const EnvironmentHandler._();

  static const String _endpoint = 'END_POINT';
  static const String _accessKey = 'ACCESS_KEY';
  static const String _secretKey = 'SECRET_KEY';
  static const String _bucketName = 'BUCKET_NAME';

  static Future<void> init() async {
    await dotenv.load(
      fileName: ".env",
    );
  }

  static String get endpoint{
    return dotenv.env[_endpoint]!;
  }

  static String get accessKey{
    return dotenv.env[_accessKey]!;
  }

  static String get secretKey{
    return dotenv.env[_secretKey]!;
  }

  static String get bucketName{
    return dotenv.env[_bucketName]!;
  }
}