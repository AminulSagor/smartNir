import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar_fab.dart';
import '../widgets/grid_item_widgets.dart';

class AllFeaturesScreen extends StatefulWidget {
  const AllFeaturesScreen({super.key});

  @override
  State<AllFeaturesScreen> createState() => _AllFeaturesScreenState();
}

class _AllFeaturesScreenState extends State<AllFeaturesScreen> {
  int _currentIndex = 0; // Initialize directly

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const Padding(
            padding: EdgeInsets.only(left: 25.0,top: 18),
            child: Text('All Features',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 40,),
            child: SizedBox(
              height: 590,
              width: double.infinity,
              child: GridView.count(
                padding: const EdgeInsets.only(top: 0),
                crossAxisCount: 3, // Number of items per row
                crossAxisSpacing: 8,
                children: const [
                  GridItem(
                    svgPath: 'assets/svg/home.svg',
                    label: "Home",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/tenants.svg',
                    label: "Tenants",
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
                    svgPath: 'assets/svg/committee_wing.svg',
                    label: "Committee\nWing",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/events.svg',
                    label: "Events",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/residential.svg',
                    label: "Residential\nWing",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/issues.svg',
                    label: "Issue\nTracker",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/billing_management.svg',
                    label: "Billing\nManagement",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/fixed_asset.svg',
                    label: "Fixed\nAsset",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/inventory_stock.svg',
                    label: "Inventory \n& Stock",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/accounting.svg',
                    label: "Accounting",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/security.svg',
                    label: "Security\nMonitoring",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/settings.svg',
                    label: "Settings",
                  ),
                  GridItem(
                    svgPath: 'assets/svg/coupon_affiliate.svg',
                    label: "Coupon \n& Affiliate",
                  ),
                ],
              ),
            ),
          ),
        ],
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
