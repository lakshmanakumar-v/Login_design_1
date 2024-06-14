import 'package:flutter/material.dart';
import 'package:login_design_1/custom_button.dart';
import 'package:login_design_1/sign_up_screen.dart';
import 'custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Text(
                    "Log in",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "regular",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email Address",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "regular",
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextFormField(
                      hint: "Email Address",
                      prefixicon: Icons.person_outline_outlined,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "password",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "regular",
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextFormField(
                      hint: "Password",
                      prefixicon: Icons.lock_outline_rounded,
                      suffixicon: Icons.visibility_outlined,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                              color: Colors.blue, fontFamily: "regular"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () {},
                      borderRadius: 25,
                      text: "Log in",
                      height: 50,
                      width: 310,
                      buttonColor: Colors.blue,
                      fontSize: 20,
                      textColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "Login  In with",
                        style: TextStyle(fontSize: 17, fontFamily: "regular"),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 100,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://img.freepik.com/free-psd/google-icon-isolated-3d-render-illustration_47987-9777.jpg?size=338&ext=jpg&ga=GA1.1.1224184972.1713916800&semt=sph"),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/640px-Facebook_f_logo_%282019%29.svg.png"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: "regular"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SignUpScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Sign Up",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
