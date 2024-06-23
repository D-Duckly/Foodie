import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Screens/login.dart';
//import 'package:foodie/Screens/soupcompny.dart';
import 'package:foodie/UserAuthntication/firebase_auth_implementation.dart';
import 'package:foodie/mainscr.dart';
//import 'package:foodie/widgets/fluttertoast.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isSigningUp = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Create Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28.px,
                fontWeight: FontWeight.w500,

              ),),
            SizedBox(height:5.px ,),
            Text('Let’s Create Account Together',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.px,
                fontWeight: FontWeight.w400,

              ),),
            SizedBox(height: 20.px,),
            Form(
                child:Column(
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                          hintText: 'Your Name',hintStyle: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w500),
                          helperText:'Alisson Becker', helperStyle: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400),
                          prefix: Icon(Icons.person),
                        filled: true,
                        fillColor: Colors.white,

                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Enter Name';
                        }
                        return null;

                      },
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          hintText: 'Email Address',hintStyle: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w500),
                          helperText:'AlissonBecker@gmail.com', helperStyle: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400),
                          prefix: Icon(Icons.alternate_email),
                        filled: true,
                        fillColor: Colors.white,

                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Enter Email';
                        }
                        return null;

                      },
                    ),
                   // SizedBox(height: 20.px,),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',hintStyle: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w500),
                          helperText:'AlissonBecker@gmail.com', helperStyle: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400),
                          prefix: Icon(Icons.lock),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Enter Email';
                        }
                        return null;

                      },




                    ),  ] ,

                ) ),
            SizedBox(height: 30,),
            TextButton(onPressed: _signUp,
              child: Text('Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.px,
                color: Colors.black,
              ),
            ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(335, 54),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.px)),),),
            SizedBox(height: 25.px,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24.px,
                  width: 30.px,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                      AssetImage('assets/google.png'),
                    ),
                  ),
                ),

                Text("Sign In with Google")
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const  Text('Already have an account?',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> const SignIn()));
                },
                    child: const Text('Sign In'))
              ],
            )

          ],
        ),

      ),
    );

  }
  void _signUp() async {

    setState(() {
      isSigningUp = true;
    });

    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;


    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      isSigningUp = false;
    });
    if (user != null) {
      print("User is successfully created");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignIn()));
    } else {
      print("Some error happend");
    }
  }
}
