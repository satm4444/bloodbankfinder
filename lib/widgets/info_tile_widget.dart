import 'package:bloodbankfinder/models/bloodbank_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoTile extends StatelessWidget {
  final BloodBank bloodBank;
  const InfoTile({Key? key, required this.bloodBank}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 5.0,
              ),
            ],
          ),
          height: size.height * 0.14,
          width: size.width,
          //  color: Colors.amberAccent,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  width: size.width * 0.22,
                  height: size.height * 0.14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      bloodBank.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Container(
                  width: size.width * 0.35,
                  height: size.height * 0.14,
                  // color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bloodBank.bloodBankName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff24627F),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Blood Group: ${bloodBank.bloodGroup}',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '+977 ${bloodBank.phone.toString()}',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.locationDot,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${bloodBank.location.toString()} Km far away',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                //  color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CupertinoIcons.phone,
                        size: 30,
                        color: Color(0xff0FC3B3),
                      ),
                      Icon(
                        FontAwesomeIcons.message,
                        color: Color(0xff0FC3B3),
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ))
            ],
          )),
    );
  }
}
