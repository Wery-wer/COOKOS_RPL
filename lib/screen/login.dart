import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  static String routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _login() {
    String username = usernameController.text;
    String password = passwordController.text;
    Navigator.pushNamed(context, "/edit_profile");

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
                  color: Color(0xFFE5737D),
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
                  crossAxisAlignment: CrossAxisAlignment.start, // Ubah ini menjadi 'start'
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.black, // Ubah warna teks
                          height: 6,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          labelText: 'Masukan Username',
                          labelStyle: TextStyle(color: Colors.black), // Ubah warna teks label
                          fillColor: Colors.white, // Ubah warna latar belakang
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 6), // Mengatur ukuran "box"
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    Container(
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.black, // Ubah warna teks
                          height: 3,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Password',
                          labelStyle: TextStyle(color: Colors.black), // Ubah warna teks label
                          fillColor: Colors.white, // Ubah warna latar belakang
                          filled: true,
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: _login,
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 255, 255, 255), // Ubah warna latar belakang
                          onPrimary: const Color.fromARGB(255, 0, 0, 0), // Ubah warna teks
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          minimumSize: Size(150, 40),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          // Tambahkan teks di bawah layar
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/registrasi');
            },
            child: Text(
              "Belum memiliki akun ? Registrasi",
              style: TextStyle(
                color: Colors.black, // Ubah warna teks
                fontSize: 16, // Sesuaikan ukuran teks
              ),
            ),
          ),
        ],
      ),
    );
  }
}
