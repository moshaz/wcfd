import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wcfd/Controllers/home_controller.dart';
class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  //HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    //homeController.changeTabIndex(1);

    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'News',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 30),
              Card(
                color: Colors.grey,
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
                        Text("Breaking News indeed", style: TextStyle(fontSize: 24, color: Colors.blueGrey[70]))
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
