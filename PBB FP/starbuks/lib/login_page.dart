import 'package:flutter/material.dart';
import 'home_page.dart'; // Import halaman baru

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black, // Mengubah latar belakang menjadi hitam
          image: DecorationImage(
            image: AssetImage('assets/building.png'), // Path ke gambar logo
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login Page',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Mengubah warna tombol menjadi putih
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Mengubah warna teks tombol menjadi hitam
                ),
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Mengubah warna teks tombol menjadi putih
                ),
                child: Text('Create an Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
