import 'package:flutter/material.dart';
import '../widgets/banner_slider.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> categories = [
    {
      'icon': Icons.auto_awesome,
      'label': 'Trending',
      'color': Color(0xFF6C63FF),
    },
    {
      'icon': Icons.sports_esports,
      'label': 'Gaming',
      'color': Color(0xFF00BCD4),
    },
    {
      'icon': Icons.checkroom,
      'label': 'Fashion',
      'color': Color(0xFFE91E63),
    },
    {
      'icon': Icons.phone_android,
      'label': 'Gadget',
      'color': Color(0xFF3F51B5),
    },
    {
      'icon': Icons.face,
      'label': 'Beauty',
      'color': Color(0xFFFF9800),
    },
    {
      'icon': Icons.menu_book,
      'label': 'Books',
      'color': Color(0xFF4CAF50),
    },
    {
      'icon': Icons.headphones,
      'label': 'Audio',
      'color': Color(0xFF9C27B0),
    },
    {
      'icon': Icons.more_horiz,
      'label': 'More',
      'color': Color(0xFF607D8B),
    },
  ];

  final List<Map<String, String>> products = [
    {
      'name': 'Mechanical Keyboard RGB',
      'price': 'Rp 425.000',
      'sold': '1.1rb',
      'image': 'https://picsum.photos/seed/keyboard/300/300',
    },
    {
      'name': 'Headset Gaming Wireless',
      'price': 'Rp 299.000',
      'sold': '870',
      'image': 'https://picsum.photos/seed/headset/300/300',
    },
    {
      'name': 'Hoodie Oversize Korean Style',
      'price': 'Rp 159.000',
      'sold': '2rb',
      'image': 'https://picsum.photos/seed/hoodie/300/300',
    },
    {
      'name': 'Anime Figure Limited Edition',
      'price': 'Rp 550.000',
      'sold': '320',
      'image': 'https://picsum.photos/seed/anime/300/300',
    },
    {
      'name': 'Skincare Glow Set Premium',
      'price': 'Rp 189.000',
      'sold': '1.5rb',
      'image': 'https://picsum.photos/seed/skincare/300/300',
    },
    {
      'name': 'Smartwatch Sport Edition',
      'price': 'Rp 375.000',
      'sold': '950',
      'image': 'https://picsum.photos/seed/watch/300/300',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: const Color(0xFF6C63FF),
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'Toko-Toku',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(width: 10),

            Expanded(
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari produk favoritmu...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            color: Colors.white,
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: BannerSlider(),
            ),

            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: categories.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return CategoryItem(
                    icon: categories[index]['icon'],
                    label: categories[index]['label'],
                    color: categories[index]['color'],
                  );
                },
              ),
            ),

            const SizedBox(height: 8),

            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(12),
              child: const Text(
                '✨ Rekomendasi Untuk Kamu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              color: Colors.white,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemCount: products.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.63,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    name: products[index]['name']!,
                    price: products[index]['price']!,
                    sold: products[index]['sold']!,
                    imageUrl: products[index]['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: const Color(0xFF6C63FF),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Notif',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}