
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'env.freezed.dart';

final environmentProvider = Provider<Environment>((ref) => Environment.fromEnv());

@freezed
sealed class Environment with _$Environment {
  const factory Environment.dev({
    // Name of the environment (dev, prod, ...) just for debug purpose
    required String name,

    /// Url of your backend API / or Supabase URL / or Firebase Functions region
    required String backendUrl,

    /// Supabase anonymous token
    required String supabaseToken,
  }) = DevEnvironment;

  const Environment._();

  factory Environment.fromEnv() {
    return const Environment.dev(
          name: 'dev',
          backendUrl: String.fromEnvironment('BACKEND_URL'),
          supabaseToken: String.fromEnvironment('SUPABASE_TOKEN'),
        );
  }
}
