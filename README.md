# Karcis - Ticketing Web Application

Aplikasi web pemesanan karcis/tiket berbasis PHP Native & MySQL, dilengkapi dengan environment Docker, database MySQL, phpMyAdmin, dan migrasi otomatis.

---

## Layanan & Port

| Layanan | URL / Host | Port Host | Keterangan |
| :--- | :--- | :--- | :--- |
| **Aplikasi Web** | `http://localhost:8080` | `8080` | Aplikasi Karcis |
| **Admin Panel** | `http://localhost:8080/adminxyz.php` | `8080` | Login Administrator |
| **phpMyAdmin** | `http://localhost:8081` | `8081` | Web GUI Manajemen Database |
| **Database MySQL** | `localhost:3307` | `3307` | Host direct access (`db:3306` di jaringan docker) |

---

## Cara Menjalankan

### Prasyarat
- Docker & Docker Compose terinstal di komputer.

### 1. Menjalankan Layanan
Jalankan perintah berikut di direktori root project:

```bash
docker compose up -d --build
```

Container aplikasi (`karcis_app`), database (`karcis_db`), dan phpMyAdmin (`karcis_phpmyadmin`) akan dibangun dan dijalankan. Database `db_karcis` beserta seluruh tabel dan seed data awal akan otomatis termigrasi saat container MySQL pertama kali diinisialisasi melalui file `db_karcis.sql`.

### 2. Memeriksa Status Container
```bash
docker compose ps
```

### 3. Melihat Log
```bash
docker compose logs -f
```

### 4. Menghentikan Layanan
```bash
docker compose down
```

> **Catatan:** Jika ingin mereset ulang seluruh database dan menjalankan migrasi awal dari nol, tambahkan flag `-v` untuk menghapus volume data:
> ```bash
> docker compose down -v
> ```

---

## Data User yang Tersedia

Database telah diisi otomatis dengan data akun berikut:

### 1. Akun Admin
Akses login admin melalui: `http://localhost:8080/adminxyz.php`

| Email | Password | Role / Divisi |
| :--- | :--- | :--- |
| `admin@karcis.id` | `admin` | Administrator |

### 2. Akun User / Customer
Akses login user melalui: `http://localhost:8080/signin.php`

| Email | Password | Divisi / Profil |
| :--- | :--- | :--- |
| `be@cyberarmy.id` | `ac4b77634e` | Engineering |
| `coo@cyberamy.id` | `2c7d2eba0a` | Director |
| `user@karcis.id` | `user123` | Pengguna Umum |

---

## Kredensial Database & phpMyAdmin

Akses phpMyAdmin di `http://localhost:8081`:
- **Server:** `db`
- **Username:** `root`
- **Password:** `root`
- **Database:** `db_karcis`
# secure-coding-karcis
# secure-coding-karcis
