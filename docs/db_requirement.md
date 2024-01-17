# Analisis sistem informasi akademik (di bidang programming) dengan metode agile

# Database Requirements

## Overview

Skrip SQL ini mewakili struktur dan data database bernama `db_kuliah_asia_siakad`. Basis data dirancang untuk mengelola informasi terkait mata kuliah universitas, mahasiswa, dosen, jadwal, dan hasil studi.

## Environment Details

- **Database Management System:** MariaDB
- **Version:** 10.4.28
- **PHP Version:** 8.0.28

## Tables

### Table: `user`

- Structure:
  - `user_id` (Primary Key, Unique, Integer, Auto Increment)
  - `username` (String, 255 characters)
  - `password` (String, 255 characters) - Note: Passwords should be securely hashed and stored.
  - `role` (Enum: 'admin', 'professor', 'student')
- Example Data:
  - See SQL script

### Table: `dosen`

- Structure:
  - `nid` (Primary Key, Unique, Integer, 7 digits)
  - `nama_dosen` (String, 255 characters)
  - `keahlian` (String, 255 characters)
- Example Data:
  - See SQL script

### Table: `dosen_matakuliah`

- Structure:
  - `id` (Primary Key, Integer, Auto Increment)
  - `nid` (Foreign Key to `dosen.nid`, Integer, 7 digits)
  - `kode_mk` (Foreign Key to `matakuliah.kode_mk`, Integer, 8 digits)
- Example Data:
  - See SQL script

### Table: `hasil_studi`

- Structure:
  - `id` (Primary Key, Integer, Auto Increment)
  - `nim` (Foreign Key to `mahasiswa.nim`, Integer, 8 digits)
  - `kode_mk` (Foreign Key to `matakuliah.kode_mk`, Integer, 8 digits)
  - `nilai` (Float, Default NULL)
- Example Data:
  - See SQL script

### Table: `jadwal_kelas`

- Structure:
  - `id` (Primary Key, Integer, Auto Increment)
  - `jadwal_id` (Foreign Key to `jadwal_kuliah.jadwal_id`, Integer, 5 digits)
  - `kelas` (Enum: 'B', 'C', 'D')
- Example Data:
  - See SQL script

### Table: `jadwal_kuliah`

- Structure:
  - `jadwal_id` (Primary Key, Unique, Integer, 5 digits)
  - `hari` (Enum: 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu')
  - `jam_mulai` (Time)
  - `jam_selesai` (Time)
- Example Data:
  - See SQL script

### Table: `jadwal_ruang`

- Structure:
  - `id` (Primary Key, Integer, Auto Increment)
  - `jadwal_id` (Foreign Key to `jadwal_kuliah.jadwal_id`, Integer, 5 digits)
  - `kode_ruang` (Integer, 3 digits)
- Example Data:
  - See SQL script

### Table: `mahasiswa`

- Structure:
  - `nama` (String, 255 characters, Should not contain numbers)
  - `nim` (Primary Key, Integer, 8 digits)
  - `jenis_kelamin` (Enum: 'laki-laki', 'perempuan')
  - `alamat` (String, 255 characters)
- Example Data:
  - See SQL script

### Table: `mahasiswa_matakuliah`

- Structure:
  - `id` (Primary Key, Integer, Auto Increment)
  - `nim` (Foreign Key to `mahasiswa.nim`, Integer, 8 digits)
  - `kode_mk` (Foreign Key to `matakuliah.kode_mk`, Integer, 8 digits)
- Example Data:
  - See SQL script

### Table: `matakuliah`

- Structure:
  - `kode_mk` (Primary Key, Unique, Integer, 8 digits)
  - `nama_mk` (String, 255 characters)
  - `sks` (Integer, 1 digit, Default NULL)
- Example Data:
  - See SQL script

### Table: `matakuliah_jadwal`

- Structure:
  - `id` (Primary Key, Integer, Auto Increment)
  - `kode_mk` (Foreign Key to `matakuliah.kode_mk`, Integer, 8 digits)
  - `jadwal_id` (Foreign Key to `jadwal_kuliah.jadwal_id`, Integer, 5 digits)
- Example Data:
  - See SQL script

### Table: `rencana_studi`

- Structure:
  - `id` (Primary Key, Integer, Auto Increment)
  - `nim` (Foreign Key to `mahasiswa.nim`, Integer, 8 digits)
  - `kode_mk` (Foreign Key to `matakuliah.kode_mk`, Integer, 8 digits)
  - `sks` (Integer, 1 digit, Default NULL)
  - `semester` (Integer, 1 digit, Not NULL)
- Example Data:
  - See SQL script

### Table: `ruang_kuliah`

- Structure:
  - `kode_ruang` (Primary Key, Unique, Integer, 3 digits)
  - `nama_ruang` (String, 100 characters)
  - `kapasitas` (Integer, 4 digits)
- Example Data:
  - See SQL script

## Indexes

- Lihat skrip SQL untuk indeks di setiap tabel.

## Foreign Key Constraints

- Lihat skrip SQL untuk batasan kunci asing di setiap tabel.

## Auto Increment

- Lihat skrip SQL untuk detail kenaikan otomatis pada setiap tabel.

## Notes

- Basis data dirancang untuk sistem manajemen kursus universitas.
- Setiap tabel memiliki batasan dan hubungan khusus untuk integritas data.
