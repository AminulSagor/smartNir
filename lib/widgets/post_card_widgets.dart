import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostCard extends StatelessWidget {
  final String topic;
  final String post;
  final String? imagePath;
  final String name;
  final String flatNumber;
  final String time;
  final Color topicColor;

  const PostCard({
    super.key,
    required this.topic,
    required this.post,
    required this.imagePath,
    required this.name,
    required this.flatNumber,
    required this.time,
    required this.topicColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Set a fixed width for the card
      padding: const EdgeInsets.all(4.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.black,
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
            Text(
              topic,
              style: TextStyle(color: topicColor, fontSize: 11),
            ),
            const SizedBox(height: 4,),
            Text(
              post,
              style: const TextStyle(color: Colors.black, fontSize: 12),
              maxLines: 1, // Restricts the text to one line
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8,),
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.grey.shade200,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      imagePath!,
                    ),
                    radius: 20,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF10243E),
                      ),
                      overflow: TextOverflow.ellipsis, // Handle long names
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Flat: ', // Common text in normal style
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                        children: [
                          TextSpan(
                            text: flatNumber, // Variable text in bold
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Optional: Change color if needed
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  overflow: TextOverflow.ellipsis, // Handle long names
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
