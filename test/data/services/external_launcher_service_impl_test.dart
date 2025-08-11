import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_finder/data/services/external_launcher_service_impl.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  test('launchExternalUrl calls launchUrl when URL is valid', () async {
    var canLaunchCalled = false;
    var launchCalled = false;

    final service = ExternalLauncherServiceImpl(
      canLaunchUrlFn: (uri) async {
        expect(uri.toString(), 'https://example.com');
        canLaunchCalled = true;
        return true;
      },
      launchUrlFn: (uri, {LaunchMode? mode}) async {
        expect(uri.toString(), 'https://example.com');
        expect(mode, LaunchMode.externalApplication);
        launchCalled = true;
        return true;
      },
    );

    await service.launchExternalUrl('https://example.com');

    expect(canLaunchCalled, true);
    expect(launchCalled, true);
  });

  test('launchExternalUrl throws when URL cannot be launched', () async {
    final service = ExternalLauncherServiceImpl(canLaunchUrlFn: (_) async => false);

    expect(() => service.launchExternalUrl('https://example.com'), throwsException);
  });
}
