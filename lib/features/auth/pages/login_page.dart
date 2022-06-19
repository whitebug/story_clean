import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            onLoginResult!(true);
          },
          child: const Text('login'),
        ),
      ),
    );
  }
}
