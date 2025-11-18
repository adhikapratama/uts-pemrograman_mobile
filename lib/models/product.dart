// lib/models/product.dart
class Product {
  final int id;
  final String categoryId;
  final String name;
  final int price;
  final String image; // asset path or network
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
    image: 'assets/images/keyboard/kb1.jpeg',
    shortDesc: '65% layout, hot-swap, rapid trigger',
  ),
  Product(
    id: 2,
    categoryId: 'keyboards',
    name: 'Mars68 Wireless Hall Effect',
    price: 649000,
    image: 'assets/images/keyboard/kb2.jpeg',
    shortDesc: '65% wireless, hall effect',
  ),
  Product(
    id: 3,
    categoryId: 'keyboards',
    name: 'IROK MG75 MAX Hall Effect',
    price: 1949000,
    image: 'assets/images/keyboard/kb3.jpeg',
    shortDesc: '75% layout, magnetic plate',
  ),
  Product(
    id: 4,
    categoryId: 'keyboards',
    name: 'AULA HERO 68 (Hot-Swappable)',
    price: 799000,
    image: 'assets/images/keyboard/kb4.jpeg',
    shortDesc: '65% wired, hot-swap',
  ),
  Product(
    id: 5,
    categoryId: 'keyboards',
    name: 'AULA S75 PRO Trimode',
    price: 859000,
    image: 'assets/images/keyboard/kb5.jpeg',
    shortDesc: '75% gasket mount, trimode',
  ),
  Product(
    id: 6,
    categoryId: 'keyboards',
    name: 'AULA FIRE75 CNC Aluminum',
    price: 1099000,
    image: 'assets/images/keyboard/kb6.jpeg',
    shortDesc: '75% aluminum case',
  ),
  Product(
    id: 7,
    categoryId: 'keyboards',
    name: 'Forerunner Smart875 75%',
    price: 1149000,
    image: 'assets/images/keyboard/kb7.jpeg',
    shortDesc: '75% programmable',
  ),
  Product(
    id: 8,
    categoryId: 'keyboards',
    name: 'WOB Zen65 65% Gasket Mount',
    price: 1799000,
    image: 'assets/images/keyboard/kb8.jpeg',
    shortDesc: '65% premium',
  ),

  // MICE (9-16)
  // MICE (9-16)
  Product(
    id: 9,
    categoryId: 'mice',
    name: 'Incott Zero 29 PAW 3395 Trimode Wireless Gaming Mouse - Black',
    price: 749000,
    image: 'assets/images/mouse/mouse1.jpeg',
    shortDesc:
        'INCOTT Zero 29 Battery : 230mAh Sensor : PAW3395 Connection : type-c, 2.4ghz, Bluetooth Product Size : 119 * 62 * 37.6mm Weight : 34±3g',
  ),
  Product(
    id: 10,
    categoryId: 'mice',
    name: 'ATK Dragonfly A9 SE Series Wireless Gaming Mouse',
    price: 520000,
    image: 'assets/images/mouse/mouse2.jpeg',
    shortDesc: 'Ambidextrous',
  ),
  Product(
    id: 11,
    categoryId: 'mice',
    name: 'VGN Feilong Y2 Pro WIred Wireless 8K PAW 3395 Gaming Mouse - Black',
    price: 880000,
    image: 'assets/images/mouse/mouse3.jpeg',
    shortDesc: 'Ultra-light',
  ),
  Product(
    id: 12,
    categoryId: 'mice',
    name:
        'Delux M800 Mini PAW 3311 Tri-mode Connection Wireless Gaming Mouse - White',
    price: 590000,
    image: 'assets/images/mouse/mouse4.jpeg',
    shortDesc: 'Macro buttons',
  ),
  Product(
    id: 13,
    categoryId: 'mice',
    name: 'Delux M500 Tri-mode Connection Wireless Gaming Mouse - Black',
    price: 980000,
    image: 'assets/images/mouse/mouse5.jpeg',
    shortDesc: 'Wireless charging',
  ),
  Product(
    id: 14,
    categoryId: 'mice',
    name: 'ATK Blazing Sky U2 Trimode Wireless Gaming Mousee',
    price: 90000,
    image: 'assets/images/mouse/mouse6.jpeg',
    shortDesc: 'Office mouse',
  ),
  Product(
    id: 15,
    categoryId: 'mice',
    name:
        'VortexSeries IGNIX F7 / F7 PRO PAW3311 Wireless Tri Mode Gaming Mouse - F7 White',
    price: 250000,
    image: 'assets/images/mouse/mouse7.jpeg',
    shortDesc: 'Refurb; sensor issue',
  ),
  Product(
    id: 16,
    categoryId: 'mice',
    name: 'VALKYRIE VK M3 Lite Tri Mode Wireless Gaming Mouse - Black',
    price: 720000,
    image: 'assets/images/mouse/mouse8.jpeg',
    shortDesc: 'Ergonomic',
  ),

  // MONITORS (17-24)
  Product(
    id: 17,
    categoryId: 'monitors',
    name:
        'Xiaomi Gaming Monitor G24i 2026 | Fast IPS FHD Resolution | Faster Refresh Rate 200Hz | 1ms GTG Response Time | Free-Sync Premium [Official Store] - New Model [G24i 2026]',
    price: 2100000,
    image: 'assets/images/monitor/monitor1.jpeg',
    shortDesc: '''
P24FDA-RGGL
Rasio aspek 16:9
Input daya 12 V = 3 A
Resolusi 1920 x 1080
Daya terukur 36 W
Refresh rate maksimum 200 Hz
Ukuran layar 23.8 inci
Kecerahan puncak 400 nit (STANDAR)
Berat bersih produk 3 kg
Sudut kemiringan -5° hingga +15°
''',
  ),
  Product(
    id: 18,
    categoryId: 'monitors',
    name:
        'Xiaomi 4K Monitor A27Ui | 4K UHD IPS Screen | Professional Colour Accuracy | USB-C Port up to 90W charging | Multifunction Adjustable Stand [Official Store] - 4K Monitor A27Ui',
    price: 4200000,
    image: 'assets/images/monitor/monitor2.jpeg',
    shortDesc: '''Model produk
P27UCB-RAGL
Rasio aspek
16:09
Input daya
24 V 5 A
Resolusi
3.840 x 2.160
Daya terukur
120 W
Refresh rate maksimum
60 Hz
Dimensi layar
27 inci
Waktu respons
6 mdtk (standar)
Dot pitch
0,1554 (H) x 0,1554 (V) mm
Dimensi produk (termasuk dudukan)
613 x 185 x 511 mm
Kecerahan
360 nits (standar)
Berat bersih produk (termasuk dudukan)
5,5 kg
Kontras
1.200:1 (standar)
Dimensi braket dinding
Penyangga (VESA 75 x 75)
Jumlah warna
1,07 miliar''',
  ),
  Product(
    id: 19,
    categoryId: 'monitors',
    name:
        'Xiaomi Monitor A27Qi 2K | 2K QHD Display | 100 Hz Refresh rate | 95% DCI-P3 | 100% sRGB [Official Store]',
    price: 8200000,
    image: 'assets/images/monitor/monitor3.jpeg',
    shortDesc: '4K HDR',
  ),
  Product(
    id: 20,
    categoryId: 'monitors',
    name:
        'Xiaomi Gaming Monitor G27Qi 2K | Panel LCD IPS cepat | Refresh Rate 180 Hz | Dua Gamut warna DCI-P3 dan sRGB | Monitor Gaming | [Official Store] - Monitor Only',
    price: 9500000,
    image: 'assets/images/monitor/monitor4.jpeg',
    shortDesc: 'Ultrawide',
  ),
  Product(
    id: 21,
    categoryId: 'monitors',
    name:
        'Official Xiaomi Monitor A24i | 100Hz high refresh rate | 99% sRGB color gamut | FHD Display with IPS Panel | TÜV Rheinland low blue light certification - Monitor Only',
    price: 1600000,
    image: 'assets/images/monitor/monitor5.jpeg',
    shortDesc: 'Office monitor',
  ),
  Product(
    id: 22,
    categoryId: 'monitors',
    name:
        'Official Xiaomi Curved Gaming Monitor G34WQi | Ultra WQHD resolution | 1ms fast response time | 180Hz high refresh rate | RGB backlight - Monitor Only',
    price: 2400000,
    image: 'assets/images/monitor/monitor6.jpeg',
    shortDesc: 'Portable USB-C',
  ),
  Product(
    id: 23,
    categoryId: 'monitors',
    name:
        'Official Xiaomi Gaming Monitor G27i | RR 165Hz - AMD FreeSync Premium - Monitor G27i',
    price: 5200000,
    image: 'assets/images/monitor/monitor7.jpeg',
    shortDesc: 'Curved 165Hz',
  ),
  Product(
    id: 24,
    categoryId: 'monitors',
    name:
        'Official Xiaomi Monitor A22i | Bezel Tipis FHD 75Hz Bodi Tipis - Monitor Only',
    price: 950000,
    image: 'assets/images/monitor/monitor8.jpeg',
    shortDesc: 'Budget 75Hz',
  ),

  // AUDIO (25-32)
  Product(
    id: 25,
    categoryId: 'audio',
    name: 'Eggel Fit 3 Waterproof Portable Bluetooth Speaker - Black',
    price: 199000,
    image: 'assets/images/audio/audio1.jpeg',
    shortDesc: 'Closed-back',
  ),
  Product(
    id: 26,
    categoryId: 'audio',
    name: 'Eggel Terra 3 Max Waterproof Bluetooth Speaker with RGB Lights',
    price: 839000,
    image: 'assets/images/audio/audio2.jpeg',
    shortDesc: '''Specifications:
Bluetooth Version: 5.0
Tranmission Distance: 10m
Waterproof Rating: IP67
Speaker: 1 x Active Driver + 1 x Passive Radiator
Battery Capacity: 1200mAh
Play Time: 15H (Vol: 50%)
Charging Time: 2-3H
Product Size: 97.8*47.4*81.5mm''',
  ),
  Product(
    id: 27,
    categoryId: 'audio',
    name:
        'Eggel Terra 3 Plus + Waterproof Bluetooth Speaker with RGB Lights - Terra 3 Plus S',
    price: 697000,
    image: 'assets/images/audio/audio3.jpeg',
    shortDesc: '''Specification:
Bluetooth Version: 5.3
Transmission Distance: 10m
Waterproof Rating: IP67
Speaker: 2 x Bass-Mid Driver + 2 x Tweeter + 2 x Passive Radiator
Battery Capacity: 7200mAh
Play Time (Light Off): 12H in 50% volume
Charging Current: 5V/3A, 9V/2A, 12V/1.67A
Product Size: 263*124*115mm
Weight: 1570g''',
  ),
  Product(
    id: 28,
    categoryId: 'audio',
    name: 'Eggel Fortis 2 Portable Party Speaker with RGB Lights',
    price: 1199000,
    image: 'assets/images/audio/audio4.jpeg',
    shortDesc: '''Specification:
Bluetooth version: 5.3
Speaker: 1 x Mid & Bass Driver + 2 x Tweeter + 1 x Reflex Port
Battery: 10800mAh
Charging Current: 5V, 2A
Play Time (50% Vol): 4H (Light On) / 6H (Light Off)
Dimension: 276 x 336 x 272mm
Weight: 4650g''',
  ),
  Product(
    id: 29,
    categoryId: 'audio',
    name: 'EDIFIER R1280DBs 2.0 Active Bookshelf Speaker - Black',
    price: 2130000,
    image: 'assets/images/audio/audio5.jpeg',
    shortDesc: '''Specification :
Total Output Power (RMS) 21W + 21W
Driver Units 4" (Mid-range and bass) + 0.5" (Treble)
Frequency Response 51Hz - 20kHz
Signal-to-Noise Rate ≥ 85dB(A) 
Audio Inputs Bluetooth, Line In, Optical, Coaxial
lnput Sensitivity :
LINE In 1 R/L: 500 ± 50mV
LINE In 2 R/L: 600 ± 50mV
Optical / Coaxial R/L: 350 ± 50mFFS
Bluetooth R/L:700 ± 50mFFS
Dimensions (W x H x Dmm) 146mm * 234mm * 196mm
Net Weight 4.9kg''',
  ),
  Product(
    id: 30,
    categoryId: 'audio',
    name: 'Marshall Emberton III Portable Speaker - Cream',
    price: 25490000,
    image: 'assets/images/audio/audio6.jpeg',
    shortDesc: 'Gaming headset',
  ),
  Product(
    id: 31,
    categoryId: 'audio',
    name: 'EDIFIER M60 Compact desktop 2.0 speakers - Black',
    price: 3200000,
    image: 'assets/images/audio/audio7.jpeg',
    shortDesc: 'Studio monitors',
  ),
  Product(
    id: 32,
    categoryId: 'audio',
    name: 'EDIFIER T5 Powered Active Subwoofer - Hitam',
    price: 1150000,
    image: 'assets/images/audio/audio8.jpeg',
    shortDesc: 'Headphone stand',
  ),

  // ACCESSORIES (33-40)
  Product(
    id: 33,
    categoryId: 'accessories',
    name:
        'Kabel Data USB Type C UGREEN For Samsung,Oppo,Vivo Fast Charging 3A - 60118 2.0 PVC 2M',
    price: 990000,
    image: '',
    shortDesc: '''Deskripsi :
Model : 20881 50CM, 20882 1M, 20884 2M
Material : Premium PVC
Current : Max 3A
Panjang :50CM, 1M, 2M
Transmission rate : 5Gbps
Support : Fast Charging , Charging & Data Transmission
USB A : 3.0''',
  ),
  Product(
    id: 34,
    categoryId: 'accessories',
    name: 'Baseus Tungsten Series Kabel Data Lightning',
    price: 180000,
    image: '',
    shortDesc: 'USB hub',
  ),
  Product(
    id: 35,
    categoryId: 'accessories',
    name: 'Kabel Data Type-C JETE SPARK 2.4A Fast Charging - Putih',
    price: 60000,
    image: '',
    shortDesc: 'HDMI 2m',
  ),
  Product(
    id: 36,
    categoryId: 'accessories',
    name:
        'Essager Kabel Charger Gaming Elbow USB To Type C Fast Charging 100W 7A - Blue - 1M',
    price: 450000,
    image: '',
    shortDesc: 'Monitor arm',
  ),
  Product(
    id: 37,
    categoryId: 'accessories',
    name:
        'VENTION Kabel Data Micro Usb Type C Quick Charge Fast Charging Android - COLB Micro Usb, 1 Meter',
    price: 120000,
    image: '',
    shortDesc: 'VENTION Kabel Data Micro Usb',
  ),
  Product(
    id: 38,
    categoryId: 'accessories',
    name:
        'Charger Original Xiaomi 33W Charger Kabel Handphone Type C Fast Charging Android',
    price: 80000,
    image: '',
    shortDesc:
        '''33W Compatible with : Xiaomi Mi 11X Pro/Mi 11X/Mi 11i/Mi 10S/Mi 10T Pro 5G/Mi 10T 5G/Poco X3 Pro/Poco F3/Poco X3 NFC/Poco X3/Poco X2/Poco M2 Pro/Poco F2 Pro/Xiaomi Pad 5/Redmi Note 9 Pro 5G/Redmi K30S/Redmi K30 Pro/Redmi K20 Pro/Redmi 10X Pro 5G/Redmi Note 9 Pro Max/Redmi K40/Redmi Note 10 Pro/Redmi Note 10''',
  ),
  Product(
    id: 39,
    categoryId: 'accessories',
    name:
        'MCDODO Kabel Data USB Type C Auto Disconnect FAST Charging 6A CA-3150 - CA-1080 1.2M',
    price: 70000,
    image: '',
    shortDesc: '''MEREK : MCDODO
- Model : CA-6190
- Material : Zinc alloy + nylon
- Interface : Type c
- Output : 5A
- Color : Black
- Length : 1m
- Function : Charging, data transmission, auto disconnect
- Support : Fast charging 15W-65W
''',
  ),
  Product(
    id: 40,
    categoryId: 'accessories',
    name:
        'AUKEY Kabel Charger DTY Braided USB C To C Fast Charging Up To 60W 1 Meter & 1.8 Meter CB-DCC061 & CB-DCC062 - 1 Meter',
    price: 110000,
    image: '',
    shortDesc: '''Spesifikasi :
Model: CB-DCC061-GY
Tipe: USB-C to USB-C
Panjang: 1 & 1.8 Meter
Bahan: DTY Braided
Warna: Abu Abu''',
  ),
];
