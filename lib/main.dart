import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  Widget kartuPemandangan({
    required String nama,
    required String gambar,
    required String lokasi,
    required String deskripsi,
  }) {
    return animasi(
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 10, 16, 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFF002B60),
            width: 1.5,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              gambar,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1560BD),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 22,
                        color: Color(0xFF1560BD),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          lokasi,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1560BD),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    deskripsi,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xFF333333),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffa9c8ed),
        appBar: AppBar(
          title: const Text('Muhammad Makhdum Ibrahim'),
          backgroundColor: const Color(0xff7ba4cb),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // JUDUL
              animasi(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(16, 25, 16, 10),
                  child: Text(
                    'Pesona Alam Indonesia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // =========================
              // GUNUNG BROMO
              // =========================
              kartuPemandangan(
                nama: 'Gunung Bromo',
                gambar: 'assets/GunungBromo.jpeg',
                lokasi: 'Probolinggo, Jawa Timur',
                deskripsi: 'Gunung Bromo merupakan salah satu gunung '
                    'berapi terkenal di Jawa Timur. Gunung ini '
                    'berada di kawasan Taman Nasional Bromo '
                    'Tengger Semeru. Bromo memiliki pemandangan '
                    'alam yang indah, seperti lautan pasir, '
                    'pegunungan, dan matahari terbit.\n\n'
                    'Gunung Bromo menjadi salah satu tempat wisata '
                    'alam yang banyak dikunjungi karena keindahan '
                    'pemandangannya serta suasana pegunungan yang '
                    'sejuk.',
              ),

              // =========================
              // PANTAI KATO
              // =========================
              kartuPemandangan(
                nama: 'Pantai Kato',
                gambar: 'assets/PantaiKato.jpg',
                lokasi: 'Bali, Indonesia',
                deskripsi: 'Pantai Kato merupakan salah satu pemandangan '
                    'pantai yang memiliki suasana laut yang indah. '
                    'Pemandangan laut, pasir, dan lingkungan alam '
                    'menjadi daya tarik utama tempat ini.\n\n'
                    'Pantai merupakan salah satu bentuk kekayaan '
                    'alam Indonesia yang banyak ditemukan di berbagai '
                    'wilayah dan menjadi bagian penting dari wisata '
                    'alam.',
              ),

              // =========================
              // DANAU KELIMUTU
              // =========================
              kartuPemandangan(
                nama: 'Danau Kalimutu',
                gambar: 'assets/Danaukalimutu.jpg',
                lokasi: 'Ende, Nusa Tenggara Timur',
                deskripsi: 'Danau Kelimutu berada di kawasan Gunung '
                    'Kelimutu, Kabupaten Ende, Nusa Tenggara Timur. '
                    'Danau ini terkenal karena memiliki tiga danau '
                    'kawah dengan warna air yang berbeda.\n\n'
                    'Keindahan danau serta suasana pegunungan '
                    'di sekitarnya membuat Danau Kelimutu menjadi '
                    'salah satu pemandangan alam yang terkenal '
                    'di Indonesia.',
              ),

              // =========================
              // SEJARAH SINGKAT
              // =========================
              animasi(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(16, 5, 16, 20),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFF002B60),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sejarah Singkat',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1560BD),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Gunung Bromo merupakan gunung berapi '
                        'yang berada di kawasan Taman Nasional '
                        'Bromo Tengger Semeru. Kawasan ini dikenal '
                        'dengan pemandangan gunung dan lautan pasirnya.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Pantai Kato merupakan salah satu pemandangan '
                        'alam berupa pantai dengan suasana laut yang '
                        'menjadi daya tarik wisata alam.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Danau Kelimutu terkenal dengan tiga danau '
                        'kawah yang memiliki warna air berbeda. '
                        'Danau ini berada di kawasan Gunung Kelimutu '
                        'di Kabupaten Ende.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
