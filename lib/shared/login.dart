import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({required Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool obscure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
