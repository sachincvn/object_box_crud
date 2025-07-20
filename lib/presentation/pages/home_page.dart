import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';
import '../bloc/user_state.dart';
import '../widgets/user_list_widget.dart';
import '../widgets/simple_user_form.dart';
import '../widgets/search_bar_widget.dart';
import '../../core/constants/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<UserBloc>().add(const RefreshUsersEvent());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(AppConstants.defaultPadding),
            child: SearchBarWidget(
              onSearch: (query) {
                context.read<UserBloc>().add(SearchUsersEvent(query));
              },
              onClear: () {
                context.read<UserBloc>().add(const ClearSearchEvent());
              },
            ),
          ),

          // User List
          Expanded(
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(
                    child: Text('Welcome! Tap + to add your first user.'),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (users, isSearching, searchQuery) => UserListWidget(
                    users: users,
                    isSearching: isSearching,
                    searchQuery: searchQuery,
                  ),
                  error: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 64,
                          color: Theme.of(context).colorScheme.error,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Error: $message',
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            context.read<UserBloc>().add(const RefreshUsersEvent());
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                  userCreated: (user) => const SizedBox.shrink(),
                  userUpdated: (user) => const SizedBox.shrink(),
                  userDeleted: (userId) => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _navigateToUserForm(context);
        },
        icon: const Icon(Icons.add),
        label: const Text('Add User'),
      ),
    );
  }

  void _navigateToUserForm(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SimpleUserForm(),
      ),
    );
  }
}
