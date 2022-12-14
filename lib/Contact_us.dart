// ignore: camel_case_types
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:map1/maindart2.dart';
import 'package:map1/pillow.dart';
import 'Address.dart';
import 'Login.dart';
import 'Wall_clock.dart';
import 'beds.dart';
import 'blanket.dart';
import 'camera_page.dart';
import 'main.dart';

// ignore: camel_case_types
class About_us extends StatelessWidget {
  const About_us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About_us'),
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
                  ListTile(
                      title: const Text("blanket"),
                      leading: const Icon(Icons.person),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const blanket()));
                      }),
                  ListTile(
                      title: const Text("Beds"),
                      leading: const Icon(Icons.person),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const beds()));
                      }),
                  ListTile(
                      title: const Text("pillow"),
                      leading: const Icon(Icons.person),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const pillow()));
                      }),
                  ListTile(
                      title: const Text("Clock"),
                      leading: const Icon(Icons.person),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Clock()));
                      }),
                  ListTile(
                      title: const Text("About us"),
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
                    child: const Text('Launch Camera'),
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
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                  height: 150,
                  width: 128,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16)),
                  child: const Image(
                    image: AssetImage("Asset/img/blank.webp"),
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 34,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Eng.Ziad Nassir",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Software Developer",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.green),
                    ),
                    Row(
                      children: const [
                        CustomIconStyle(
                          icon: Icons.mail,
                        ),
                        SizedBox(width: 8),
                        CustomIconStyle(
                          icon: Icons.phone,
                        ),
                        SizedBox(width: 8),
                        CustomIconStyle(
                          icon: Icons.video_call,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Address",
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "ALhammra",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 150,
                    width: 150,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 150,
                        width: 128,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(16)),
                        child: const Image(
                          image: AssetImage("Asset/img/blank.webp"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        width: 34,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Eng.Abdullah Qutub",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            "Software Developer",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.green),
                          ),
                          Row(
                            children: const [
                              CustomIconStyle(
                                icon: Icons.mail,
                              ),
                              SizedBox(width: 8),
                              CustomIconStyle(
                                icon: Icons.phone,
                              ),
                              SizedBox(width: 8),
                              CustomIconStyle(
                                icon: Icons.video_call,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Address",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Alrabwah",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ]),
        )));
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
            color: Colors.red, borderRadius: BorderRadius.circular(16)),
        child: Icon(
          icon,
          color: Colors.orange,
          size: 32,
        ));
  }
}
