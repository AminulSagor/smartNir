import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DeliveryCard extends StatelessWidget {
  final String name;
  final String role;
  final String time;
  final Color borderColor;
  final Color roleColor;
  final Color containerColor;

  const DeliveryCard({
    super.key,
    required this.name,
    required this.role,
    required this.time,
    required this.borderColor,
    required this.roleColor,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Set a fixed width for the card
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.grey.shade200,
                  child: SvgPicture.asset(
                    'assets/svg/allottee.svg',
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF10243E),
                  ),
                  overflow: TextOverflow.ellipsis, // Handle long names
                ),
                const Spacer(),
                Container(
                  width: 10, // Adjust the size to fit your needs
                  height: 10,
                  decoration: BoxDecoration(
                    color: borderColor, // Circle's color
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: borderColor.withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    role,
                    style: TextStyle(
                      fontSize: 14,
                      color: roleColor,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
