import 'package:cook_that_thing/src/ui/routes/routes.dart';
import 'package:cook_that_thing/src/constants/app_colors.dart';
import 'package:cook_that_thing/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInState();
}

class _LogInState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool showPassword = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              key: _formKey,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 38),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Cook', style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: 'That',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'Thing',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.orange)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  textAlign: TextAlign.center,
                  'Welcome back! Log in to discover amazing new recipes',
                  style: TextStyle(fontSize: 22),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  height: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Please enter an email";
                        }
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  height: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: !showPassword,
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Please enter your password";
                        }
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: showPassword
                            ? const Icon(
                                Icons.visibility_off,
                              )
                            : const Icon(
                                Icons.visibility,
                              ),
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 240,
                ),
                const OrangeButton(text: 'Log In', route: SelectRecipeScreen()),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Are you new here? ',
                        ),
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(color: AppColors.orange)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
