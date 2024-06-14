import 'package:flutter/material.dart';
import 'package:login_design_1/login_screen.dart';

import 'custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CreateAccount(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 760,
        width: 360,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://ourpostalcode.com/wp-content/uploads/2024/01/Hotel-Booking.jpg?x29339"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                height: 50,
                width: 250,
                borderRadius: 23,
                text: "Create Account",
                borderColor: Colors.blue,
                borderWidth: 2,
                buttonColor: Colors.white,
                fontSize: 20,
                textColor: Colors.blue,
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
                borderRadius: 23,
                text: "Sign in",
                buttonColor: Colors.blue,
                fontSize: 20,
                height: 50,
                width: 250,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
