// lib/models/product.dart
class Product {
  final int id;
  final String categoryId;
  final String name;
  final int price;
  final String image; // network URL
  final String? shortDesc;

  Product({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.price,
    required this.image,
    this.shortDesc,
  });
}

final products = <Product>[
  // KEYBOARDS (1-8)
  Product(
    id: 1,
    categoryId: 'keyboards',
    name: 'ATK 68 RX eSports Hot-Swap',
    price: 1349000,
    image:
        'https://images.unsplash.com/photo-1585079542415-5b63b2b6d0f1?w=1200&q=80',
    shortDesc: '65% layout, hot-swap, rapid trigger',
  ),
  Product(
    id: 2,
    categoryId: 'keyboards',
    name: 'Mars68 Wireless Hall Effect',
    price: 649000,
    image:
        'https://images.unsplash.com/photo-1555617117-08db3e8a6a14?w=1200&q=80',
    shortDesc: '65% wireless, hall effect',
  ),
  Product(
    id: 3,
    categoryId: 'keyboards',
    name: 'IROK MG75 MAX Hall Effect',
    price: 1949000,
    image:
        'https://images.unsplash.com/photo-1563444300976-0f9d3a2f0ae8?w=1200&q=80',
    shortDesc: '75% layout, magnetic plate',
  ),
  Product(
    id: 4,
    categoryId: 'keyboards',
    name: 'AULA HERO 68 (Hot-Swappable)',
    price: 799000,
    image:
        'https://images.unsplash.com/photo-1545239351-1141bd82e8a6?w=1200&q=80',
    shortDesc: '65% wired, hot-swap',
  ),
  Product(
    id: 5,
    categoryId: 'keyboards',
    name: 'AULA S75 PRO Trimode',
    price: 859000,
    image:
        'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?w=1200&q=80',
    shortDesc: '75% gasket mount, trimode',
  ),
  Product(
    id: 6,
    categoryId: 'keyboards',
    name: 'AULA FIRE75 CNC Aluminum',
    price: 1099000,
    image:
        'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=1200&q=80',
    shortDesc: '75% aluminum case',
  ),
  Product(
    id: 7,
    categoryId: 'keyboards',
    name: 'Forerunner Smart875 75%',
    price: 1149000,
    image:
        'https://images.unsplash.com/photo-1518444020219-7b1a2f9a6bfe?w=1200&q=80',
    shortDesc: '75% programmable',
  ),
  Product(
    id: 8,
    categoryId: 'keyboards',
    name: 'WOB Zen65 65% Gasket Mount',
    price: 1799000,
    image:
        'https://images.unsplash.com/photo-1555617117-7b9e1c3d1f2a?w=1200&q=80',
    shortDesc: '65% premium',
  ),

  // MICE (9-16)
  Product(
    id: 9,
    categoryId: 'mice',
    name: 'PAW 3395 Ultra Wireless',
    price: 749000,
    image:
        'https://images.unsplash.com/photo-1585386959984-a415522d6f3b?w=1200&q=80',
    shortDesc: 'PAW3395 sensor',
  ),
  Product(
    id: 10,
    categoryId: 'mice',
    name: 'Ambidextrous Gaming Mouse',
    price: 520000,
    image:
        'https://images.unsplash.com/photo-1527443154391-507e9dc6c5cc?w=1200&q=80',
    shortDesc: 'Ambidextrous',
  ),
  Product(
    id: 11,
    categoryId: 'mice',
    name: 'Ultra-Lightweight Mouse',
    price: 880000,
    image:
        'https://images.unsplash.com/photo-1564869735278-5f3b9f9d2a2e?w=1200&q=80',
    shortDesc: 'Ultra-light',
  ),
  Product(
    id: 12,
    categoryId: 'mice',
    name: 'Macro Button Mouse',
    price: 590000,
    image:
        'https://images.unsplash.com/photo-1585386959984-0a9c2f4a3b1f?w=1200&q=80',
    shortDesc: 'Macro buttons',
  ),
  Product(
    id: 13,
    categoryId: 'mice',
    name: 'Wireless Charging Mouse',
    price: 980000,
    image:
        'https://images.unsplash.com/photo-1571939222300-1a0f8b8a3e0e?w=1200&q=80',
    shortDesc: 'Wireless charging',
  ),
  Product(
    id: 14,
    categoryId: 'mice',
    name: 'Budget Office Mouse',
    price: 90000,
    image:
        'https://images.unsplash.com/photo-1555617117-7b9e1c3d1f2a?w=1200&q=80',
    shortDesc: 'Office mouse',
  ),
  Product(
    id: 15,
    categoryId: 'mice',
    name: 'Refurb Mouse (Sensor Issue)',
    price: 250000,
    image:
        'https://images.unsplash.com/photo-1526178617022-4b13a5d4a7d8?w=1200&q=80',
    shortDesc: 'Refurb; sensor issue',
  ),
  Product(
    id: 16,
    categoryId: 'mice',
    name: 'Wireless Ergonomic Mouse',
    price: 720000,
    image:
        'https://images.unsplash.com/photo-1589758438368-4b97d7b4b8f7?w=1200&q=80',
    shortDesc: 'Ergonomic',
  ),

  // MONITORS (17-24)
  Product(
    id: 17,
    categoryId: 'monitors',
    name: '24" 1080p 144Hz',
    price: 2100000,
    image:
        'https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=1200&q=80',
    shortDesc: '144Hz gaming',
  ),
  Product(
    id: 18,
    categoryId: 'monitors',
    name: '27" 1440p IPS',
    price: 4200000,
    image:
        'https://images.unsplash.com/photo-1509395176047-4a66953fd231?w=1200&q=80',
    shortDesc: 'QHD IPS',
  ),
  Product(
    id: 19,
    categoryId: 'monitors',
    name: '32" 4K HDR',
    price: 8200000,
    image:
        'https://images.unsplash.com/photo-1587825140400-3d0f2f1f0f3b?w=1200&q=80',
    shortDesc: '4K HDR',
  ),
  Product(
    id: 20,
    categoryId: 'monitors',
    name: '34" Ultrawide 144Hz',
    price: 9500000,
    image:
        'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=1200&q=80',
    shortDesc: 'Ultrawide',
  ),
  Product(
    id: 21,
    categoryId: 'monitors',
    name: '24" IPS Office',
    price: 1600000,
    image:
        'https://images.unsplash.com/photo-1503602642458-232111445657?w=1200&q=80',
    shortDesc: 'Office monitor',
  ),
  Product(
    id: 22,
    categoryId: 'monitors',
    name: 'Portable 15.6" USB-C',
    price: 2400000,
    image:
        'https://images.unsplash.com/photo-1558888402-0b9b06f9a4d7?w=1200&q=80',
    shortDesc: 'Portable USB-C',
  ),
  Product(
    id: 23,
    categoryId: 'monitors',
    name: 'Curved 27" 165Hz',
    price: 5200000,
    image:
        'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?w=1200&q=80',
    shortDesc: 'Curved 165Hz',
  ),
  Product(
    id: 24,
    categoryId: 'monitors',
    name: '22" 75Hz Budget',
    price: 950000,
    image:
        'https://images.unsplash.com/photo-1519389950473-47ba0277781c?w=1200&q=80',
    shortDesc: 'Budget 75Hz',
  ),

  // AUDIO (25-32)
  Product(
    id: 25,
    categoryId: 'audio',
    name: 'Over-Ear Headphone',
    price: 950000,
    image:
        'https://images.unsplash.com/photo-1511367461989-f85a21fda167?w=1200&q=80',
    shortDesc: 'Closed-back',
  ),
  Product(
    id: 26,
    categoryId: 'audio',
    name: 'Wireless Earbuds (ANC)',
    price: 650000,
    image:
        'https://images.unsplash.com/photo-1520975913453-1fbe7b3a5a0f?w=1200&q=80',
    shortDesc: 'True wireless',
  ),
  Product(
    id: 27,
    categoryId: 'audio',
    name: 'USB-C DAC Headset',
    price: 780000,
    image:
        'https://images.unsplash.com/photo-1518444020219-7b1a2f9a6bfe?w=1200&q=80',
    shortDesc: 'Built-in DAC',
  ),
  Product(
    id: 28,
    categoryId: 'audio',
    name: 'Bluetooth Mini Speaker',
    price: 420000,
    image:
        'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=1200&q=80',
    shortDesc: 'Portable',
  ),
  Product(
    id: 29,
    categoryId: 'audio',
    name: 'Streaming Microphone USB',
    price: 890000,
    image:
        'https://images.unsplash.com/photo-1518365651022-8c7d8c2b4f2b?w=1200&q=80',
    shortDesc: 'Streaming mic',
  ),
  Product(
    id: 30,
    categoryId: 'audio',
    name: 'Gaming Headset (Surround)',
    price: 720000,
    image:
        'https://images.unsplash.com/photo-1516707570267-1d7b1a2e6f1c?w=1200&q=80',
    shortDesc: 'Gaming headset',
  ),
  Product(
    id: 31,
    categoryId: 'audio',
    name: 'Studio Monitor Pair',
    price: 3200000,
    image:
        'https://images.unsplash.com/photo-1518444020219-4c8a7a0b9b90?w=1200&q=80',
    shortDesc: 'Studio monitors',
  ),
  Product(
    id: 32,
    categoryId: 'audio',
    name: 'Aluminum Headphone Stand',
    price: 150000,
    image:
        'https://images.unsplash.com/photo-1526170375885-3b9a4b8f5f4a?w=1200&q=80',
    shortDesc: 'Headphone stand',
  ),

  // ACCESSORIES (33-40)
  Product(
    id: 33,
    categoryId: 'accessories',
    name: 'USB-C Charger 65W (PD)',
    price: 350000,
    image:
        'https://images.unsplash.com/photo-1545239351-1141bd82e8a6?w=1200&q=80',
    shortDesc: 'Fast charger',
  ),
  Product(
    id: 34,
    categoryId: 'accessories',
    name: 'USB Hub 4-Port',
    price: 180000,
    image:
        'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=1200&q=80',
    shortDesc: 'USB hub',
  ),
  Product(
    id: 35,
    categoryId: 'accessories',
    name: 'HDMI Cable 2m',
    price: 60000,
    image:
        'https://images.unsplash.com/photo-1585386959984-2b0a6f9fb2b6?w=1200&q=80',
    shortDesc: 'HDMI 2m',
  ),
  Product(
    id: 36,
    categoryId: 'accessories',
    name: 'Gas Spring Monitor Arm',
    price: 450000,
    image:
        'https://images.unsplash.com/photo-1573164574395-9fa1f0b1d4b8?w=1200&q=80',
    shortDesc: 'Monitor arm',
  ),
  Product(
    id: 37,
    categoryId: 'accessories',
    name: 'Mouse Pad XL Desk Mat',
    price: 120000,
    image:
        'https://images.unsplash.com/photo-1585386959984-3c6f6b6b4f2b?w=1200&q=80',
    shortDesc: 'Desk mat',
  ),
  Product(
    id: 38,
    categoryId: 'accessories',
    name: 'Keyboard Wrist Rest',
    price: 80000,
    image:
        'https://images.unsplash.com/photo-1545239351-1c1a2b3e8a6b?w=1200&q=80',
    shortDesc: 'Wrist rest',
  ),
  Product(
    id: 39,
    categoryId: 'accessories',
    name: 'Cable Organizer Kit',
    price: 70000,
    image:
        'https://images.unsplash.com/photo-1526170375885-5c9a4b8a2f1a?w=1200&q=80',
    shortDesc: 'Cable kit',
  ),
  Product(
    id: 40,
    categoryId: 'accessories',
    name: 'Webcam Clamp Mount',
    price: 110000,
    image:
        'https://images.unsplash.com/photo-1526170375885-6a8f4b7d1f2b?w=1200&q=80',
    shortDesc: 'Webcam mount',
  ),
];
