# User Requirements

## Overview

Aplikasi ini dirancang untuk menganalisis pengelolaan akademik di lingkungan universitas. Pengguna utama aplikasi ini adalah administrator, profesor, dan mahasiswa. Berikut adalah kebutuhan utama dari masing-masing pengguna.

## Administrator

Administrator bertanggung jawab untuk mengelola sistem secara keseluruhan.

- **Login dan Keamanan:**

  - Administrator harus dapat login dengan akun khusus.
  - Sistem harus menyediakan mekanisme keamanan yang kuat, termasuk manajemen hak akses.

- **Manajemen Dosen:**

  - Menambahkan, menghapus, dan mengubah informasi dosen.
  - Mengelola keahlian dan tugas dosen.

- **Manajemen Mahasiswa:**

  - Menambahkan, menghapus, dan mengubah informasi mahasiswa.
  - Mengelola status mahasiswa dan informasi pribadi.

- **Manajemen Matakuliah:**

  - Menambahkan dan mengelola daftar matakuliah.
  - Mengatur prasyarat dan batasan kursi untuk setiap kelas.

- **Jadwal Kuliah:**
  - Membuat dan mengelola jadwal kuliah.
  - Memastikan tidak ada tumpang tindih dalam jadwal.

## Profesor

Profesor menggunakan aplikasi untuk manajemen kursus dan melacak hasil studi mahasiswa.

- **Login dan Keamanan:**

  - Profesor harus dapat login dengan akun khususnya.
  - Hak akses harus memungkinkan akses ke fungsi manajemen kursus dan hasil studi.

- **Manajemen Kursus:**

  - Menambahkan dan mengelola informasi kursus.
  - Mengatur materi, tugas, dan ujian.

- **Manajemen Hasil Studi:**
  - Menginput dan melihat hasil studi mahasiswa.
  - Memberikan umpan balik kepada mahasiswa.

## Mahasiswa

Mahasiswa menggunakan aplikasi untuk mengakses jadwal kuliah, hasil studi, dan merencanakan studi.

- **Login dan Keamanan:**

  - Mahasiswa harus dapat login dengan akun khususnya.
  - Hak akses harus memungkinkan akses ke informasi pribadi dan akademik.

- **Melihat Jadwal Kuliah:**

  - Melihat jadwal kuliah untuk setiap semester.
  - Melihat detail ruangan dan waktu.

- **Melihat Hasil Studi:**

  - Melihat hasil studi semester sebelumnya.
  - Melihat nilai dan catatan dosen.

- **Merencanakan Studi:**
  - Merencanakan kursus untuk semester berikutnya.
  - Memeriksa prasyarat kursus.

## Diagram Alur `Admin`

```mermaid

graph TD;
  style A fill:#4CAF50,stroke:#ffffff,stroke-width:2px;
  style B fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style C fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style D fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style E fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style F fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style G fill:#F44336,stroke:#ffffff,stroke-width:2px;

  A[Admin] -->|Login| B[Admin Dashboard]
  B -->|Manage Users| C[User Management]
  C -->|Add User| C1[Add User]
  C -->|Edit User| C2[Edit User]
  C -->|Delete User| C3[Delete User]
  B -->|Manage Courses| D[Courses]
  D -->|Add Course| D1[Add Course]
  D -->|Edit Course| D2[Edit Course]
  D -->|Delete Course| D3[Delete Course]
  B -->|Manage Schedules| E[Schedules]
  E -->|Add Schedule| E1[Add Schedule]
  E -->|Edit Schedule| E2[Edit Schedule]
  E -->|Delete Schedule| E3[Delete Schedule]
  B -->|Manage Results| F[Results]
  F -->|Add Result| F1[Add Result]
  F -->|Edit Result| F2[Edit Result]
  F -->|Delete Result| F3[Delete Result]
  A -->|Logout| G[Login Page]

  style A fill:#4CAF50,stroke:#ffffff,stroke-width:2px;
  style B fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style C fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style D fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style E fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style F fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style G fill:#F44336,stroke:#ffffff,stroke-width:2px;


```

## Diagram Alur `Dosen`

```mermaid

graph TD;
  style A fill:#4CAF50,stroke:#ffffff,stroke-width:2px;
  style B fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style D fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style E fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style G fill:#F44336,stroke:#ffffff,stroke-width:2px;

  A[Dosen] -->|Login| B[Dosen Dashboard]
  B -->|View Courses| D[Courses]
  D -->|View Schedule| E[Schedules]
  E -->|Manage Results| F[Results]
  A -->|Logout| G[Login Page]

  style A fill:#4CAF50,stroke:#ffffff,stroke-width:2px;
  style B fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style D fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style E fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style F fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style G fill:#F44336,stroke:#ffffff,stroke-width:2px;

```

## Diagram Alur `Mahasiswa`

```mermaid

graph TD;
  style A fill:#4CAF50,stroke:#ffffff,stroke-width:2px;
  style B fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style D fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style E fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style G fill:#F44336,stroke:#ffffff,stroke-width:2px;

  A[Mahasiswa] -->|Login| B[Mahasiswa Dashboard]
  B -->|View Courses| D[Courses]
  D -->|View Schedule| E[Schedules]
  E -->|View Results| F[Results]
  A -->|Logout| G[Login Page]

  style A fill:#4CAF50,stroke:#ffffff,stroke-width:2px;
  style B fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style D fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style E fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style F fill:#2196F3,stroke:#ffffff,stroke-width:2px;
  style G fill:#F44336,stroke:#ffffff,stroke-width:2px;


```
