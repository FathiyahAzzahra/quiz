import 'package:flutter/material.dart';
import 'settings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Placeholder avatar
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Hello,', style: TextStyle(fontSize: 14)),
                Text(
                  'Alonzo Lee 👋',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: Theme.of(context).textTheme.bodyLarge,
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).iconTheme.color,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // "Courses" Heading
            Text(
              'Courses',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),

            // Chips Section (Fix Overflow)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: Row(
                children: [
                  _buildChip(context, 'All Topics'),
                  const SizedBox(width: 8),
                  _buildChip(context, 'Popular'),
                  const SizedBox(width: 8),
                  _buildChip(context, 'Newest'),
                  const SizedBox(width: 8),
                  _buildChip(context, 'Advance'),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Course Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildCourseCard(
                      Icons.code, 'Web Development', '20 Files', context),
                  _buildCourseCard(Icons.design_services, 'UI/UX Design',
                      '15 Files', context),
                  _buildCourseCard(
                      Icons.computer, 'Digital Marketing', '10 Files', context),
                  _buildCourseCard(
                      Icons.analytics, 'Data Science', '25 Files', context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build Chips
  Widget _buildChip(BuildContext context, String label) {
    return Chip(
      label: Text(label, style: Theme.of(context).textTheme.bodyLarge),
      backgroundColor: Theme.of(context).chipTheme.backgroundColor,
    );
  }

  // Helper method to build Course Cards
  Widget _buildCourseCard(
      IconData icon, String title, String subtitle, BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Theme.of(context).iconTheme.color),
            const SizedBox(height: 10),
            Text(title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    )),
            const SizedBox(height: 5),
            Text(subtitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).textTheme.bodySmall?.color,
                    )),
          ],
        ),
      ),
    );
  }
}
