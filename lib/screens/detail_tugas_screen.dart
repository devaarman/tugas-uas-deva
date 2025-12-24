import 'package:flutter/material.dart';

class DetailTugasScreen extends StatelessWidget {
  const DetailTugasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63), // Brown
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Tugas 01 - UID Android Mobile Game',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Instructions Section
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Instruksi Tugas',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D4037),
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildInstructionItem(1, 'Buat proyek baru di Android Studio dengan template Empty Activity.'),
                    _buildInstructionItem(2, 'Tambahkan dependensi untuk UI components seperti RecyclerView dan CardView di build.gradle.'),
                    _buildInstructionItem(3, 'Desain layout utama untuk game menggunakan XML, termasuk tombol dan area permainan.'),
                    _buildInstructionItem(4, 'Implementasi logika game sederhana, seperti tic-tac-toe atau puzzle.'),
                    _buildInstructionItem(5, 'Tambahkan fitur scoring dan penyimpanan skor menggunakan SharedPreferences.'),
                    _buildInstructionItem(6, 'Test aplikasi di emulator dan perangkat fisik, lalu debug jika ada error.'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Status Tugas Section
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Status Tugas',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D4037),
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildStatusItem('Status', 'Sudah Mengirim untuk dinilai'),
                    _buildStatusItem('Status Nilai', 'Belum Dinilai'),
                    _buildStatusItem('Batas Tanggal', '31 Desember 2025'),
                    _buildStatusItem('Sisa Waktu', '0 hari'),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.insert_drive_file, color: Colors.grey),
                        const SizedBox(width: 8),
                        const Text(
                          'tugas_mobile.pdf',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Action Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement add task functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300], // Light gray
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: const Text(
                  'Tambahkan Tugas',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionItem(int number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$number. ',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}