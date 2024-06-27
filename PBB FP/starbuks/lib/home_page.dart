import 'package:flutter/material.dart';
import 'package:starbuks/signup_page.dart'; // Sesuaikan dengan lokasi signup_page.dart

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50.0), // Spasi di atas logo
                Center(
                  child: Image.asset('assets/logo.png', height: 200.0), // Membesarkan logo
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Starbucks',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Warna teks hitam
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Warna teks hitam
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement login functionality
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.0), // Tinggi tombol
                      backgroundColor: Colors.green, // Warna tombol hijau
                      foregroundColor: Colors.white, // Warna teks tombol putih
                    ),
                    child: Container(
                      width: double.infinity, // Lebar penuh
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18.0), // Ukuran teks tombol
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      'Belum punya akun? Sign Up di sini',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue, // Warna teks biru untuk teks tautan
                        decoration: TextDecoration.underline, // Garis bawah untuk menandakan tautan
                      ),
                    ),
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
