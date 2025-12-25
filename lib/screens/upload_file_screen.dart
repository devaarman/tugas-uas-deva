import 'package:flutter/material.dart';

class UploadFileScreen extends StatelessWidget {
  const UploadFileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63), // Brown
        title: const Text(
          'Upload File',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Info Text
            const Text(
              'Maksimum File 5MB, Maksimum Jumlah File 20',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            // Drop Area
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                  style: BorderStyle.solid, // For dashed, might need custom, but solid for now
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud_upload,
                    size: 48,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'File yang akan di upload akan tampil di sini',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Buttons
            ElevatedButton(
              onPressed: () {
                // TODO: Implement file selection
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300], // Light gray
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                minimumSize: const Size(double.infinity, 48),
              ),
              child: const Text(
                'Pilih File',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement save
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300], // Light gray
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                minimumSize: const Size(double.infinity, 48),
              ),
              child: const Text(
                'Simpan',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}