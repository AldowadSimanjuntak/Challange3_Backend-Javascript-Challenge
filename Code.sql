-- Membuat database
CREATE DATABASE "Basic-Bangking-System";

-- Koneksi dengan database
\c Basic-Banking-System

-- MEMBUAT TABLE :
-- Tabel Nasabah
CREATE TABLE Nasabah (
    ID_Nasabah INT PRIMARY KEY,
    Nama_Nasabah VARCHAR(255),
    Alamat_Nasabah VARCHAR(255),
    Nomor_Telepon VARCHAR(15)
);

-- Tabel Akun
CREATE TABLE Akun (
    ID_Akun INT PRIMARY KEY,
    Jenis_Akun VARCHAR(50),
    Saldo_Akun DECIMAL(10, 2),
    Tanggal_Dibuka DATE,
    ID_Nasabah INT,
    FOREIGN KEY (ID_Nasabah) REFERENCES Nasabah(ID_Nasabah)
);

-- Tabel Transaksi
CREATE TABLE Transaksi (
    ID_Transaksi INT PRIMARY KEY,
    Jenis_Transaksi VARCHAR(50),
    Jumlah_Transaksi DECIMAL(10, 2),
    Tanggal_Transaksi DATE,
    ID_Akun INT,
    FOREIGN KEY (ID_Akun) REFERENCES Akun(ID_Akun)
);


-- Insert data ke dalam tabel Nasabah
INSERT INTO Nasabah (ID_Nasabah, Nama_Nasabah, Alamat_Nasabah, Nomor_Telepon)
VALUES
    (1, 'John Doe', 'Medan', '123-456-7890'),
    (2, 'Jane Smith', 'Jakarta', '456-789-0123'),
    (3, 'Alice Johnson', 'Surabaya', '789-012-3456'),
    (4, 'Bob Brown', 'Padang', '987-654-3210'),
    (5, 'Eve Wilson', 'Aceh', '234-567-8901'),
    (6, 'Charlie Davis', 'Bandung', '432-109-8765'),
    (7, 'Grace Miller', 'Siantar', '876-543-2109'),
    (8, 'Frank Moore', 'Pontianak', '543-210-9876'),
    (9, 'Sophia Lee', 'Jayapura', '654-321-0987'),
    (10, 'Oliver Anderson', 'Bengkulu', '765-432-1098');

-- Memeriksa data dalam tabel Nasabah
SELECT * FROM Nasabah;

-- Insert data ke dalam tabel Akun
INSERT INTO Akun (ID_Akun, Jenis_Akun, Saldo_Akun, Tanggal_Dibuka, ID_Nasabah)
VALUES
    (1, 'Tabungan', 1000.00, '2023-10-17', 1),
    (2, 'Deposito', 5000.00, '2023-10-18', 2),
    (3, 'Tabungan', 2000.00, '2023-10-19', 3),
    (4, 'Deposito', 7000.00, '2023-10-20', 4),
    (5, 'Tabungan', 3000.00, '2023-10-21', 5),
    (6, 'Deposito', 6000.00, '2023-10-22', 6),
    (7, 'Tabungan', 4000.00, '2023-10-23', 7),
    (8, 'Deposito', 8000.00, '2023-10-24', 8),
    (9, 'Tabungan', 5000.00, '2023-10-25', 9),
    (10, 'Deposito', 9000.00, '2023-10-26', 10);

-- Memeriksa data dalam tabel Akun
SELECT * FROM Akun;


-- Insert data ke dalam tabel Transaksi
INSERT INTO Transaksi (ID_Transaksi, Jenis_Transaksi, Jumlah_Transaksi, Tanggal_Transaksi, ID_Akun)
VALUES
    (1, 'Debit', 500.00, '2023-10-17', 1),
    (2, 'Kredit', 200.00, '2023-10-18', 1),
    (3, 'Debit', 1000.00, '2023-10-19', 1),
    (4, 'Kredit', 300.00, '2023-10-20', 2),
    (5, 'Debit', 700.00, '2023-10-21', 2),
    (6, 'Kredit', 400.00, '2023-10-22', 2),
    (7, 'Debit', 1500.00, '2023-10-23', 3),
    (8, 'Kredit', 800.00, '2023-10-24', 3),
    (9, 'Debit', 300.00, '2023-10-25', 3),
    (10, 'Kredit', 200.00, '2023-10-26', 4),
    (11, 'Debit', 600.00, '2023-10-27', 4),
    (12, 'Kredit', 300.00, '2023-10-28', 4),
    (13, 'Debit', 1000.00, '2023-10-29', 5),
    (14, 'Kredit', 700.00, '2023-10-30', 5),
    (15, 'Debit', 400.00, '2023-10-31', 5),
    (16, 'Kredit', 600.00, '2023-11-01', 6),
    (17, 'Debit', 900.00, '2023-11-02', 6),
    (18, 'Kredit', 300.00, '2023-11-03', 6),
    (19, 'Debit', 1500.00, '2023-11-04', 7),
    (20, 'Kredit', 800.00, '2023-11-05', 7);

-- Memeriksa data dalam tabel Transaksi
SELECT * FROM Transaksi;

-- OPERASI Create ,Read,Update, Delete :
-- Insert data baru ke dalam tabel Nasabah
INSERT INTO Nasabah (ID_Nasabah, Nama_Nasabah, Alamat_Nasabah, Nomor_Telepon)
VALUES
    (11, 'Sarah Johnson', 'Semarang', '555-555-5555');

-- Membaca data dari tabel Nasabah
SELECT * FROM Nasabah;

-- Mengubah alamat nasabah dengan ID_Nasabah 11
UPDATE Nasabah
SET Alamat_Nasabah = 'Yogyakarta'
WHERE ID_Nasabah = 11;

-- Menghapus data transaksi dengan ID_Transaksi antara 15 dan 20
DELETE FROM Transaksi
WHERE ID_Transaksi BETWEEN 15 AND 20;