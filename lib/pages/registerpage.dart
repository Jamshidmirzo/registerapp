import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

String name = '';
String email = '';
String pass = '';
String pasconfirm = '';

class _RegisterpageState extends State<Registerpage> {
  final formkey = GlobalKey<FormState>();
  final passwordcontroller = TextEditingController();
  register() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      Map? user = {
        'name': name,
        'email': email,
        'password': pass,
        'confirmpass': pasconfirm
      };
      Navigator.of(context).pop(user);
    }
  }

  String? validatename(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos ism kirg`izing';
    }
    return null;
  }

  String? validatemail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos email kirg`izing';
    } else if (!value.contains('@') ||
        !value.substring(value.indexOf('@')).contains('.')) {
      return 'Iltimos emailingizni tog`ri kirg`izing';
    }

    return null;
  }

  String? validatepass(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos parolingizni kirg`izing';
    } else if (value.length < 8) {
      return 'Eng kamida 8 ta character kirg`izing';
    }

    return null;
  }

  String? validatepassconf(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos parolingizni tasdiqlang';
    } else if (value != passwordcontroller.text) {
      return 'Parollar tog`ri kelmayapti';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create your account for your schedule',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onSaved: (newValue) {
                      if (newValue != null && newValue.isNotEmpty) {
                        name = newValue;
                      }
                    },
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      validatename(value);
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Your name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: validatename,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (newValue) {
                        if (newValue != null && newValue.isNotEmpty) {
                          email = newValue;
                        }
                      },
                      onChanged: (value) {
                        validatemail(value);
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Your email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      validator: validatemail),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      onSaved: (newValue) {
                        if (newValue != null && newValue.isNotEmpty) {
                          pass = newValue;
                        }
                      },
                      onChanged: (value) {
                        validatepass(value);
                      },
                      controller: passwordcontroller,
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        labelText: 'Your password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      validator: validatepass),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      onSaved: (newValue) {
                        if (newValue != null && newValue.isNotEmpty) {
                          pasconfirm = newValue;
                        }
                      },
                      onChanged: (value) {
                        validatepassconf(value);
                      },
                      onFieldSubmitted: (value) {
                        register();
                      },
                      obscureText: true,
                      obscuringCharacter: '*',
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        labelText: 'Confirm your password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      validator: validatepassconf),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You have an account?',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Sign in here',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      register();
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Colors.blue.shade800,
                        foregroundColor: Colors.white),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Column(
                      children: [
                        const Text(
                          'By Continuing,ou agree Loana`s',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('Terms of Use & Privasy Policy')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
