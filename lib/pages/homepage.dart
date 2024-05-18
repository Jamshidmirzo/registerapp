import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registerapp/pages/mainpage.dart';

import 'package:registerapp/pages/registerpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool obseceretext = true;
  final passwordcontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  changeobsecere() {
    obseceretext = !obseceretext;
    setState(() {});
  }

  String usererror = '';
  checkregister() {
    if (user!['email'] == emailcontroller.text &&
        user!['password'] == passwordcontroller.text) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) {
            return Mainpage();
          },
        ),
      );
    } else {
      usererror = 'Bunday foydalanuvchi topilmadi,iltimos royhatan oting';
    }
    setState(() {});
  }

  String? validatpass(String? value) {
    if (value == null || value.isEmpty) {
      return 'Parolingiz tog`ri kelmaypati';
    }
    return null;
  }

  String? validatemail(String? value) {
    if (value == null || value.isEmpty) {
      return 'emailingiz tog`ri kelmaypati';
    }
    return null;
  }

  Map? user;
  final fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: fromkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome Back',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Let`s Login to Connectyour email',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                  ),
                  Text(
                    usererror,
                    style: const TextStyle(color: Colors.red),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    validator: validatemail,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'name@example.com',
                        labelText: 'Email',
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    validator: validatpass,
                    obscureText: obseceretext,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        labelText: 'password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            changeobsecere();
                          },
                          icon: Icon(CupertinoIcons.eye_slash_fill),
                        ),
                        prefixIcon: const Icon(
                          Icons.key_sharp,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forget your password?',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don`t have an account?',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      TextButton(
                        onPressed: () async {
                          user = await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return Registerpage();
                              },
                            ),
                          );
                          if (user != null) {
                            setState(() {});
                          }
                        },
                        child: const Text(
                          'Sign up here',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 190,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      checkregister();
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
                          'Login',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 190,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/apple.png'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 190,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/google.png'),
                                fit: BoxFit.cover)),
                      ),
                    ],
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
