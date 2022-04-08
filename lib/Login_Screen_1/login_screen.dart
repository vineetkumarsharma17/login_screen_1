import 'package:flutter/material.dart';
import 'package:login_screen_1/container/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var mobileCTRL;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 9,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login1.jpg"), fit: BoxFit.fill),
              ),
            ),
          ),
          // main Container for login and Signup  ffffffffffffffffffffffffffffffffffffffffffffff
          Positioned(
            top: 190,
            child: Container(
              height: 380,
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 20,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: Column(
                children: [
                  Positioned(
                    child: Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "Welcome to",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.yellow[700],
                                ),
                                children: const [
                                  TextSpan(
                                    text: "  My App",
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal,
                                    ),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 40),
                            child: const Text(
                              "Signin to Continue",
                              style: TextStyle(
                                  letterSpacing: 3, color: Colors.blueGrey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    // padding: EdgeInsets.only(),
                    child: Column(
                      children: [
                        TextField(
                          controller: mobileCTRL,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            // prefixIcon: Icon(
                            //   MaterialCommunityIcons.email_outline,
                            //   color: Palette.iconColor,
                            // ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.textColor1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.textColor1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            prefix: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1),
                              child: Text(
                                "(+91)",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),

                            contentPadding: EdgeInsets.all(20),
                            hintText: "Enter Mobile Number",
                            hintStyle: TextStyle(
                                fontSize: 14, color: Palette.textColor1),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 200,
                          margin: const EdgeInsets.only(top: 20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: "By pressing 'Submit' you agree to our ",
                                style: TextStyle(color: Palette.textColor2),
                                children: [
                                  TextSpan(
                                    //recognizer: ,
                                    text: "term & conditions",
                                    style: TextStyle(color: Colors.orange),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 520,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: GestureDetector(
                  onTap: () {
                    //  sendOtp();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.orange, Colors.red],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ]),
                    child: Builder(builder: (context) {
                      return const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      );
                    }),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
