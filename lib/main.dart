import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsPage(),
    );
  }
}

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 420,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/news.png"), fit: BoxFit.cover),
                ),
              )),
          Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ))
                ],
              )),
          Positioned(
              top: 350,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 35, right: 100),
                      child: Text(
                        'День открытых \nдверей в UIB',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
            top: 480,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 55,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(width: 1.5, color: const Color(0xffEEEEEE)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Image(image: AssetImage('images/icon.png')),
                        Text(
                          'Айя Мырзабаева',
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff8F9090)),
                        ),
                        Text('20 сентября',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff8F9090))),
                        Text('|',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff8F9090))),
                        Text('14:00, 2023',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff0D4936))),
                      ]),
                ),
              ],
            ),
          ),
          Positioned(
              top: 560,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: 360,
                  child: const Text(
                    'Представитель UIB рассказывают всю информацию об университете о специальностях, международных программах, грантах и стипендиях. \n\nКаждый абитуриент сможет задать интересующие его вопросы об университете и будет проконсультирован менеджером в индивидуальном порядке.',
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
