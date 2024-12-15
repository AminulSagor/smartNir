import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Ensure flutter_svg is in your pubspec.yaml

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 16), // Adjust horizontal padding
      color: const Color(0xFF10243E), // Background color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Adjust spacing between items
        children: [
          _buildNavItem(
            iconPath: 'assets/svg/home.svg',
            label: 'Home',
            isSelected: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          _buildNavItem(
            iconPath: 'assets/svg/allottee.svg',
            label: 'Tenants',
            isSelected: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          const SizedBox(width: 32,),
          _buildNavItem(
            iconPath: 'assets/svg/financials.svg',
            label: 'Financials',
            isSelected: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          _buildNavItem(
            iconPath: 'assets/svg/features.svg',
            label: 'Features',
            isSelected: currentIndex == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String iconPath,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            colorFilter: ColorFilter.mode(
              isSelected ? Colors.white : const Color(0xFF48617F),
              BlendMode.srcIn,
            ),
            height: 18,
            width: 18,
          ),
          const SizedBox(height: 4), // Spacing between icon and label
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xFF9B9594),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
