import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cust_container extends StatelessWidget {
  String coutrycode,countryname,domainname;
  Cust_container({
    super.key,
    required this.countryname,
    required this.coutrycode,
    required this.domainname
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                Colors.blue,
                Colors.pinkAccent
              ]
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.5,
                offset: Offset(4,4)
            )
          ]
      ),
      height: 180,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      child:  Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(countryname,style:GoogleFonts.truculenta(fontSize:20),),
                  Text(coutrycode,style:GoogleFonts.truculenta(fontSize:20))],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(domainname,style:GoogleFonts.truculenta(fontSize:30)),
          )
        ],
      ),
    );
  }
}