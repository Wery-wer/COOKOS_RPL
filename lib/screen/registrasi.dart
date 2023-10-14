import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Registrasi extends StatefulWidget {
  static String routeName = '/registrasi';
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<Registrasi> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _register() {
    String username = usernameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    // Add your login logic here
    // You can check the entered username and password against your database or any other authentication method.
    // Example:
    if (username == 'your_username' && password == 'your_password') {
      // Successful login
      // Navigate to the next screen or perform some action
    } else {
      // Failed login
      // Show an error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 63,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "COO",
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w700,
                  color: Colors.black, // Ubah warna teks
                ),
              ),
              Text(
                "KOS",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 64,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 42,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(154)),
                color: Color(0xffe5737d),
              ),
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Buat Akun",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.black, // Ubah warna teks
                          height: 3,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: UnderlineInputBorder(),
                            labelText: '  Masukkan Username'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Email Address",
                        style: TextStyle(
                          color: Colors.black, // Ubah warna teks
                          height: 3,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: UnderlineInputBorder(),
                            labelText: '  Masukkan Email'),
                        obscureText: true,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.black, // Ubah warna teks
                          height: 3,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: UnderlineInputBorder(),
                            labelText: '  Masukkan Password'),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: _register,
                        child: Text('Register'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(
                              255, 255, 255, 255), // Ubah warna latar belakang
                          onPrimary: const Color.fromARGB(
                              255, 0, 0, 0), // Ubah warna teks
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          minimumSize: Size(150, 40),
                        ),
                      ),
                    ),
                    SizedBox(height: 0),
                  ],
                ),
              ),
            ),
          ),
          // Tambahkan teks di bawah layar
          Text(
            "Belum memiliki akun ? Registrasi",
            style: TextStyle(
              color: Colors.black, // Ubah warna teks
              fontSize: 16, // Sesuaikan ukuran teks
            ),
          ),
        ],
      ),
    );
  }
}