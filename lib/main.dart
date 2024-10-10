import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // soal 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // soal 1
              children: [
                // soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // soal 2
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // soal 2
                  ),
                ),
              ],
            ),
          ),
          // soal 3
          const Icon(
            Icons.star, // soal 3
            color: Colors.red, // soal 3
          ),
          const Text('41'), // soal 3
        ],
      ),
    );

    // New code: Add Color and buttonSection widgets
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Ranu Kumbolo adalah sebuah danau yang terletak di Taman Nasional Bromo Tengger Semeru (TNBTS), Jawa Timur.' 
        'Danau ini merupakan bagian dari rute termudah yang berasal dari Ranu Pani menuju puncak Gunung Semeru.'
        'Jika kamu termasuk orang yang suka tantangan dan tidak takut ketinggian,'
        'maka kamu wajib menjadikan Gunung Semeru sebagai list liburan kamu.'
        'Liburan di gunung merupakan alternatif liburan yang dapat menolong kamu dari penatnya keseharian.'
        'Alam dipercaya dapat memberikan energi luar biasa bagi manusia,'
        'sehingga tak salah jika wisata ke gunung akan membuat mood kamu membaik.'
        '\nIdentitas hasil pekerjaan. '
        '\nSukma Bagus Wahasdwika\n 🙂'
        '2241720223',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Sukma Bagus Wahasdwika dan 2241720223',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection,  // Display button section below titleSection
            textSection,
            const Center(
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }

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
}
