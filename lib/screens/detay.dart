import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  Detay({super.key, this.imagePath});
  var imagePath;

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imagePath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 15,
            right: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          width: 100,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                            image: const DecorationImage(image: AssetImage("assets/dress.jpg"), fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("LAMINATED", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                          const Text("Lois vuitton", style: TextStyle(fontSize: 18, color: Colors.grey, fontFamily: "Montserrat")),
                          const SizedBox(height: 10),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: MediaQuery.of(context).size.width - 170,
                            child: const Text("One button V-neck sling long-slee sleeved waist length",
                                style: TextStyle(fontSize: 13, color: Colors.grey, fontFamily: "Montserrat")),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("\$6500", style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: "Montserrat")),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text("BUY NOW", style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Montserrat")),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context)),
          ),
          Positioned(
            top: 40,
            right: 10,
            child: IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          ),
          Positioned(
            top: 40,
            right: 50,
            child: IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
          ),
          Positioned(
            top: 40,
            right: 90,
            child: IconButton(icon: const Icon(Icons.share), onPressed: () {}),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context)), // Back button
          ),
        ],
      ),
    );
  }
}
