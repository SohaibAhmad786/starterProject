import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opentruth/helper/mySize.dart';
import 'package:opentruth/helper/theme_helper.dart';

class CustomButton8 extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double radius;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const CustomButton8({
    super.key,
    required this.text,
    this.backgroundColor,
    required this.onPressed,
    this.textColor,
    this.radius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.0,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          backgroundColor: backgroundColor,
          disabledBackgroundColor: Colors.grey[300],
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? const Color(0xffFFFFFF),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class CustomGradientButton8 extends StatelessWidget {
  const CustomGradientButton8({
    super.key,
    required this.text,
    this.textColor,
    this.radius = 10,
    this.gradientColor,
    required this.onPressed,
  });
  final String text;
  final Color? textColor;
  final double radius;
  final Gradient? gradientColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 55.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          gradient: gradientColor,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

// class CustomSocialButton extends StatelessWidget {
//   final String text;
//   final String image;
//   final Color? textColor;
//   final double radius;
//   final Color? backgroundColor;
//   final VoidCallback onPressed;

//   const CustomSocialButton({
//     super.key,
//     required this.text,
//     this.backgroundColor,
//     required this.onPressed,
//     this.textColor,
//     required this.image,
//     this.radius = 10,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 55.0,
//       child: TextButton(
//         style: TextButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(radius),
//           ),
//           backgroundColor: backgroundColor,
//           disabledBackgroundColor: Colors.grey[300],
//         ),
//         onPressed: onPressed,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: 20.40,
//               height: 24,
//               child: SvgPicture.asset(image),
//             ),
//             const SizedBox(width: 10),
//             Text(
//               text,
//               style: TextStyle(
//                 color: textColor ?? const Color(0xffFFFFFF),
//                 fontWeight: FontWeight.w500,
//                 fontSize: 12,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
    required this.text,
    required this.imageString,
    required this.onPressed,
  });
  final String text;
  final String imageString;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 58,
        margin: EdgeInsets.symmetric(horizontal: MySize.size20),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: ThemeColors.grey1.withOpacity(.3),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imageString,
              height: 35,
              width: 35,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: MySize.size14,
                fontWeight: FontWeight.w500,
                color: ThemeColors.grey2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTabButton extends StatelessWidget {
  const CustomTabButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MySize.size120,
        height: MySize.size30,
        decoration: ShapeDecoration(
          color: isSelected ? ThemeColors.mainColor : ThemeColors.fillColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? ThemeColors.bgColor : ThemeColors.grey1,
            fontSize: MySize.size12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
