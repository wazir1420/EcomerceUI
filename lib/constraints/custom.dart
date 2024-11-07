import 'package:flutter/material.dart';

class CircleLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    Paint linePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    canvas.drawLine(
      Offset(size.width / 2 - 2, size.height / 3.5),
      Offset(size.width / 2 + 7, size.height / 3.5),
      linePaint,
    );

    canvas.drawLine(
      Offset(size.width / 2 - 7, size.height / 2.4),
      Offset(size.width / 2 + 7, size.height / 2.4),
      linePaint,
    );

    canvas.drawLine(
      Offset(size.width / 2 - 7, size.height / 1.8),
      Offset(size.width / 2 + 2, size.height / 1.8),
      linePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

customContainer({required String mainText, required String image}) {
  return Container(
    height: 140,
    width: 280,
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainText,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                const Text(
                  'On everything today',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'With code: FSCREATION',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black),
                  child: const Text(
                    'Get Now',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          child: Image.asset(
            image,
            height: 140,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}

Widget productItem({
  required String imageUrl,
  required String title,
  required String subtitle,
  required double price,
  required double rating,
}) {
  return Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(15),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    '($rating)',
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ],
          ),
        ),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
