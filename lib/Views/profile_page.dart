import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wcfd/Controllers/home_controller.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    //homeController.changeTabIndex(2);

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            homeController.changeTabIndex(0);
          },
          child: Container(
            alignment: Alignment.center,
            height: 16,
            width: 16,
            child: Icon(
              Icons.arrow_back
            ),
          ),
        ),
        title: Text("Profile"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'You',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 30),
              Card(
                color: Colors.green,
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
                        Text("hello world", style: TextStyle(fontSize: 24, color: Colors.white))
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
