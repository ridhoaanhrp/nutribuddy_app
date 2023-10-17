import 'package:flutter/material.dart';
import 'package:nutribuddy_app/Screens/signup_screen.dart';
import 'package:nutribuddy_app/Screens/splash_screen_2.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/services.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String usernameDefault = "fixgoal";
  String passwordDefault = "1234";

  @override
  Widget build(BuildContext context) {
    final bodyHeight = MediaQuery.of(context).size.height;
    double bodyWidth = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(0, 28, 12, 12)));

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: bodyHeight,
        width: bodyWidth,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: bodyWidth,
                height: bodyHeight * 0.50,
                child: Image.asset(
                  "gambar/gambarLogin.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: bodyHeight * 0.005,
                    left: bodyWidth * 0.01,
                    right: bodyWidth * 0.01,
                    bottom: bodyHeight * 0.005),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: bodyWidth * 0.9,
                          padding: EdgeInsets.symmetric(
                              horizontal: bodyWidth * 0.037),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-ExtraBold"),
                          ),
                        ),
                        Divider(
                          height: bodyHeight * 0.04,
                        ),
                        Container(
                          width: bodyWidth * 0.9,
                          padding: EdgeInsets.symmetric(
                              horizontal: bodyWidth * 0.037),
                          child: const Text(
                            "Masukkan username dan password anda",
                            style: TextStyle(
                                fontSize: 13, fontFamily: "Montserrat"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.02,
              ),
              FormBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget FormBuilder() {
    final bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                    top: bodyHeight * 0.005,
                    left: bodyWidth * 0.005,
                    right: bodyWidth * 0.005,
                    bottom: bodyHeight * 0.005),
                child: Container(
                  width: bodyWidth * 0.9,
                  child: TextFormField(
                    controller: usernameController,
                    validator: (value) {
                      return value!.isEmpty
                          ? "Username tidak boleh kosong"
                          : null;
                    },
                    decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: const TextStyle(color: Colors.blue),
                        suffixIcon: Image.asset(
                          "gambar/Group.png",
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.blue, width: 0))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: bodyHeight * 0.01,
                    left: bodyWidth * 0.02,
                    right: bodyWidth * 0.02,
                    bottom: bodyHeight * 0.02),
                child: Container(
                  width: bodyWidth * 0.9,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    validator: (value) {
                      return value!.isEmpty
                          ? "Password tidak boleh kosong!"
                          : null;
                    },
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.blue),
                        suffixIcon: Image.asset("gambar/Vector.png"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(0xFF44B4FF),
                                style: BorderStyle.solid))),
                  ),
                )),
            SizedBox(
              height: bodyHeight * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: bodyWidth * 0.001, right: bodyWidth * 0.001),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: bodyWidth * 0.9,
                    height: bodyHeight * 0.08,
                    child: ElevatedButton(
                        onPressed: (() => {
                              if (_formKey.currentState!.validate() &&
                                  usernameController.text.toString() ==
                                      usernameDefault &&
                                  _formKey.currentState!.validate() &&
                                  passwordController.text.toString() ==
                                      passwordDefault)
                                {
                                  submitTrue(context, usernameController.text,
                                      passwordController.text),
                                }
                              else
                                {
                                  submitFalse(context, usernameController.text,
                                      passwordController.text)
                                }
                            }),
                        child: const Text("Login")),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.01,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    PageTransition(
                      child: const SignUpScreen(),
                      type: PageTransitionType.rightToLeft,
                    ));
              }),
              child: const Text.rich(
                  TextSpan(text: "Belum memiliki akun? ", children: [
                TextSpan(text: "Sign Up", style: TextStyle(color: Colors.blue))
              ])),
            )
          ],
        ));
  }

  void submitTrue(BuildContext context, String username, String password) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Login Sukses",
      style: const AlertStyle(
        descStyle: TextStyle(
            fontSize: 13,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w800),
      ),
      buttons: [
        DialogButton(
            child: const Text(
              "Okay",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w800),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                    child: const SplashScreen2(),
                    type: PageTransitionType.rightToLeft,
                  ));
            })
      ],
    ).show();
  }

  void submitFalse(BuildContext context, String username, String password) {
    if (username.isEmpty || password.isEmpty) {
      const snackBar = SnackBar(
        duration: Duration(seconds: 2),
        content: Text("Username dan Password tidak boleh kosong!"),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    } else if (username != usernameDefault || password != passwordDefault) {
      Alert(
        context: context,
        type: AlertType.error,
        style: const AlertStyle(
            descStyle: TextStyle(fontSize: 13, fontFamily: "Montserrat"),
            titleStyle: TextStyle(
                fontSize: 23,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w800)),
        title: "Login Gagal",
        desc: "Username atau Password yang kamu masukin salah",
        buttons: [
          DialogButton(
              child: const Text(
                "Kembali",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: "Montserrat"),
              ),
              onPressed: () => Navigator.pop(context))
        ],
      ).show();
      return;
    }
  }
}
