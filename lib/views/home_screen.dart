import 'package:bloodbankfinder/controllers/data_controller.dart';
import 'package:bloodbankfinder/widgets/info_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DataController _dataController = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xff24627F),
        appBar: AppBar(
          leading: Icon(CupertinoIcons.back),
          title: Text("Blood Bank"),
          elevation: 0,
          backgroundColor: Color(0xff24627F),
          actions: [Icon(Icons.filter_list), SizedBox(width: 15)],
        ),
        body: Obx(() {
          return Container(
            decoration: BoxDecoration(
                color: Color(0xffECF7FB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 13,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.truckMedical,
                            color: Color(0xff0FC3B3),
                            size: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Nearby blood bank",
                            style: TextStyle(
                              color: Color(0xff24627F),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25, top: 10, bottom: 10),
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter blood bank name",
                              suffixIcon: Icon(CupertinoIcons.search),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.5),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: _dataController.newsList.length,
                      itemBuilder: (context, index) {
                        final data = _dataController.newsList[index];
                        return InfoTile(bloodBank: data);
                      }),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
