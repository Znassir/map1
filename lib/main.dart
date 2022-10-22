import 'package:flutter/material.dart';

void main() {
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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(




                children: [
                  Container(
                    height: 178,
                    width: 128,
                    child: Image(
                      image: AssetImage("Asset/images/AS.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16)),
                  ),



                  SizedBox(
                    width: 34,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Ziad Nassir",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Haert sp.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 34,
                            color: Colors.green),
                      ),

                      Row(
                        children: [
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
              SizedBox(
                height: 32,
              ),
              Text(
                "About",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                ".afaj \ ak;ajl \ aksd",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                ".afajak \ lsAc \ lksd",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      )
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
        child: Icon(
          icon,
          color: Colors.orange,
          size: 32,
        ),
        height: 36,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(16)));
  }
}