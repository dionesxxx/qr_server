import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Seed extends Equatable {
  const Seed({
    required this.seed,
    this.expiresAt,
  });

  final String seed;
  final String? expiresAt;

  Map<String, dynamic> toJson() => {
        'seed': seed,
        'expiresAt': expiresAt,
      };

  @override
  List<Object?> get props => [seed, expiresAt];
}
