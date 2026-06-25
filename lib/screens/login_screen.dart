import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'main_navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscurePassword = true;
  

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
Future<void> signIn() async {
  try {
    setState(() {
      isLoading = true;
    });

    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );

  } on FirebaseAuthException catch (e) {

    String message = "Login failed";

    if (e.code == 'user-not-found') {
      message = "No user found";
    } else if (e.code == 'wrong-password') {
      message = "Incorrect password";
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );

  } finally {
    setState(() {
      isLoading = false;
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient:LinearGradient(
                    colors:[
                        Color.fromARGB(255, 177, 236, 182),
                        Color(0xFFC8E6C9),
                    ],
                    begin:Alignment.topCenter,
                    end:Alignment.bottomCenter,
                ),
            ),
    child:SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 60),

              // Logo
               Container(
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 25,
        offset: Offset(0,0),
      ),
    ],
  ),
  child: Image.asset(
      'assets/images/logo.png',
      width:300,
      height:300,
    ),
  ),

              const SizedBox(height: 16),

              const Text(
                "Campus AirGuard",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color:Colors.green,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Breathe Better. Live Greener.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize:20
                ),
              ),

              const SizedBox(height: 40),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: passwordController,
                obscureText: obscurePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
          //login button and function
const SizedBox(height: 30),

SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: isLoading ? null : signIn,
    child: isLoading
        ? const CircularProgressIndicator()
        : const Text("Login"),
  ),
),

const SizedBox(height: 15),

SizedBox(
  width: double.infinity,
  height: 55,
  child: OutlinedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        ),
      );
    },
    child: const Text("Create Account"),
  ),
),
                     ],
        ),
      ),
    ),
  ),
);
  }
}