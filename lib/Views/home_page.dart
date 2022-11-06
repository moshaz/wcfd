import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wcfd/Controllers/home_controller.dart';
import 'package:wcfd/Routes/app_routes.dart';
import 'package:wcfd/Views/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    //homeController.changeTabIndex(0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'What can Flutter do?',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 30),
              Card(
                color: Colors.amber.shade200,
                child: InkWell(
                  onTap: (){
                    //TODO: go to Notes page
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("Simple note-taking", style: TextStyle(fontSize: 24, color: Colors.brown[70]))
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              Card(
                color: Colors.black,
                child: InkWell(
                  onTap: (){
                    //Get.to(ProfilePage());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const ProfilePage()),
                    // );
                    homeController.changeTabIndex(2);
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("Go to Profile", style: TextStyle(fontSize: 24, color: Colors.white))
                      ],
                    ),
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
