import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/category.dart';
import '../styles/responsive.dart';
import '../widgets/product_card.dart';
import 'product_detail.dart';
import '../styles/theme.dart';

class ProductListScreen extends StatefulWidget {
  final Category? selectedCategory;
  ProductListScreen({this.selectedCategory, Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  String query = '';
  String activeCategoryId = 'all';

  @override
  void initState() {
    super.initState();
    activeCategoryId = widget.selectedCategory?.id ?? 'all';
  }

  List<Product> filteredProducts() {
    final q = query.trim().toLowerCase();
    return products.where((p) {
      final catMatch =
          (activeCategoryId == 'all') || (p.categoryId == activeCategoryId);
      final nameMatch = q.isEmpty || p.name.toLowerCase().contains(q);
      return catMatch && nameMatch;
    }).toList();
  }

  String priceLabel(int p) {
    final s = p.toString();
    final buffer = StringBuffer();
    int count = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      buffer.write(s[i]);
      count++;
      if (count == 3 && i != 0) {
        buffer.write('.');
        count = 0;
      }
    }
    return buffer.toString().split('').reversed.join();
  }

  @override
  Widget build(BuildContext context) {
    final list = filteredProducts();
    final pad = horizontalPadding(context);
    final maxExtent = gridMaxCrossAxisExtent(context);
    final yellow = AppColors.yellow;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0,
        title: TextField(
          onChanged: (v) => setState(() => query = v),
          decoration: InputDecoration(
            hintText: 'Cari produk...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white70),
            suffixIcon: query.isNotEmpty
                ? IconButton(
                    icon: Icon(Icons.close, color: Colors.white70),
                    onPressed: () => setState(() => query = ''),
                  )
                : null,
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: pad, vertical: 12),
        child: Column(
          children: [
            SizedBox(
              height: 92,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length + 1,
                separatorBuilder: (_, __) => SizedBox(width: 12),
                itemBuilder: (context, idx) {
                  final isAll = idx == 0;
                  final cat = isAll ? null : categories[idx - 1];
                  final id = isAll ? 'all' : cat!.id;
                  final selected = id == activeCategoryId;

                  return GestureDetector(
                    onTap: () {
                      if (isAll) {
                        showModalBottomSheet(
                          context: context,
                          builder: (ctx) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(20, 18, 20, 24),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Tampilkan semua produk?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: OutlinedButton(
                                          onPressed: () => Navigator.pop(ctx),
                                          child: Text('Batal'),
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(
                                              () => activeCategoryId = 'all',
                                            );
                                            Navigator.pop(ctx);
                                          },
                                          child: Text('Tampilkan'),
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
                        setState(() => activeCategoryId = id);
                      }
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 180),
                      width: 110,
                      decoration: BoxDecoration(
                        color: selected ? AppColors.black : AppColors.card,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: selected
                                ? yellow
                                : Colors.grey.shade100,
                            child: Icon(
                              isAll ? Icons.list : cat!.icon,
                              color: selected
                                  ? AppColors.yellow
                                  : Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            isAll ? 'Semua' : cat!.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: selected
                                  ? AppColors.yellow
                                  : Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: list.isEmpty
                  ? Center(
                      child: Text(
                        'Produk tidak ditemukan',
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: maxExtent,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.78,
                      ),
                      itemCount: list.length,
                      itemBuilder: (context, idx) {
                        final p = list[idx];
                        return ProductCard(
                          product: p,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => ProductDetailScreen(product: p),
                              ),
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
