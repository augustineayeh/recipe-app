import 'package:cook_that_thing/src/constants/app_colors.dart';
import 'package:cook_that_thing/src/ui/routes/routes.dart';
import 'package:cook_that_thing/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool showPassword = false;

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
                  height: 60,
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
                  'Welcome to the world of recipes. Let\'s get started ',
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
                    controller: _firstNameController,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'First name'),
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Please enter your first name";
                        }
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  height: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: _lastNameController,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Last name'),
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Please enter your last name";
                        }
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  height: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Please enter your email";
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
                  margin: const EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    obscureText: !showPassword,
                    controller: _passwordController,
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
                Container(
                  height: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                  margin: const EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    obscureText: !showPassword,
                    controller: _confirmPasswordController,
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Please confirm your password";
                        }
                      }
                      return null;
                    },
                    decoration: InputDecoration(
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
                      border: InputBorder.none,
                      hintText: 'Confirm password',
                    ),
                  ),
                ),
                const OrangeButton(
                    text: 'Sign Up', route: SelectRecipeScreen()),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LogInScreen()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Already have an account? ',
                        ),
                        TextSpan(
                            text: 'Log in',
                            style: TextStyle(
                                color: AppColors.orange,
                                fontWeight: FontWeight.bold)),
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
