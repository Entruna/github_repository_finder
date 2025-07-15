import 'package:flutter/material.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';
import 'package:github_repository_finder/presentation/bloc/search_cubit.dart';
import 'package:github_repository_finder/style/app_text_styles.dart';
import 'package:intl/intl.dart';

class RepositoryScreen extends StatelessWidget {
  final RepositoryDomainModel repository;
  final SearchCubit cubit;

  const RepositoryScreen({super.key, required this.repository, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("yyyy.MM.dd – HH:mm");

    final createdAtFormatted = dateFormat.format(DateTime.parse(repository.createdAt));
    final updatedAtFormatted = dateFormat.format(DateTime.parse(repository.updatedAt));

    return Scaffold(
      appBar: AppBar(
        title: Text(repository.name, style: AppTextStyles.textTheme.titleLarge),
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(radius: 30, backgroundImage: NetworkImage(repository.owner.avatarUrl)),
                const SizedBox(width: 16),
                Expanded(
                  child: InkWell(
                    onTap: () => cubit.launchUrlExternal(repository.owner.htmlUrl),
                    child: Text(repository.owner.login, style: AppTextStyles.textTheme.titleMedium?.copyWith(color: Colors.blue)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text("Repository Name", style: AppTextStyles.textTheme.labelLarge),
            Text(repository.name, style: AppTextStyles.textTheme.bodyLarge),
            const SizedBox(height: 16),
            Text("Description", style: AppTextStyles.textTheme.labelLarge),
            Text(repository.description.isNotEmpty ? repository.description : "No description.", style: AppTextStyles.textTheme.bodyMedium),
            const SizedBox(height: 16),
            Text("Repository URL", style: AppTextStyles.textTheme.labelLarge),
            InkWell(
              onTap: () => cubit.launchUrlExternal(repository.htmlUrl),
              child: Text(repository.htmlUrl, style: AppTextStyles.textTheme.bodyMedium?.copyWith(color: Colors.blue)),
            ),
            const SizedBox(height: 16),
            Text("Forks: ${repository.forksCount}", style: AppTextStyles.textTheme.bodyLarge),
            const SizedBox(height: 16),
            Text("Created at: $createdAtFormatted", style: AppTextStyles.textTheme.bodyMedium),
            Text("Updated at: $updatedAtFormatted", style: AppTextStyles.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
