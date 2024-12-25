import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

class S3StorageUrlGenerator {
  static String accessKey = "1175a342-6640-4f54-9537-526258b3c457";
  static String secretKey = "1175a342-6640-4f54-9537-526258b3c457";
  static String bucketName = "testttttt";
  static String region = "default";
  String generatePresignedUrl({
    required String objectKey,
    required int expiresIn, // Expiration in seconds
    String httpMethod = 'PUT', // HTTP method (e.g., PUT or GET)
  }) {
    final endpoint = 'https://$bucketName.s3.$region.s3.ir-thr-at1.arvanstorage.ir';
    final host = '$bucketName.s3.$region.amazonaws.com';
    final dateTime = DateTime.now().toUtc();
    final date =
        dateTime.toIso8601String().substring(0, 10).replaceAll('-', '');
    final isoDateTime = dateTime
            .toIso8601String()
            .replaceAll(':', '')
            .replaceAll('-', '')
            .split('.')
            .first +
        'Z';

    // Step 1: Build Canonical Request
    final canonicalUri = '/$objectKey';
    final canonicalHeaders = 'host:$host\nx-amz-date:$isoDateTime\n';
    final signedHeaders = 'host;x-amz-date';
    final canonicalQueryString = 'X-Amz-Algorithm=AWS4-HMAC-SHA256'
        '&X-Amz-Credential=${Uri.encodeComponent("$accessKey/$date/$region/s3/aws4_request")}'
        '&X-Amz-Date=$isoDateTime'
        '&X-Amz-Expires=$expiresIn'
        '&X-Amz-SignedHeaders=$signedHeaders';

    final canonicalRequest =
        '$httpMethod\n$canonicalUri\n$canonicalQueryString\n$canonicalHeaders\n$signedHeaders\nUNSIGNED-PAYLOAD';

    // Step 2: Build String to Sign
    final hashCanonicalRequest =
        sha256.convert(utf8.encode(canonicalRequest)).toString();
    final stringToSign =
        'AWS4-HMAC-SHA256\n$isoDateTime\n$date/$region/s3/aws4_request\n$hashCanonicalRequest';

    // Step 3: Generate Signing Key
    Uint8List sign(String key, String message) {
      final hmac = Hmac(sha256, utf8.encode(key));
      final digest = hmac.convert(utf8.encode(message));
      return Uint8List.fromList(digest.bytes); // Convert to Uint8List
    }

    final kDate = sign('AWS4$secretKey', date);
    final kRegion = sign(utf8.decode(kDate), region);
    final kService = sign(utf8.decode(kRegion), 's3');
    final kSigning = sign(utf8.decode(kService), 'aws4_request');
    final signature =
        Hmac(sha256, kSigning).convert(utf8.encode(stringToSign)).toString();

    // Step 4: Build Presigned URL
    final presignedUrl =
        '$endpoint$canonicalUri?$canonicalQueryString&X-Amz-Signature=$signature';
    return presignedUrl;
  }
}
