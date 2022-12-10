import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _imagesList = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.jpg',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Text(
          "Apple Products",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 36,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "7",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //#header
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/image_1.jpeg'),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.3),
                          Colors.black.withOpacity(0.1),
                        ]
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Lifestyle sale",style: TextStyle(color: Colors.white,fontSize: 35),),
                    const SizedBox(height: 30,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: const Center(
                        child: Text("Shop Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const SizedBox(height: 30,)
                  ],

                ),
              ),
            ),
            SizedBox(height: 20,),

            Expanded(
              child:GridView.count(
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _imagesList.map((item) => _imagesItem(item)).toList(),
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _imagesItem(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
<<<<<<< HEAD
=======
        padding: EdgeInsets.all(16),
>>>>>>> ca44a65 (Initial commit)
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(item),fit: BoxFit.cover)
        ),
<<<<<<< HEAD
=======
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(height: 35,width: 35, image: AssetImage('assets/images/heart.png',)),
          ],
        ),
>>>>>>> ca44a65 (Initial commit)
      ),
    );
  }

}
