import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _controller = PageController();

  int _currentPage = 0;

  final List<Color> colors = [
    const Color(0xFF6C63FF),
    const Color(0xFF00BCD4),
    const Color(0xFFE91E63),
  ];

  final List<String> texts = [
    '✨ Promo Spesial Toko-Toku',
    '🎮 Gaming Gear Diskon Besar',
    '🛍️ Gratis Ongkir Hari Ini',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            controller: _controller,
            itemCount: colors.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: colors[index],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    texts[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            colors.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 18 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? const Color(0xFF6C63FF)
                    : Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}