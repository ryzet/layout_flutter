import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // variabel biasa (boleh final karena tidak tergantung context)
  final Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  'wisata gunung di batu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'banyuwangi, indonesia',
                style: TextStyle(color: Colors.blueGrey),
              ),
            ],
          ),
        ),
        Icon(Icons.star, color: Color.fromARGB(255, 255, 0, 0)),
        Text('41'),
      ],
    ),
  );

  // method untuk bikin kolom tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // 🔹 Tambahkan variabel ini di bawah titleSection (sesuai instruksi)
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // 🔹 Tambahkan textSection tepat di bawah buttonSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout: Achmad Alfarizy Satriya Gautama_362458302147',
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              'assets/logo_poliwangi.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection, // 🔹 tampilkan row tombol di bawah titleSection
            textSection, // 🔹 tampilkan textSection di bawah buttonSection
          ],
        ),
      ),
    );
  }
}
