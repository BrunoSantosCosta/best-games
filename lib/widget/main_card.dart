import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.image,
    required this.nameGame,
    required this.descriptionGame,
  });
  final String image;
  final String nameGame;
  final String descriptionGame;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 470,
        width: 330,
        child: Stack(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFBE04BD),
                    Color(0xFFF41785),
                  ],
                ),
              ),
              child: Image.asset(image),
            ),
            Positioned(
              bottom: 10,
              left: 80,
              child: GlassContainer(
                height: 70,
                width: 180,
                borderColor: const Color(0xFFFC1A7D),
                color: const Color(0xFF2D0536).withOpacity(0.1),
                blur: 10,
                borderWidth: 0.1,
                isFrostedGlass: false,
                borderRadius: BorderRadius.circular(50),
                elevation: 3,
              ),
            ),
            Positioned(
              bottom: 25,
              left: 60,
              child: GlassContainer(
                height: 70,
                width: 220,
                borderColor: const Color(0xFFFC1A7D),
                color: const Color(0xFF2D0536).withOpacity(0.1),
                blur: 10,
                borderWidth: 0.1,
                isFrostedGlass: false,
                borderRadius: BorderRadius.circular(50),
                elevation: 3,
              ),
            ),
            Positioned(
              bottom: 25,
              left: 35,
              child: GlassContainer(
                height: 70,
                width: 270,
                borderColor: const Color(0xFFFC1A7D),
                color: const Color(0xFF2D0536).withOpacity(0.1),
                blur: 10,
                borderWidth: 0.1,
                isFrostedGlass: false,
                borderRadius: BorderRadius.circular(50),
                elevation: 3,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              nameGame,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            descriptionGame,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
