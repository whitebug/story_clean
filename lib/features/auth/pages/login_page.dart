import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_clean/features/features.dart';
import 'package:story_clean/l10n/l10n.dart';

/// Login
class LoginPage extends StatelessWidget {
  const LoginPage({
    required this.onLoginResult,
    Key? key,
  }) : super(key: key);

  /// Login reaction
  final void Function(bool isLoggedIn)? onLoginResult;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.map(
            loading: (state) {
              return Center(
                child: ElevatedButton(
                  onPressed: () async {
                    context.read<AuthBloc>().add(const AuthEvent.loginWithGoogle());
                    onLoginResult!(true);
                  },
                  child: Text(l10n.loginWithGoogle),
                ),
              );
            },
            error: (state) => Center(child: Text(state.failure.toString())),
            logout: (state) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Logout'),
                  ElevatedButton(
                    onPressed: () async {
                      context.read<AuthBloc>().add(const AuthEvent.loginWithGoogle());
                      onLoginResult!(true);
                    },
                    child: Text(l10n.loginWithGoogle),
                  ),
                ],
              ),
            ),
            authenticated: (state) {
              return Center(
                child: ElevatedButton(
                  onPressed: () async {
                    context.read<AuthBloc>().add(const AuthEvent.loginWithGoogle());
                    onLoginResult!(true);
                  },
                  child: Text(l10n.loginWithGoogle),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
