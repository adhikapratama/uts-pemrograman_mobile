// lib/screens/home.dart
import 'dart:async';
import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/product_list.dart';
import '../styles/theme.dart';
import '../styles/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    // simulate short loading for skeleton (600ms)
    Timer(const Duration(milliseconds: 600), () {
      if (mounted) setState(() => _loading = false);
    });
  }

  void _openProductList(BuildContext ctx, [Category? category]) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) => ProductListScreen(selectedCategory: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pad = horizontalPadding(context);
    final yellow = AppColors.yellow;
    final w = MediaQuery.of(context).size.width;
    final isMobile = w <= 440;

    return Scaffold(
      appBar: AppBar(title: const Text('MYSHOP'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pad, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWelcome(yellow),
              const SizedBox(height: 14),
              _buildSearch(context),
              const SizedBox(height: 16),
              const Text(
                'Pilih kategori',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: _loading
                    ? _buildSkeletonGrid(isMobile)
                    : _buildCategoryGrid(isMobile),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcome(Color yellow) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    color: yellow,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'di MyShop — Temukan produk elektronik terbaik',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(color: yellow, shape: BoxShape.circle),
            child: const Icon(Icons.storefront, color: Colors.black, size: 30),
          ),
        ],
      ),
    );
  }

  Widget _buildSearch(BuildContext ctx) {
    return GestureDetector(
      onTap: () => _openProductList(ctx, null),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          children: const [
            Icon(Icons.search, color: Colors.black45),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                'Cari produk...',
                style: TextStyle(color: Colors.black45),
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.black26),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryGrid(bool isMobile) {
    // Build list with "Semua" first
    final items = <Map<String, dynamic>>[
      {'title': 'Semua', 'icon': Icons.list, 'cat': null},
      ...categories.map((c) => {'title': c.name, 'icon': c.icon, 'cat': c}),
    ];

    // responsive columns: mobile 2, tablet/desktop computed
    final cross = isMobile
        ? 2
        : (MediaQuery.of(context).size.width / 280).floor().clamp(2, 4);

    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: cross,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: 2.8,
      ),
      itemBuilder: (context, idx) {
        final it = items[idx];
        final isAll = it['cat'] == null;
        final title = it['title'] as String;
        final icon = it['icon'] as IconData;
        final cat = it['cat'] as Category?;

        return _AnimatedCategoryTile(
          title: title,
          icon: icon,
          onTap: () {
            if (isAll) {
              // confirm show all
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                ),
                builder: (ctx) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Tampilkan semua produk?',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () => Navigator.pop(ctx),
                                child: const Text('Batal'),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(ctx);
                                  _openProductList(context, null);
                                },
                                child: const Text('Tampilkan'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            } else {
              _openProductList(context, cat);
            }
          },
        );
      },
    );
  }

  // simple skeleton grid (matches grid shape)
  Widget _buildSkeletonGrid(bool isMobile) {
    final cross = isMobile
        ? 2
        : (MediaQuery.of(context).size.width / 280).floor().clamp(2, 4);
    final items = List.generate(
      categories.length + 1,
      (i) => i,
    ); // termasuk "Semua"
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: cross,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: 2.8,
      ),
      itemBuilder: (context, idx) {
        return _CategorySkeleton();
      },
    );
  }
}

// Animated tile with scale/bounce on tap
class _AnimatedCategoryTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const _AnimatedCategoryTile({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  State<_AnimatedCategoryTile> createState() => _AnimatedCategoryTileState();
}

class _AnimatedCategoryTileState extends State<_AnimatedCategoryTile>
    with SingleTickerProviderStateMixin {
  double _scale = 1.0;
  late final AnimationController _anim;

  @override
  void initState() {
    super.initState();
    _anim = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
      lowerBound: 0.95,
      upperBound: 1.02,
    );
    _anim.addListener(() {
      setState(() => _scale = _anim.value);
    });
    _anim.value = 1.0;
  }

  void _onTapDown(_) {
    _anim.animateTo(0.97, curve: Curves.easeOut);
  }

  void _onTapUp(_) async {
    // small bounce back
    await _anim.animateTo(1.02, curve: Curves.easeOut);
    await _anim.animateTo(1.0, curve: Curves.easeIn);
    widget.onTap();
  }

  void _onTapCancel() {
    _anim.animateTo(1.0, curve: Curves.easeOut);
  }

  @override
  void dispose() {
    _anim.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final yellow = AppColors.yellow;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Transform.scale(
        scale: _scale,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 6),
              ),
            ],
            border: Border.all(color: Colors.grey.shade100),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(widget.icon, color: AppColors.black),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  widget.title,
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              const Icon(Icons.chevron_right, color: Colors.black26),
            ],
          ),
        ),
      ),
    );
  }
}

// simple skeleton placeholder matching tile shape
class _CategorySkeleton extends StatefulWidget {
  @override
  State<_CategorySkeleton> createState() => _CategorySkeletonState();
}

class _CategorySkeletonState extends State<_CategorySkeleton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulse;

  @override
  void initState() {
    super.initState();
    _pulse = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _pulse.repeat(reverse: true);
  }

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pulse,
      builder: (context, child) {
        final alpha = 0.08 + (_pulse.value * 0.06);
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.08 + alpha),
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  height: 14,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
