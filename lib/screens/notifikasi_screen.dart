import 'package:flutter/material.dart';
import '../models/notification_model.dart';

class NotifikasiScreen extends StatelessWidget {
  const NotifikasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample notification data
    final List<NotificationModel> notifications = [
      const NotificationModel(
        icon: Icons.assignment,
        description: 'Anda telah mengirimkan pengajuan tugas untuk Pengumpulan Laporan Akhir Assessment 3 (Tugas Besar)',
        time: '3 Hari 9 Jam Yang Lalu',
      ),
      const NotificationModel(
        icon: Icons.quiz,
        description: 'Anda telah menyelesaikan kuis Assessment 2 dengan nilai 85',
        time: '1 Hari 5 Jam Yang Lalu',
      ),
      const NotificationModel(
        icon: Icons.assignment,
        description: 'Pengajuan tugas untuk Laporan Praktikum telah diterima',
        time: '5 Jam Yang Lalu',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5D4037), Color(0xFFFFF8E1)], // Brown gradient
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Notifikasi',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    notification.icon,
                    size: 40.0,
                    color: Colors.black54,
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notification.description,
                          style: const TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          notification.time,
                          style: const TextStyle(
                            fontSize: 11.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
      ),
    );
  }
}