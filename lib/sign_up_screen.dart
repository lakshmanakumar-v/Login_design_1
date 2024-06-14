import 'package:flutter/material.dart';
import 'package:login_design_1/custom_button.dart';
import 'package:login_design_1/custom_text_form_field.dart';
import 'package:login_design_1/verification_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10),
        child: SingleChildScrollView(
          child: Column(
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
                    "Sign Up",
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
                      "National ID",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "regular",
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextFormField(
                        hint: "National ID Number",
                        prefixicon: Icons.analytics_outlined),
                    const SizedBox(
                      height: 10,
                    ),
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
                        prefixicon: Icons.email_outlined),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Password",
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
                      prefixicon: Icons.lock_outline_sharp,
                      suffixicon: Icons.visibility_outlined,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                            ),
                            child: const Icon(
                              Icons.check,
                              size: 18,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Accept terms and conditions !",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: "regular"),
                          ),
                        ],
                      ),
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
                              return const VerificationScreen();
                            },
                          ),
                        );
                      },
                      borderRadius: 25,
                      text: "Sign Up",
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
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: "regular"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontFamily: "regular"),
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
