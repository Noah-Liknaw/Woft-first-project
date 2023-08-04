import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woft_1st_project/Pages/SignUpPage.dart';
import 'package:woft_1st_project/Pages/about.dart';
import 'package:woft_1st_project/widgets/buildpassword.dart';
import '../utils/url.dart';
import 'buildEmail.dart';
import 'buildUsername.dart';
import 'package:http/http.dart' as http;

final _formkey = GlobalKey<FormState>();

class SignUpRegisterBox extends StatefulWidget {
  @override
  State<SignUpRegisterBox> createState() => _SignUpRegisterBoxState();
}

class _SignUpRegisterBoxState extends State<SignUpRegisterBox> {
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordConfController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordConfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 100, 23, 0),
      child: Container(
        height: 700,
        color: Colors.white.withOpacity(0.95),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 47),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/signUpImg1.png")),
                  Text(
                    "Register",
                    style: GoogleFonts.italiana(
                      textStyle: const TextStyle(fontSize: 58),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/signUpImg2.png")),
                ],
              ),
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "User name",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: buildUsername(controller: _usernameController),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Email",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 23),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: buildEmail(controller: _emailController),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Password",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: buildPassword(controller: _passwordController),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Confirm password",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 64,
                      child: TextFormField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          labelStyle: GoogleFonts.inriaSans(
                            fontSize: 15,
                            color: const Color.fromRGBO(136, 136, 136, 100),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black),
                          ),
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedErrorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          errorStyle: const TextStyle(color: Colors.black),
                        ),
                        controller: _passwordConfController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
                          // if (value != _passwordController.text) {
                          //   return 'Passwords do not match';
                          // }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 43.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: const Color.fromRGBO(4, 99, 4, 100),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(258, 71),
                      ),
                      onPressed: () async {
                        if (_formkey.currentState!.validate()) {
                          try {
                            var headers = <String, String>{
                              'Content-Type': 'application/json',
                              // Add any other headers required by your API
                            };
                            var jsonBody = jsonEncode(<String, dynamic>{
                              "username": _usernameController.text,
                              "email": _emailController.text,
                              "password": _passwordController.text,
                              "confirm_pass": _passwordConfController.text,
                            });
                            var url = Uri.parse("${URL.address}/signup".trim());
                            var res = await http.post(url,
                                headers: headers, body: jsonBody);
                            if (res.statusCode == 201) {
                              Get.snackbar("Success", "${_emailController.text} ",
                                  backgroundColor: Colors.green,
                                  colorText: Colors.white);
                              print("sent");

                            } else {
                              Get.snackbar("error",
                                  "unable to sign up  ${res.statusCode}. ",
                                  backgroundColor: Colors.red,
                                  colorText: Colors.white);
                            }
                          } catch (e) {
                            Get.snackbar("err", " ${e}. ",
                                backgroundColor: Colors.red,
                                colorText: Colors.white);
                          }
                        }
                      },
                      child: Text("Sign Up",
                          style: GoogleFonts.poppins(
                              fontSize: 28, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SignupPage());
                    },
                    child: const Text("Already have an account? Sign In",
                        style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
