
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_values.dart';
import 'package:flutter/material.dart';

class ChapterCard extends StatelessWidget {
  final String? name;
  final VoidCallback? press;

  const ChapterCard({
    Key? key,
    this.name,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 30),
        // margin: EdgeInsets.only(bottom: 16),
        width: AppValues.screenWidth - 48,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(60),
          border: Border.all(color: AppColors.gray70.withOpacity(0.1)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: AppColors.grayF5.withOpacity(.84),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Text(
              name ?? "",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}