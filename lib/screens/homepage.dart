import 'package:ebookapp/models/data.dart';
import 'package:ebookapp/models/tabs.dart';
import 'package:ebookapp/style/text_widget.dart';
import 'package:ebookapp/widget/popular_img_widget.dart';
import 'package:ebookapp/widget/reading_img_widget.dart';
import 'package:ebookapp/widget/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu, color: Colors.black, size: 33,),
                    Row(
                      children: [
                        Text(
                          "Helloo Aman", style: GoogleFonts.lato(
                            textStyle: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(44, 44, 44, 1),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/Aman.jpg"),fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    TitleText( colors: Colors.brown.withOpacity(0.7),
                      title: "“An equation for me has no meaning, unless it expresses a thought of God.”", size: 20,fontWeight: FontWeight.w400,),
                    SizedBox(height: 10,),
                    TitleText( colors: Colors.black45,title: "― Srinivasa Ramanujan", size: 18,fontWeight: FontWeight.w400,),
                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  cursorColor: Colors.grey,
                  cursorRadius: const Radius.circular(10.0),
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: "Search by Title,Author,Genre ",
                    hintStyle: const TextStyle(color: Colors.grey,fontSize: 17),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none ),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey,),
                    suffixIcon:const Icon(Icons.filter_list, color: Colors.grey,),
                    filled: true,
                    fillColor: Color(0xffEFEFEF),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText( colors: Colors.black,title: "Continue Reading", size: 23,fontWeight: FontWeight.w600,),
                    TitleText( colors: Colors.black.withOpacity(0.5),title: "View all", size: 17,fontWeight: FontWeight.w400,),
                  ],
                ),
                SizedBox(height: 10,),
                ReadingImgBlog(),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText( colors: Colors.black,title: "Continue Reading", size: 23,fontWeight: FontWeight.w600,),
                    TitleText( colors: Colors.black.withOpacity(0.5),title: "View all", size: 17,fontWeight: FontWeight.w400,),
                  ],
                ),
                SizedBox(height: 10,),
                TabsButton(),
                SizedBox(height: 15,),
                PopularImgBlog(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
