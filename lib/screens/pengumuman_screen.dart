import 'package:flutter/material.dart';

class PengumumanScreen extends StatelessWidget {
  // Dummy data untuk pengumuman
  final List<Map<String, String>> announcements = [
    {
      'title': 'Maintenance Pra UAS Semester Genap 2020/2021',
      'info': 'By Admin Celoe - Rabu, 2 Juni 2021, 10:45'
    },
    {
      'title': 'Pengumuman Maintenance',
      'info': 'By Admin Celoe - Rabu, 2 Juni 2021, 10:45'
    },
    {
      'title': 'Maintenance Pra UAS Semester Ganjil 2020/2021',
      'info': 'By Admin Celoe - Rabu, 2 Juni 2021, 10:45'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengumuman'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: announcements.length,
          itemBuilder: (context, index) {
            final announcement = announcements[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.campaign, size: 40, color: Colors.grey),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          announcement['title']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          announcement['info']!,
                          style: TextStyle(
                            fontSize: 12,
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
      ),
    );
  }
}