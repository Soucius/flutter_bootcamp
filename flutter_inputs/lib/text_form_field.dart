import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldUsage extends StatefulWidget {
  const TextFormFieldUsage({super.key});

  @override
  State<TextFormFieldUsage> createState() => _TextFormFieldState();
}

class _TextFormFieldState extends State<TextFormFieldUsage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text form field"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.length < 4) {
                      return "username can't be less than 4 chars";
                    } else {
                      return null;
                    }
                  },
                  initialValue: "soucius",
                  decoration: InputDecoration(
                    // errorStyle: TextStyle(color: Colors.orange),
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "username...",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (!EmailValidator.validate(value!)) {
                      return "Please give an correct mail";
                    } else {
                      return null;
                    }
                  },
                  initialValue: "soucius@soucius.com",
                  decoration: InputDecoration(
                    // errorStyle: TextStyle(color: Colors.orange),
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "email...",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Password should be at least 6 chars";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    // errorStyle: TextStyle(color: Colors.orange),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "password...",
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
