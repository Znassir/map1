import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'maindart2.dart';
import 'Address.dart';
import 'package:map1/Login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chairs'),
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

      //Our page

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
                      image: AssetImage("Asset/img/1.jpg"),
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
                          image: AssetImage("Asset/img/2.jpg"),
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
                      image: AssetImage("Asset/img/3.jpg"),
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
                          image: AssetImage("Asset/img/4.jpg"),
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
                              image: AssetImage("Asset/img/5.jpg"),
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
                                  image: AssetImage("Asset/img/6.jpg"),
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

//Icons class
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
