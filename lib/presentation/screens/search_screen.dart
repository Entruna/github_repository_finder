import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repository_finder/presentation/bloc/search_cubit.dart';
import 'package:github_repository_finder/presentation/bloc/search_state.dart';
import 'package:github_repository_finder/presentation/widgets/github_loader.dart';
import 'package:github_repository_finder/presentation/widgets/repository_list_tile.dart';
import 'package:github_repository_finder/presentation/widgets/search_field.dart';
import 'package:github_repository_finder/style/app_text_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();

  void _onSearchPressed() {
    final query = _controller.text.trim();
    if (query.isNotEmpty) {
      context.read<SearchCubit>().search(query);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GitHub Search", style: AppTextStyles.textTheme.titleLarge)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchField(controller: _controller),
            const SizedBox(height: 16),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: _onSearchPressed, child: Text("SEARCH"))),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  switch (state) {
                    case SearchInitial():
                      return Center(
                        child: Text("Start typing to search repositories", textAlign: TextAlign.center, style: AppTextStyles.textTheme.titleLarge),
                      );

                    case SearchLoading():
                      return const GitHubLoader();

                    case CachedReposLoaded(:final repos):
                      return ListView.builder(itemCount: repos.length, itemBuilder: (context, index) => RepositoryListTile(repository: repos[index]));

                    case SearchLoaded(:final repos):
                      if (repos.isEmpty) {
                        return Center(child: Text("No repositories found", textAlign: TextAlign.center, style: AppTextStyles.textTheme.titleLarge));
                      }
                      return ListView.builder(itemCount: repos.length, itemBuilder: (context, index) => RepositoryListTile(repository: repos[index]));

                    case SearchError(:final message):
                      return Center(
                        child: Text(message, textAlign: TextAlign.center, style: AppTextStyles.textTheme.titleLarge?.copyWith(color: Colors.red)),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
