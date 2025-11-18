# MyShop Mini  
A mobile shopping app built with Flutter as part of Ujian Tengah Semester Pemrograman Mobile.  
Created by Adhika Pratama.

---

## 📝 Deskripsi  
MyShop Mini adalah aplikasi belanja ringan yang memungkinkan pengguna untuk:  
- Menjelajah produk-produk yang tersedia  
- Melihat detail produk (gambar, harga, deskripsi)  
- Memiliki antarmuka yang responsif dan mudah digunakan di perangkat mobile
---
## Struktur Proyek  
/android
/ios
/lib
/models
/widgets
/screens
main.dart
pubspec.yaml

- `models`: kelas data seperti `Product`  
- `widgets`: komponen UI reusable seperti `ProductCard`  
- `screens`: halaman aplikasi (home, detail produk, checkout, dll)  
- `main.dart`: entry point aplikasi

---

## Cara Menjalankan Aplikasi  
1. Pastikan Flutter terinstall dan environment sudah siap.  
2. Clone repository ini:    
   git clone https://github.com/adhikapratama/uts-pemrograman_mobile.git
   cd uts-pemrograman_mobile
    install dependencies:
    flutter pub get
    flutter run

    
## Widget yang Digunakan dan Fungsinya

### 1. **Material**
Menyediakan fondasi visual dan interaksi gaya Material Design untuk seluruh elemen UI.

### 2. **InkWell**
Widget untuk memberikan efek sentuhan (ripple) ketika pengguna men-tap card atau item produk.

### 3. **Container**
Digunakan untuk membungkus elemen dengan opsi dekorasi seperti warna, padding, radius, dan shadow.

### 4. **BoxDecoration**
Memberikan tampilan seperti rounded corner, background color, dan shadow pada card produk.

### 5. **Column**
Menata widget secara vertikal. Banyak digunakan pada layout kartu produk dan halaman detail.

### 6. **Row**
Menata widget secara horizontal (dipakai jika ada layout sejajar).

### 7. **Padding**
Memberikan jarak di dalam suatu elemen agar tampilan lebih rapi.

### 8. **SizedBox**
Memberikan ruang kosong dan mengatur tinggi/lebar tertentu.

### 9. **Hero**
Memberikan animasi transisi mulus pada gambar produk ketika berpindah ke halaman detail produk.

### 10. **ClipRRect**
Memotong widget sesuai bentuk tertentu, seperti rounded corners pada gambar card.

### 11. **AspectRatio**
Menjaga proporsi gambar agar tidak melebar atau memanjang berlebihan.

### 12. **Navigator**
Mengatur perpindahan halaman seperti:.
(```dart 
Navigator.push(...)
Navigator.pop(...) ) 

### 13. **Text**
Menampilkan teks seperti nama produk, harga, dan deskripsi.

### 14. **TextOverflow.ellipsis**
Memotong teks yang terlalu panjang dengan “…” agar tidak menyebabkan overflow.

### 15. **GridView.builder**
Menampilkan daftar produk dalam bentuk grid.  
Digunakan untuk menampilkan banyak item dengan layout responsif.

### 16. **SliverGridDelegateWithFixedCrossAxisCount**
Mengatur jumlah kolom grid (misalnya 2 kolom) dan rasio aspek item agar card tidak overflow.

### 17. **ListView / SingleChildScrollView**
Digunakan pada halaman detail untuk menggulir konten yang panjang.

### 18. **Icon**
Menampilkan icon fallback atau dekorasi (misalnya ketika gambar error).

### 19. **CircularProgressIndicator**
Menampilkan loading ketika gambar belum selesai di-download.

### 20. **Scaffold**
Struktur dasar layar: menyediakan AppBar, body, dan area layar lainnya.

### 21. **AppBar**
Header atas untuk judul halaman atau tombol back.

### 22. **Navigator**
Mengatur perpindahan halaman seperti:
```dart
Navigator.push(...)
Navigator.pop(...)
