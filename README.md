# Platformer Game - Tutorial 5

## 🎮 Overview
Game ini merupakan proyek platformer berbasis **Godot Engine**, dikembangkan dengan **TileMap** dari **tutorial 4** sebagai dasar. Saya telah melakukan beberapa perubahan dan penambahan fitur untuk meningkatkan pengalaman bermain.

## 🚀 Features
### 🏃 Karakter & Animasi
Saya mengganti karakter utama dengan **Male Adventurer** dari **Kenney Toon Character Pack** ([kenney.nl](https://kenney.nl/assets)). Karakter ini memiliki animasi dengan **AnimatedSprite**, meliputi:
- **Idle** → Saat diam
- **Walk** → Saat bergerak ke kanan/kiri (Arrow Right/Left)
- **Sprint** → Saat berlari cepat (Double tap Arrow Right/Left)
- **Jump** → Saat melompat (Arrow Up)
- **Double Jump** → Saat melompat dua kali (Double tap Arrow Up)
- **Fall** → Saat jatuh akibat gravitasi atau setelah melompat
- **Crouch** → Saat menunduk (Arrow Down)

### 🎵 Background Music
Tiap level memiliki **musik latar yang berbeda**, sesuai dengan suasana lingkungan:
- **Level 1** → Berlokasi di bumi dengan **tanah & rumput**, menggunakan **backsound happy**.
- **Level 2** → Berlokasi di **planet asing** dengan **tanah putih seperti bulan**, menggunakan **backsound gloomy**.

🔊 **Sumber BGM**: [Freesound.org](https://freesound.org/)

### 🔊 Audio Feedback
Selain BGM, saya menambahkan **efek suara** untuk berbagai aksi:
- **Mengambil koin** → Suara yang menandakan koin berhasil diambil
- **Lose/Win** → Suara yang berbeda untuk masing-masing kondisi
- **Directional Sound untuk Fire** → Suara api menjadi lebih keras saat karakter semakin dekat

### 🌍 Objective (Planet)
Di setiap level, pemain harus mencapai **planet sebagai objective**:
- **Level 1** → Planet berbentuk seperti bulan
- **Level 2** → Planet berbentuk seperti bumi (menandakan kemenangan)

🪐 **Asset planet** diambil dari [Kenney Assets](https://kenney.nl/).

## 🛠 Asset Sources
- **Tilemap** → Dari **tutorial 4**
- **Karakter & Planet** → [Kenney.nl](https://kenney.nl/assets)
- **BGM & Sound Effects** → [Freesound.org](https://freesound.org/)

## 🔧 Proses Implementasi
### 1️⃣ Menggunakan TileMap dari Tutorial 4
Saya menggunakan repository **tutorial 4** sebagai dasar untuk **TileMap**, sehingga saya tidak perlu membangun ulang seluruh lingkungan permainan dari awal.

### 2️⃣ Mengganti Karakter
Karakter awal saya ganti dengan **Male Adventurer** dari **Kenney Toon Character Pack**. Saya menambahkan animasi dengan **AnimatedSprite** dan mengatur state machine agar dapat berpindah antara idle, berjalan, berlari, melompat, dan kondisi lainnya sesuai input dari pemain.

### 3️⃣ Menambahkan Background Music
Untuk menyesuaikan suasana di tiap level, saya memilih **BGM yang berbeda**. Saya menyesuaikan pemilihan musik dengan tema masing-masing level:
- Level 1 dengan suasana **tanah & rumput** → Musik latar **ceria**
- Level 2 dengan suasana **planet asing** → Musik latar **gloomy**
Saya mengambil file BGM dari **Freesound.org** dan mengimplementasikan pemutaran musik menggunakan **AudioStreamPlayer**.

### 4️⃣ Implementasi Audio Feedback
Saya menambahkan efek suara untuk berbagai aksi dalam game menggunakan **AudioStreamPlayer**. Efek suara ini diterapkan untuk:
- Koin yang diambil oleh pemain
- Efek kalah dan menang
- Suara api yang semakin keras saat pemain mendekat (menggunakan sistem **directional sound**)

### 5️⃣ Menambahkan Objective (Planet)
Untuk menyelesaikan level, pemain harus mencapai planet tertentu. Saya menggunakan **asset planet dari Kenney** sebagai tujuan di setiap level:
- **Level 1** → Planet berbentuk bulan
- **Level 2** → Planet berbentuk bumi (tanda kemenangan)

Planet ini berfungsi sebagai **checkpoint akhir** yang ketika disentuh akan mengakhiri level dan menampilkan status kemenangan.
