# Toko-Toku Marketplace UI


## Deskripsi Singkat
Toko-Toku adalah aplikasi marketplace sederhana berbasis Flutter yang menampilkan halaman beranda modern dengan banner promo, kategori produk, dan grid produk.

## Widget yang Digunakan
- Scaffold — struktur utama aplikasi
- AppBar — header aplikasi
- GridView — menampilkan kategori dan produk
- BottomNavigationBar — navigasi bawah
- Card — tampilan produk
- TextField — pencarian produk
- PageView — slider banner

## Screenshot
![Hasil UI](screenshot/hasil_ui.png)

## Wireframe
![Wireframe](wireframe/wireframe_foto.jpg)

## Kesulitan yang Ditemui
Kesulitan utama adalah mengatur layout GridView agar tetap responsive dan tidak overflow pada berbagai ukuran layar. Solusinya menggunakan GridView.builder dan pengaturan childAspectRatio.
