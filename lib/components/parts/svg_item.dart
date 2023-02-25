import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgItem extends StatelessWidget {
  const SvgItem({super.key, required this.svgPath, required this.title});

  final String svgPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: IntrinsicWidth(
        child: ListTile(
          dense: true,
          leading: SvgPicture.asset(
            svgPath,
            width: 32,
            height: 32,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({super.key, required this.imgPath, required this.title});

  final String imgPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: IntrinsicWidth(
        child: ListTile(
          dense: true,
          leading: Image.asset(
            imgPath,
            width: 32,
            height: 32,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class SocialItem extends StatelessWidget {
  const SocialItem(
      {super.key,
      required this.imgPath,
      required this.title,
      required this.url});

  final String imgPath;
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: IntrinsicWidth(
        child: ListTile(
            onTap: () {},
            dense: true,
            leading: Image.asset(
              imgPath,
              width: 32,
              height: 32,
            ),
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              url,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            )),
      ),
    );
  }
}
