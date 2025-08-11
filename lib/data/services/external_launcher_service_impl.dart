import 'package:github_repository_finder/domain/services/external_launcher_service.dart';
import 'package:url_launcher/url_launcher.dart';

class ExternalLauncherServiceImpl implements ExternalLauncherService {
  final Future<bool> Function(Uri) canLaunchUrlFn;
  final Future<bool> Function(Uri, {LaunchMode mode}) launchUrlFn;

  ExternalLauncherServiceImpl({this.canLaunchUrlFn = canLaunchUrl, this.launchUrlFn = launchUrl});

  @override
  Future<void> launchExternalUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrlFn(uri)) {
      final success = await launchUrlFn(uri, mode: LaunchMode.externalApplication);
      if (!success) {
        throw Exception('Could not launch $url');
      }
    } else {
      throw Exception('Could not launch $url');
    }
  }
}
