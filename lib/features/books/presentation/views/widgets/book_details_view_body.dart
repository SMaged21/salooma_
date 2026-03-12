import 'package:flutter/material.dart';
import 'package:salooma_app/core/assets/app_fonts.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/pride.webp",
                  width: width * 0.6,
                  height: height * .4,
                ),
                Text("Book name", style: AppFonts.st24),
                Text("Author name", style: AppFonts.st24),
              ],
            ),
          ),
          Text("Description", style: AppFonts.st24),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.center,
              "This novel has been adapted for film and television numerous times, including feature films, television movies, miniseries, and plays, beginning in the 1930s and continuing until the most recent film, the 2005 British adaptation directed by Joe White in his directorial debut. the renowned actor Donald Sutherland as her father. In addition to critical and popular acclaim, the film garnered four Academy Award nominations, six BAFTA nominations, and numerous other awards. It is perhaps the best film adaptation of this novel, alongside the 1940 American film Pride and Prejudice, directed by Rober.",
            ),
          ),
        ],
      ),
    );
  }
}
