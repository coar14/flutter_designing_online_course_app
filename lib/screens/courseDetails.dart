import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({super.key});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(children: [
          Container(
            height: 392,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: const Alignment(1, 0.0),
                colors: <Color>[
                  Color(0xFFF4C465),
                  Color(0xFFC63956),
                ],
              ),
              image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('assets/images/img_saly36_detail.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 22,
              right: 20,
            ),
            child: Column(children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 18,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Color(0xFFF4C465),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                'Graphic Design Master',
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 112.5,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/img_user1.png'),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 22.5,
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/img_user2.png'),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 45,
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/img_user3.png'),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 67.5,
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/img_user4.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    '+28K Members',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
