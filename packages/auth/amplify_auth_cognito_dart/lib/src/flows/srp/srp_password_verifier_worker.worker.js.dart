// Generated by worker_bee_builder.

import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_password_verifier_worker.dart';
import 'package:aws_common/aws_common.dart';

/// The JS implementation of [SrpPasswordVerifierWorker].
class SrpPasswordVerifierWorkerImpl extends SrpPasswordVerifierWorker {
  @override
  String get name => 'SrpPasswordVerifierWorker';
  @override
  String get jsEntrypoint {
    // Flutter web release builds must use the bundled asset.
    if (zIsFlutter && !zDebugMode) {
      return 'assets/packages/amplify_auth_cognito_dart/lib/src/workers/workers.min.js';
    }
    // Default to the compiled, published worker.
    return zDebugMode
        ? 'packages/amplify_auth_cognito_dart/src/workers/workers.js'
        : 'packages/amplify_auth_cognito_dart/src/workers/workers.min.js';
  }

  @override
  List<String> get fallbackUrls {
    // When running in a test, we need to find the `packages` directory which
    // is symlinked in the root `test/` directory.
    final baseUri = Uri.base;
    final basePath = baseUri.pathSegments
        .takeWhile((segment) => segment != 'test')
        .map(Uri.encodeComponent)
        .join('/');
    const relativePath = zDebugMode
        ? 'packages/amplify_auth_cognito_dart/src/workers/workers.debug.dart.js'
        : 'packages/amplify_auth_cognito_dart/src/workers/workers.release.dart.js';
    final testRelativePath = Uri(
      scheme: baseUri.scheme,
      host: baseUri.host,
      port: baseUri.port,
      path: '$basePath/test/$relativePath',
    ).toString();
    return [
      relativePath,
      testRelativePath,
    ];
  }
}
