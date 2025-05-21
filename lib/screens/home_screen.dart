import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String userName;

  const HomeScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      extendBody: true,
      body: Stack(
        children: [
          Container(color: const Color(0xFF00C180), height: 220),
          SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF00C180),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage(
                              'assets/images/profile.png',
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.notifications_none,
                                color: Colors.black,
                                size: 28,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'مرحباً $userName!',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search, color: Colors.grey),
                            border: InputBorder.none,
                            hintText: 'Search',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Expanded(
                  child: Center(
                    child: Text(
                      '...المحتوى هنا',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Color(0xFF00C180)),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.grid_view_rounded, color: Colors.white),
                onPressed: () {},
              ),
              const SizedBox(width: 40),
              IconButton(
                icon: const Icon(Icons.settings, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.mail_outline, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF00C180),
          onPressed: () {},
          child: const Icon(Icons.add, size: 30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
