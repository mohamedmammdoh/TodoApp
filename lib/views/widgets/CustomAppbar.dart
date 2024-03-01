import 'package:flutter/material.dart';

class customappbar extends StatelessWidget {
  const customappbar({
    super.key,
    required this.icon,
    required this.tilte,
    required this.onpresed,
  });
  final String tilte;
  final IconData icon;
  final Function()? onpresed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tilte,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          onPressed: onpresed,
          icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                icon,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
