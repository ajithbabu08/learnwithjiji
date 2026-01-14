import 'package:flutter/material.dart';

class ResourceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String button;
  final Color buttonColor;
  final IconData icon;
  final Color iconColor;

  const ResourceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.button,
    required this.icon,
    this.iconColor = Colors.teal,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(30, 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              foregroundColor: Colors.white,
              backgroundColor: buttonColor,
            ),
            child: Text(button),
          ),
        ],
      ),
    );
  }
}
