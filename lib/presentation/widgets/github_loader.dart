import 'package:flutter/material.dart';
import 'package:github_repository_finder/style/app_colors.dart';

class GitHubLoader extends StatelessWidget {
  const GitHubLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 36,
        height: 36,
        child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(AppColors.secondary), strokeWidth: 3),
      ),
    );
  }
}
