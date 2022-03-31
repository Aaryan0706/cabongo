import 'package:cabongo/authentication/car_info.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
{

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/Cab.jpg"),
              ),

              const SizedBox(height: 10,),
              const Text(
                "Register as a Driver",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                )
              ),

              TextField(
                controller: nameTextEditingController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Name",

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),

              ),

              TextField(
                controller: emailTextEditingController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Email",

                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),

              ),

              TextField(
                controller: phoneTextEditingController,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Phone Number ",

                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),

              ),

              TextField(
                controller: passwordTextEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Password",

                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),

              ),

              const SizedBox(height: 20,),

              ElevatedButton(
                  onPressed: (){
                    
                    Navigator.push(context, MaterialPageRoute(builder: (c)=>CarInfoScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: const Text(
                'Create Account',
                 style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                  ),

              ))
            ]
          ),
        ),

      ),
    );
  }
}
