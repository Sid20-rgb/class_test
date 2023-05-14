import 'package:class_test/view/login_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController studentIdController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _stdid;
  String? _firstname;
  String? _lastname;
  String? _age;
  String? _password;
  // String? _due;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'StudentID',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your studentid.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _firstname = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Firstname',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your firstname.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _firstname = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Lastname',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your lastname.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _firstname = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'age',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _age = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Perform login or further actions
                    // String studentId = studentIdController.text;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LoginScreen(),
                      ),
                    );
                  }
                },
                child: const Text('Signup'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
