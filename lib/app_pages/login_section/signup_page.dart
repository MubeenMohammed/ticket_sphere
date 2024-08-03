import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage(
      {super.key,
      required this.switchLoginScreen,
      required this.switchToHomePage});

  final Function switchLoginScreen;
  final Function switchToHomePage;

  @override
  State<SignupPage> createState() {
    return _SignupPageState();
  }
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String errorToDisplay = "";

  void signupClicked() async {
    if (_passwordController.text == _confirmPasswordController.text) {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        )
            .then(
          (onValue) {
            widget.switchLoginScreen("login-page");
          },
        );
      } on FirebaseAuthException catch (e) {
        setState(() {
          if (e.code == 'weak-password') {
            errorToDisplay = "The password provided is too weak.";
          } else if (e.code == 'email-already-in-use') {
            errorToDisplay = "The account already exists for that email.";
          } else {
            errorToDisplay = e.message!;
          }
        });
      }
    } else {
      setState(() {
        errorToDisplay = "Passwords doesnt match.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 150,
          ),
          const Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const Text(
            "Sign up to create new account",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 25),
          TextField(
            controller: _fullNameController,
            decoration: const InputDecoration(
              hintText: "Full Name",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 196, 190, 190),
              ),
              prefixIcon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 194, 190, 190),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 196, 190, 190),
              ),
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 194, 190, 190),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 196, 190, 190),
              ),
              prefixIcon: const Icon(
                Icons.lock,
                color: Color.fromARGB(255, 194, 190, 190),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            obscureText: _obscureText,
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(
              hintText: "Confirm Password",
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 196, 190, 190),
              ),
              prefixIcon: const Icon(
                Icons.lock,
                color: Color.fromARGB(255, 194, 190, 190),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            obscureText: _obscureText,
          ),
          const SizedBox(height: 10),
          Text(
            errorToDisplay,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: signupClicked,
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 155, vertical: 15),
              backgroundColor: const Color.fromARGB(255, 3, 205, 199),
            ),
            child: const Text(
              "Sign Up",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "------------------------------or-------------------------------",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              widget.switchToHomePage("home-page");
            },
            style: const ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
            child: const Text(
              "Continue Without Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have account?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {
                  widget.switchLoginScreen("login-page");
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 32, 192, 128),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
