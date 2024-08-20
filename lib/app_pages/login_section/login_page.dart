import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ticket_sphere/services/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.switchLoginScreen,
    required this.switchToHomePage,
  });

  final Function switchLoginScreen;
  final Function switchToHomePage;

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();

  bool _obscureText = true;

  bool _isRememberMe = false;

  String errorMessage = '';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signinClicked() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      )
          .then(
        (onValue) {
          widget.switchToHomePage("home-page");
        },
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        if (e.code == "user-not-found") {
          errorMessage = "Account does not exist.";
        } else if (e.code == "wrong-password") {
          errorMessage = "Invalid credentials.";
        } else {
          errorMessage = e.message!;
        }
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
            height: 200,
          ),
          const Text(
            "Sign In",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Welcome back",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const Text(
            "Sign in to continue with existing account",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 25),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: _isRememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _isRememberMe = value!;
                      });
                    },
                  ),
                  const Text("Remember me"),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            errorMessage,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: signinClicked,
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 160, vertical: 15),
              backgroundColor: const Color.fromARGB(255, 3, 205, 199),
            ),
            child: const Text(
              "Sign In",
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
          ElevatedButton(
            onPressed: () {
              widget.switchLoginScreen("signup-page");
            },
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 102, vertical: 15),
              backgroundColor: const Color.fromARGB(255, 3, 205, 199),
            ),
            child: const Text(
              "Create a new Account",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () async {
              dynamic user = await _auth.signInAnon();
              if (user == null) {
                print("Error signing in");
              } else {
                print("signed in");
                print(user);
                widget.switchToHomePage("home-page");
              }
              
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
          )
        ],
      ),
    );
  }
}
