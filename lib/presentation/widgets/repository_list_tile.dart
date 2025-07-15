import 'package:flutter/material.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';
import 'package:github_repository_finder/style/app_text_styles.dart';

class RepositoryListTile extends StatelessWidget {
  final RepositoryDomainModel model;

  const RepositoryListTile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: CircleAvatar(backgroundImage: NetworkImage(model.owner.avatarUrl)),
        title: Text(model.name, style: AppTextStyles.textTheme.titleLarge),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              model.description.isNotEmpty ? model.description : 'No description provided.',
              style: AppTextStyles.textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text('Updated: ${model.updatedAt}', style: AppTextStyles.textTheme.labelLarge),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
