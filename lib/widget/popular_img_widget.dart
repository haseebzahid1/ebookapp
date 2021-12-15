import 'package:ebookapp/models/data.dart';
import 'package:ebookapp/style/text_widget.dart';
import 'package:flutter/material.dart';

class PopularImgBlog extends StatelessWidget {
  const PopularImgBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 220,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: popular.length,
          itemBuilder: (context, index){
            Booksdata imgPopularList = popular[index];
            return Container(
              width: 150,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                // color: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset:
                        Offset(4, 1),
                        color: Colors.black
                            .withOpacity(
                            0.1))
                  ]

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(imgPopularList.imagePath,),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3, spreadRadius: 2,
                              offset: Offset(4, 1), color: Colors.black.withOpacity(0.1)),
                        ]
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        TitleText( colors: Colors.black,title: "${imgPopularList.rating}", size: 18,fontWeight: FontWeight.w400,),
                        const SizedBox(height: 7,),
                        Container(
                          width:size.width * 0.40,
                          height: 12,
                          decoration: BoxDecoration(
                            // color: const Color.fromRGBO(230, 230, 232, 1),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red.withOpacity(0.3),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width:size.width * 0.23,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(66, 66, 86, 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}
