import 'package:flutter/material.dart';
import 'package:foodie/Screens/signup.dart';
import 'package:foodie/UserAuthntication/firebase_auth_implementation.dart';
import 'package:foodie/bottombar.dart';
import 'package:foodie/mainscr.dart';
import 'package:foodie/pizzacompny.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:foodie/widgets/fluttertoast.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
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
            Text('Hello Again!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28.px,
                fontWeight: FontWeight.w500,

              ),),
            SizedBox(height:5.px ,),
            Text('Welcome Back You’ve Been Missed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.px,
                fontWeight: FontWeight.w400,

              ),),
            SizedBox(height: 30.px,),
            Form(
                child:Column(
                  children: [
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
                    SizedBox(height: 20.px,),
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
            SizedBox(height: 35.px,),
            TextButton(onPressed:  _signIn,
              child: Text('Login',
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
                const  Text('Dont have an Account?',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> const SignUp()));
                },
                    child: const Text('Sign Up for Free'))
              ],
            )

          ],
        ),

      ),
    );
  }
  void _signIn() async {
    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      print("User is successfully signed in");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomBar()));
    } else {
      print("some error occured");
    }
  }
}
