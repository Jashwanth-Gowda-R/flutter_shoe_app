// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.backgroundColor,
  }) : super(key: key);

  final String title;
  final String image;
  final double price;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Image(
              image: AssetImage(image),
              height: 175,
            ),
          ),
        ],
      ),
    );
  }
}
