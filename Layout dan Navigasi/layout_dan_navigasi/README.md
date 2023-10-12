# Layout dan Navigasi

Tujuan Praktikum:
* menerapkan jenis-jenis layout
* menerapkan navigasi
* menerapkan routing

## Praktikum 1: Membangun Layout di Flutter
**Langkah 1: Buat Project Baru**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/bc964b8b-9f05-4329-8f25-9e3aec63f1d1)

**Langkah 2: Buka file lib/main.dart**

Buka file main.dart lalu mengganti kode dengan mengisi nama dan NIM di text title.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1564d3c5-73ec-4be8-bc13-6d676c335365)


**Langkah 3: Identifikasi layout diagram**

Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:
* Identifikasi baris dan kolom.
* Apakah tata letaknya menyertakan kisi-kisi (grid)?
* Apakah ada elemen yang tumpang tindih?
* Apakah UI memerlukan tab?
* Perhatikan area yang memerlukan alignment, padding, atau borders.

**Langkah 4: Implementasi title row**
Membuat kolom bagian kiri pada judul. menambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:
![image](https://github.com/evi03/PemogramanMobile/assets/95482289/11322cd5-e42e-404b-8815-d7121312377b)

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/8eb332dc-3234-40e4-b221-6c87b618fd3a)

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/a82b2232-1201-49a1-a818-c82313c253a6)

**Output:**
![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1ff05f35-7b5e-4321-8e11-62dc48cd055e)

## Praktikum 2: Implementasi button row
**Langkah 1: Buat method Column _buildButtonColumn**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/a593cf26-e9a9-4f0d-b07f-eef649ea9366)

**Langkah 2: Buat widget buttonSection**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/539bce72-22ad-4b17-97ea-0b4df2a3e3d8)


**Langkah 3: Tambah button section ke body**
![image](https://github.com/evi03/PemogramanMobile/assets/95482289/a18e9bd4-a10c-4efc-8511-3a7b43e99e16)

**Output:**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/9f7ff491-6377-427e-a2bc-a7b7277aa0cf)


## Praktikum 3: Implementasi text section

**Langkah 1: Buat widget textSection**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/ef4ae636-40c3-4f13-b99e-dc8e760ab5a7)

**Langkah 2: Tambahkan variabel text section ke body**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/c997dc84-8d42-4029-bfe6-59f43ae3b1da)

**Output:**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/585d53da-d6bd-44c6-89a3-85a950056f50)

## Praktikum 4: Implementasi image section

**Langkah 1: Siapkan aset gambar**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/607a56c3-275e-4fcf-8050-148a5e8f1307)

**Langkah 2: Tambahkan gambar ke body**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/639b7d14-2f0e-44a0-a598-0171cbd484c0)

**Langkah 3: Terakhir, ubah menjadi ListView**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/e7a21c33-23f6-4219-a2bd-0a61c7bf34ce)

**Output:**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/9f34a7b8-b102-4a8e-b6ee-1bfcf18eb4ee)
