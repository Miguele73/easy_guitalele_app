import 'package:easy_guitalele_app/social_login_button.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5F968E),
        title: Image.asset('assets/logo/logo.png', height: 200, width: 200),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 8,
            children: [
              Text(
                "Welcome back! Schön, dich wieder zu sehen",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Email eingeben",
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    icon: Icon(
                      _isObscured ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  labelText: "Passwort",
                  hintText: "Passwort eingeben",
                  border: OutlineInputBorder(),
                ),
                obscureText: _isObscured,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Passwort vergessen?"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Login"),
                  ),
                ),
              ),
              Row(
                spacing: 16,
                children: [
                  Expanded(child: Divider()),
                  Text("oder"),
                  Expanded(child: Divider()),
                ],
              ),
              Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialLoginButton(icon: Icons.g_mobiledata),
                  SocialLoginButton(icon: Icons.apple),
                  SocialLoginButton(icon: Icons.facebook),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  Text("Du hast noch keinen Account?"),
                  TextButton(onPressed: () {}, child: Text("Registrieren")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
