import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:map1/blanket.dart';
import 'package:map1/pillow.dart';
import 'Contact_us.dart';
import 'Wall_clock.dart';
import 'main.dart';
import 'Carpet.dart';
import 'package:map1/Login.dart';
import 'package:map1/camera_page.dart';
import 'Tables.dart';
// ignore: camel_case_types

class beds extends StatelessWidget {
  const beds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beds'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                children: const [
                  SizedBox(
                    width: 50,
                    height: 50,
                  ),
                  ListTile(
                    title: Text("Menu"),
                    leading: Icon(Icons.home),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            Column(
              children: [
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                ListTile(
                    title: const Text("Chairs"),
                    leading: const Icon(Icons.chair),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    }),
                ListTile(
                    title: const Text("Tables"),
                    leading: const Icon(Icons.table_bar_sharp),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page2()));
                    }),
                ListTile(
                    title: const Text("Carpet"),
                    leading: const Icon(Icons.roller_shades),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Address()));
                    }),
                ListTile(
                    title: const Text("blanket"),
                    leading: const Icon(Icons.bed),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const blanket()));
                    }),
                ListTile(
                    title: const Text("Beds"),
                    leading: const Icon(Icons.bed),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const beds()));
                    }),
                ListTile(
                    title: const Text("pillow"),
                    leading: const Icon(Icons.bed),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const pillow()));
                    }),
                ListTile(
                    title: const Text("Clock"),
                    leading: const Icon(Icons.lock_clock),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Clock()));
                    }),
                ListTile(
                    title: const Text("About_us"),
                    leading: const Icon(Icons.person),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About_us()));
                    }),
                ElevatedButton(
                  onPressed: () async {
                    await availableCameras().then(
                          (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CameraPage(
                            cameras: value,
                          ),
                        ),
                      ),
                    );
                  },
                  child: const Icon(Icons.camera),
                ),
                const SizedBox(
                  width: 110,
                  height: 110,
                ),
                ListTile(
                    title: const Text("logout"),
                    leading: const Icon(Icons.logout_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInScreen()));
                    }),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 150,
                    width: 128,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Image(
                      image: AssetImage("Asset/img/bed1.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                    height: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 128,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Image(
                          image: AssetImage("Asset/img/bed2.jpg"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 150,
                    width: 128,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Image(
                      image: AssetImage("Asset/img/bed3.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                    height: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 128,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Image(
                          image: AssetImage("Asset/img/bed4.jpg"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 150,
                            width: 128,
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Image(
                              image: AssetImage("Asset/img/bed5.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 35,
                            height: 35,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                width: 128,
                                decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Image(
                                  image: AssetImage("Asset/img/bed6.jpg"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconStyle extends StatelessWidget {
  const CustomIconStyle({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 36,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(30)),
        child: Icon(
          icon,
          color: Colors.white,
          size: 32,
        ));
  }
}
