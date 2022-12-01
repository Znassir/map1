import 'package:flutter/material.dart';
import 'maindart2.dart';
import 'main.dart';
import 'package:map1/Login.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Programmer'),
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
                    leading: const Icon(Icons.person),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    }),
                ListTile(
                    title: const Text("Tables"),
                    leading: const Icon(Icons.person),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page2()));
                    }),
                ListTile(
                    title: const Text("Carpet"),
                    leading: const Icon(Icons.person),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Address()));
                    }),
                const SizedBox(
                  width: 450,
                  height: 450,
                ),
                ListTile(
                    title: const Text("log out"),
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
                      image: AssetImage("Asset/img/C1.jpg"),
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
                          image: AssetImage("Asset/img/C2.jpg"),
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
                      image: AssetImage("Asset/img/C3.jpg"),
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
                          image: AssetImage("Asset/img/C4.jpg"),
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
                              image: AssetImage("Asset/img/C5.jpg"),
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
                                  image: AssetImage("Asset/img/C6.jpg"),
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
