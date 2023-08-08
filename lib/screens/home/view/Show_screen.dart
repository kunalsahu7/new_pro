import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modal/Home_modal.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {

  GitaModel g1 = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.network("https://www.google.com/imgres?imgurl=https%3A%2F%2Fe0.pxfuel.com%2Fwallpapers%2F751%2F45%2Fdesktop-wallpaper-krishna-mahabharat-source-bing-krishna-art-hindu-art-krishna-painting.jpg&tbnid=lNEYlsJC_c-yyM&vet=12ahUKEwiihoHH7cyAAxXeUWwGHbPFDgQQxiAoCXoECAAQIA..i&imgrefurl=https%3A%2F%2Fwww.pxfuel.com%2Fen%2Fdesktop-wallpaper-euyxx&docid=8TcMZ-X5T4NWKM&w=850&h=638&itg=1&q=mahabharat&ved=2ahUKEwiihoHH7cyAAxXeUWwGHbPFDgQQxiAoCXoECAAQIA"),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 300,
              decoration:BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.inner,
                    color: Colors.white30,
                  )
                ]
              ),
               child:  Text("${g1.chapterSummary}",),
        ),
           ),
          ],
        ),
      ),
    );
  }
}