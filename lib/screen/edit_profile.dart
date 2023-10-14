import "package:flutter/material.dart";

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 290,
          width: double.infinity,
          color: Color(0xFFE5737D),

          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 250, 250, 250), // Ubah warna teks
                    ),
                  ),
                ),
                Container(

                )
              ],
              )
          ),
        ),
    );
  }
}