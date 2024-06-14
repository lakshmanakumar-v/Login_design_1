import 'package:flutter/material.dart';
import 'package:login_design_1/custom_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Text(
                    "OTP Verification",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "regular",
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade600,
                          fontFamily: "regular"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Please verify by entering the code that was send to your email.",
                      style: TextStyle(fontSize: 17, fontFamily: "regular"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    OTPTextField(
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 48,
                      fieldStyle: FieldStyle.box,
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "Didn't received code? ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: "regular"),
                        children: [
                          TextSpan(
                            text: "resend",
                            style: TextStyle(
                                color: Colors.blue, fontFamily: "regular"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      onTap: () {},
                      borderRadius: 25,
                      text: "Verify",
                      height: 50,
                      width: 310,
                      buttonColor: Colors.blue,
                      fontSize: 20,
                      textColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Verification Letter",
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: "regular",
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          )),
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
