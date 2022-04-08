import 'package:flutter/material.dart';

class LOginScreen2 extends StatefulWidget {
  const LOginScreen2({Key? key}) : super(key: key);

  @override
  State<LOginScreen2> createState() => _LOginScreen2State();
}

class _LOginScreen2State extends State<LOginScreen2> {
  get mobileCTRL => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 460,
            left: 0,
            right: 0,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images2.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),
          // ffffffffffffffffffffffffffffffffffffffffffffffffff
          Positioned(
            top: 280,
            child: Container(
              height: 340,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.8),
                        blurRadius: 19,
                        spreadRadius: 9),
                  ]),
              child: Column(
                children: [
                  Text(
                    'Welcome Sir,',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
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
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            prefix: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1),
                              child: Text(
                                "(+91)  ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),

                            contentPadding: EdgeInsets.all(20),
                            hintText: "Enter Mobile Number",
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.black26),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(top: 20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "By pressing 'Submit' you agree to our ",
                                style: TextStyle(color: Colors.black),
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
            top: 565,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
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
                    // sendOtp();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
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
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
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
