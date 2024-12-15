import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/bottom_nav_bar_fab.dart';
import '../widgets/delivery_card_widgets.dart';
import '../widgets/grid_item_widgets.dart';
import '../widgets/post_card_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Update the selected index
    });
  }

  final List<Map<String, dynamic>> posts = [
    {
      "topic": "Issue",
      "post": "“My bedroom switches aren’t working, what should i do ",
      "imagePath": "assets/png/me.png",
      "name": "Rafiqul Islam",
      "flatNumber": "6A",
      "time": "11 Jun 2023",
      "topicColor": const Color(0xFFFCBA2E),
    },
    {
      "topic": "Complain",
      "post": "Scheduled maintenance for electricity will occur tomorrow.",
      "imagePath": "assets/png/me.png",
      "name": "Mirza Ahmed",
      "flatNumber": "7B",
      "time": "11 Jun 2023",
      "topicColor": const Color(0xFFF85464),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    // Handle menu tap
                  },
                ),
                const SizedBox(width: 13),
                // Profile Picture
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/png/me.png",
                  ),
                  radius: 20,
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(fontSize: 14, color: Color(0xFF10243E)),
                    ),
                    Text(
                      'Rafiqul Islam',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF10243E),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Spacer(),
                Stack(
                  children: [
                    Container(
                      width: 39,
                      height: 39,
                      decoration: const BoxDecoration(
                        color: Color(
                            0xFFEEF3FF), // Replace with your desired color
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.notifications,
                            color: Colors.black),
                        onPressed: () {
                          // Handle notification tap
                        },
                      ),
                    ),
                    Positioned(
                      right: 4,
                      top: 4,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                        child: const Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 220,
                width: double.infinity,
                child: Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.only(top: 0),
                    crossAxisCount: 4, // Number of items per row
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: const [
                      GridItem(
                        svgPath: 'assets/svg/residential.svg',
                        label: "Residential",
                      ),
                      GridItem(
                        svgPath: 'assets/svg/issues.svg',
                        label: "Issues",
                      ),
                      GridItem(
                        svgPath: 'assets/svg/accounting.svg',
                        label: "Accounting",
                      ),
                      GridItem(
                        svgPath: 'assets/svg/events.svg',
                        label: "Events",
                      ),
                      GridItem(
                        svgPath: 'assets/svg/financials.svg',
                        label: "Financials",
                      ),
                      GridItem(
                        svgPath: 'assets/svg/allottee.svg',
                        label: "Allottee",
                      ),
                      GridItem(
                        svgPath: 'assets/svg/tenants.svg',
                        label: "Tenants",
                      ),
                      GridItem(
                        svgPath: 'assets/svg/security.svg',
                        label: "Security",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 1, // Ensure this is visible
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      Text(
                        'Visitor',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'See Details',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00D4FF)),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DeliveryCard(
                          name: "Ismail Hossain",
                          role: "Delivery",
                          time: "Today | 4:50 PM",
                          borderColor: Color(0xFF30BF89),
                          roleColor: Color(0xFF30BF89),
                          containerColor: Color(0xFFEAF8F3),
                        ),
                        DeliveryCard(
                          name: "Fuad Hossain",
                          role: "Guest",
                          time: "Today | 5:10 PM",
                          borderColor: Colors.blue,
                          roleColor: Colors.blue,
                          containerColor: Colors.white,
                        ),
                        DeliveryCard(
                          name: "Fuad Hossain",
                          role: "Guest",
                          time: "Today | 5:10 PM",
                          borderColor: Colors.blue,
                          roleColor: Colors.blue,
                          containerColor: Colors.white,
                        ),
                        // Add more DeliveryCard widgets if needed
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  thickness: 1, // Ensure this is visible
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00D4FF),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 28,
                          ),
                          SvgPicture.asset(
                            'assets/svg/emoji.svg',
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Cash in Hand',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Text(
                                    '৳ 12,500.00',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  thickness: 1, // Ensure this is visible
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      Text(
                        'Unsolved Issues',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'See Details',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00D4FF)),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: SizedBox(
                    height: 125, // Adjust height as needed
                    child: ListView.builder(
                      scrollDirection:
                          Axis.horizontal, // Enable horizontal scrolling
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        final post = posts[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 4.0), // Add spacing between cards
                          child: PostCard(
                            topic: post['topic'],
                            post: post['post'],
                            imagePath: post['imagePath'],
                            name: post['name'],
                            flatNumber: post['flatNumber'],
                            time: post['time'],
                            topicColor: post['topicColor'],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton:  Transform.translate(
    offset: const Offset(-189, 50),
    child: SizedBox(
        height: 60,
        width: 60,
        child: Transform.rotate(
          angle: 150,
          child: FloatingActionButton(
            onPressed: () {

            },
            backgroundColor: const Color(0xFF6159FC),
            child: Transform.rotate(
              angle: 150,
              child: const Icon(Icons.add, color: Colors.white,size: 30, ),
            ),
          ),
        ),
      ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
