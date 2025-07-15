import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';
import 'package:github_repository_finder/presentation/bloc/search_cubit.dart';
import 'package:github_repository_finder/presentation/screens/repository_screen.dart';
import 'package:github_repository_finder/style/app_text_styles.dart';
import 'package:intl/intl.dart';

class RepositoryListTile extends StatelessWidget {
  final RepositoryDomainModel repository;

  const RepositoryListTile({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("yyyy.MM.dd – HH:mm");

    final updatedAtFormatted = dateFormat.format(DateTime.parse(repository.updatedAt));

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: CircleAvatar(backgroundImage: NetworkImage(repository.owner.avatarUrl)),
        title: Text(repository.name, style: AppTextStyles.textTheme.titleLarge),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              repository.description.isNotEmpty ? repository.description : "No description provided.",
              style: AppTextStyles.textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text("Updated: $updatedAtFormatted", style: AppTextStyles.textTheme.labelLarge),
          ],
        ),
        onTap: () {
          final cubit = context.read<SearchCubit>();

          Navigator.push(context, MaterialPageRoute(builder: (_) => RepositoryScreen(repository: repository, cubit: cubit)));
        },
      ),
    );
  }
}
