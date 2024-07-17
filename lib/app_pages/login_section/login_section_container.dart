import 'package:flutter/material.dart';

class LoginSectionContainer extends StatefulWidget {
  const LoginSectionContainer({super.key});

  @override
  State<LoginSectionContainer> createState() {
    return _LoginSectionContainerState();
  }
}

class _LoginSectionContainerState extends State<LoginSectionContainer> {
  bool _obscureText = true;

  bool _isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/login_background.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 250,
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
          const TextField(
            decoration: InputDecoration(
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
          const SizedBox(height: 40),
          
        ],
      ),
    );
  }
}
