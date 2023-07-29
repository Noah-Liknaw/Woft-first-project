import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woft_1st_project/Pages/about.dart';
import 'package:woft_1st_project/widgets/buildpassword.dart';

import 'buildEmail.dart';
import 'buildUsername.dart';
final _formkey = GlobalKey<FormState>();

class signUpRegisterBox extends StatefulWidget {
  const signUpRegisterBox({super.key});

  @override
  State<signUpRegisterBox> createState() => _signUpRegisterBoxState();
}

class _signUpRegisterBoxState extends State<signUpRegisterBox> {
  @override
  Widget build(BuildContext context) {
    return 
      Padding(
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
                    Image.asset("signUpImg1.png"),
                    Text("Register",
                    style: GoogleFonts.italiana(
                      textStyle: TextStyle(fontSize: 58),
                      color: Colors.black,
                    ),
                    ),
                    Image.asset("signUpImg2.png"),
                  ],
                ),
              ),
        
              Form(
                key: _formkey,
                child: Column(
                children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
          Text("User name",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 23),),
                ],),
        ),
              
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: buildUsername(),
        ),

        Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text("Email",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 23),)
                ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildEmail(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text("Password",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 23),)
                ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildPassword(),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text("Confirm password",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 23),)
                ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildPassword(),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 43.0),
                child: ElevatedButton(onPressed: (){if(_formkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Great!'))
                  );
                }
                Navigator.of(context)
                .push(
                  MaterialPageRoute(builder: (context) => AboutPage())
                );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Color.fromRGBO(4, 99, 4, 100),
                  foregroundColor: Colors.white,
                  minimumSize: Size(258, 71),
                ),
                child: Text('Submit',style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.w500),),
                ),
              )
                ],
              )),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Forgot your password?",textAlign: TextAlign.center,)
                ],
              ),
              Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? Sign Up",textAlign: TextAlign.center,)
                ],
              ),
              
        
              
              
            ],
          ),
        ),
      )
    ;
    
  }
}