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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GitHub Search", style: AppTextStyles.textTheme.titleLarge)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchField(controller: _controller),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _onSearchPressed,
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
                child: Text("SEARCH", style: AppTextStyles.textTheme.bodyLarge),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  if (state is SearchInitial) {
                    return Center(child: Text("Start typing to search repositories", style: AppTextStyles.textTheme.bodyMedium));
                  } else if (state is SearchLoading) {
                    return const GitHubLoader();
                  } else if (state is CachedReposLoaded) {
                    return ListView.builder(
                      itemCount: state.repos.length,
                      itemBuilder: (context, index) => RepositoryListTile(repository: state.repos[index]),
                    );
                  } else if (state is SearchLoaded) {
                    if (state.repos.isEmpty) {
                      return Center(child: Text("No repositories found.", style: AppTextStyles.textTheme.bodyMedium));
                    }
                    return ListView.builder(
                      itemCount: state.repos.length,
                      itemBuilder: (context, index) => RepositoryListTile(repository: state.repos[index]),
                    );
                  } else if (state is SearchError) {
                    return Center(child: Text(state.message, style: AppTextStyles.textTheme.bodyMedium?.copyWith(color: Colors.red)));
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
