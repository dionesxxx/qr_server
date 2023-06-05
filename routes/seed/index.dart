import 'dart:convert';
import 'dart:math';
import 'package:dart_frog/dart_frog.dart';

import '../../models/seed.dart';

Response onRequest(RequestContext context) {
  final date = DateTime.now().add(
    const Duration(seconds: 30),
  );

  final seed = Seed(
    seed: getRandString(32),
    expiresAt: date.toIso8601String(),
  );
  return Response.json(body: seed.toJson());
}

String getRandString(int length) {
  final random = Random.secure();
  final values = List<int>.generate(length, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}
