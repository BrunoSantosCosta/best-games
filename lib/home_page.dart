import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game_dashboard/widget/main_card.dart';
import 'package:glass_kit/glass_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.01,
            0.3,
            0.8,
          ],
          colors: [
            Color(0xFF9408C2),
            Color(0xFF313D8A),
            Color(0xFF15002C),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/MyLogo.jpg'),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Happy Weekend',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Hi, Bruno S',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey.shade200,
                            )),
                        child: const Icon(
                          Icons.apps_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lets Explore',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Best Games',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFD50F9A),
                            radius: 4,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Popular',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        'Neaawest',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Recommended',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                CarouselSlider(
                  items: const [
                    MainCard(
                      image: 'images/01.png',
                      descriptionGame: 'Activer Shooter',
                      nameGame: 'COD',
                    ),
                    MainCard(
                      image: 'images/02.png',
                      descriptionGame: 'Activer Shooter',
                      nameGame: 'PUB',
                    ),
                    MainCard(
                      image: 'images/03.png',
                      descriptionGame: 'Activer Shooter',
                      nameGame: 'Deus Ex',
                    ),
                    MainCard(
                      image: 'images/04.png',
                      descriptionGame: 'Activer Shooter',
                      nameGame: 'Lengends',
                    ),
                  ],
                  options: CarouselOptions(
                    autoPlay: false,
                    height: 480,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                  ),
                ),
                const SizedBox(height: 10),
                GlassContainer(
                  height: 100,
                  width: double.infinity,
                  color: Colors.transparent,
                  blur: 15,
                  borderRadius: BorderRadius.circular(40),
                  borderGradient: const LinearGradient(
                    colors: [
                      Color(0xFF242650),
                      Color(0xFF26103C),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF271240)),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFFEB1787),
                                ),
                                child: const Icon(
                                  Icons.games,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Games',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
