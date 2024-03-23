import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Moda Uygulaması',
            style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
              color: Colors.grey,
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 15),
          children: [
            // Üst kısımdaki profil bölümü
            Container(
              padding: const EdgeInsets.all(15),
              height: 150,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  const SizedBox(width: 20),
                  listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                  const SizedBox(width: 20),
                  listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                  const SizedBox(width: 20),
                  listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  const SizedBox(width: 20),
                  listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                  const SizedBox(width: 20),
                  listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                color: Colors.blue,
                child: Container(
                  height: 450,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(image: AssetImage("assets/model1.jpeg"), fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Daisy",
                                style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "34 mins ago",
                                style: TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.more_vert, color: Colors.grey)
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                        "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends.",
                        style: TextStyle(fontFamily: 'Montserrat', fontSize: 13, color: Colors.grey)),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: (MediaQuery.of(context).size.width - 50) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(image: AssetImage("assets/modelgrid1.jpeg"), fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Container(
                              height: 95,
                              width: (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(image: AssetImage("assets/modelgrid2.jpeg"), fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 95,
                              width: (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(image: AssetImage("assets/modelgrid3.jpeg"), fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              color: Colors.brown.withOpacity(0.2),
                            )
                          ],
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ));
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: AssetImage(logoPath), fit: BoxFit.cover),
                  )),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown.shade400,
          ),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(fontFamily: 'Montserrat', color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
