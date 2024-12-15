import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/validation_utils.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailError;
  bool _isPasswordVisible = false;

  void _signIn() {
    String? emailError = ValidationUtils.validateEmail(_emailController.text);
    String? passwordError =
        ValidationUtils.validatePassword(_passwordController.text);

    if (emailError == null && passwordError == null) {
      // Proceed with login
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Logging In...')),
      );
    } else {
      // Collect all error messages
      List<String> errors = [];
      if (emailError != null) errors.add(emailError);
      if (passwordError != null) errors.add(passwordError);

      // Show error message if form is invalid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errors.join("\n")), // Show all errors in one SnackBar
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Transform.translate(
                  offset: const Offset(-60, -40),
                  child: Transform.scale(
                      scale: 1.4,
                      child: Transform.rotate(
                        angle: -0.2,
                        child: ClipOval(
                          child: Container(
                            width: 700,
                            height: 282,
                            color: const Color(0xFF6159FC),
                          ),
                        ),
                      ))),
              Positioned.fill(
                child: Transform.scale(
                  scale: 0.4,
                  child: Transform.translate(
                    offset: const Offset(-150, 0),
                    child: SvgPicture.asset(
                      'assets/svg/app_logo.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'User ID',
                    suffixIcon: _emailError == null
                        ? const Icon(
                            Icons.check,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.error,
                            color: Colors.red,
                          ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      // Update error message based on the validation
                      _emailError = ValidationUtils.validateEmail(value);
                    });
                  },
                  validator: (value) {
                    // Display error if email is invalid
                    return _emailError; // Show error if any
                  },
                ),
                const SizedBox(height: 20),
                // Password TextField
                TextFormField(
                  controller: _passwordController,
                  obscureText:
                      !_isPasswordVisible, // Toggle password visibility
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible =
                              !_isPasswordVisible; // Toggle visibility
                        });
                      },
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  validator: ValidationUtils.validatePassword,
                ),
                const SizedBox(height: 8),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 14, color: Color(0xFF1A314E)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 46,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: _signIn,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6159FC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 70,
                ),
                const Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF1A314E)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Open Now',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6159FC),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
