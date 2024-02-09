import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'My Portfolio',
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 201, 157, 240),
              Color.fromARGB(255, 147, 187, 252)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  radius: 70,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Hello, My name is',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Miftakhul Anam',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Saya adalah seorang Junior Web Developer',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PageTwo()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'About me here',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PageThree()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '   Contact Me   ',
                    style: TextStyle(fontSize: 20),
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

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'About Me',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/about.png',
              width: 350.0,
            ),
            const Text(
              'Halo nama saya Miftakhul Anam. Saya berasal dari Kota Lamongan. Saat ini saya sedang mengenyam pendidikan di Universitas Billfath Lamongan. Saya memilih jurusan Teknik Informatika di Fakultas Teknik. Saya senang bisa bergabung dengan Universitas Billfath Lamongan dan jurusan Teknik Informatika.Saya memilih jurusan Teknik Informatika karena saya tertarik dengan teknologi dan ingin menjadi seorang software engineer. Di luar kuliah, saya suka bermain game, membaca buku, dan menonton film. Saya juga aktif di Himpunan Mahasiswa Teknik Informatika.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Follow media sosial saya :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 18),
            TextButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // handle click event here2
              },
              icon: const Icon(Icons.facebook),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '    Facebook    ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 14),
            TextButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // handle click event here
              },
              icon: const Icon(Icons.telegram_outlined),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '    Telegram    ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 14),
            TextButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // handle click event here
              },
              icon: const Icon(Icons.tiktok),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '       Tiktok       ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 14),
            TextButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // handle click event here
              },
              icon: const Icon(Icons.discord),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '      Discord      ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
