import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FormValidationExample(),
  ));
}

class FormValidationExample extends StatelessWidget with InputValidationMixin {
  final formGlobalKey = GlobalKey < FormState > ();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form validation example'),
        ),
        body:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: formGlobalKey,
            child: Column(
              children: [
                const SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "name"
                  ),
                  validator: (name) {
                    if (!isNameValid(name!)) return null;
                    else
                      return 'Enter a valid email address';
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password has to be 6 characters long to be valid"
                  ),
                  // maxLength: 6,
                  obscureText: true,
                  validator: (password) {
                    if (isPasswordValid(password!)) return null;
                    else
                      return 'Enter a valid password';
                  },
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      if (formGlobalKey.currentState!.validate()) {
                        formGlobalKey.currentState!.save();
                        // use the email provided here
                      }
                    },
                    child: Text("Submit"))
              ],
            ),
          ),
        ));
  }
}

mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;

  bool isNameValid(String name) {
    return name.contains(new RegExp(r'[0-9]'));
  }
}