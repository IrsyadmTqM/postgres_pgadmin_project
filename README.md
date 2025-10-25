# 🚀 PostgreSQL + pgAdmin4 Dockerized Project

## 👤 Identitas
**Nama:** Muhammad Irsyad Mustaqim  
**NIM:** 1237050050  
**Mata Kuliah:** Manajemen Basis Data
**Tugas:** UTS : Menjalankan PostgreSQL & pgAdmin4 menggunakan teknik kontainerisasi (Docker Compose)

---

## 📘 Deskripsi Proyek
Proyek ini bertujuan untuk menjalankan dua service utama menggunakan **Docker Compose**:
1. **PostgreSQL (Database Server)**
2. **pgAdmin4 (Database Management Tool)**  

Selain itu, proyek ini juga mencakup:
- Pembuatan **schema SALAM** dan tabel **mahasiswas** dengan constraint (PRIMARY KEY, UNIQUE, CHECK)
- Pembuatan **tiga role pengguna** dengan hak akses berbeda:
  - `backend_dev` → CRUD semua tabel  
  - `bi_dev` → hanya SELECT semua tabel/view  
  - `data_engineer` → CREATE, MODIFY, DROP semua objek, CRUD semua tabel  
- Dokumentasi bukti koneksi dari **pgAdmin4 (internal)** dan **DBeaver (eksternal)**

---

## ⚙️ Konfigurasi Service

### 🐘 PostgreSQL
- **Container Name:** `postgres_muhammad_irsyad_mustaqim`  
- **Image:** `postgres:15`  
- **Port Eksternal:** `22050`  
- **Username:** `postgres`  
- **Password:** `ifunggul` *(disembunyikan di file `.env`)*  
- **Volume Data:** `./postgres_data:/var/lib/postgresql/data`  
- **Inisialisasi SQL:** `./db/init/`  

### 🖥️ PGAdmin4
- **Container Name:** `pgadmin_muhammad_irsyad_mustaqim`  
- **Image:** `dpage/pgadmin4`  
- **Port Eksternal:** `44050`  
- **Login PGAdmin:** dari file `.env`  

---