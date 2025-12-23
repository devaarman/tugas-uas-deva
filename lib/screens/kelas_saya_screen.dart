import 'package:flutter/material.dart';
import 'tabs/materi_tab.dart';
import 'tabs/tugas_kuis_tab.dart';

class KelasSayaScreen extends StatefulWidget {
  const KelasSayaScreen({super.key});

  @override
  State<KelasSayaScreen> createState() => _KelasSayaScreenState();
}

class _KelasSayaScreenState extends State<KelasSayaScreen> {
  int _selectedIndex = 1; // Since this is Kelas Saya

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pop(context);
    }
    // Handle other navigations if needed
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF5D4037), // Dark brown
                  Color(0xFF8D6E63), // Brown
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: const Text(
            'Kelas Saya',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Materi'),
              Tab(text: 'Tugas & Kuis'),
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
          ),
        ),
        body: const TabBarView(
          children: [
            MateriTab(),
            TugasKuisTab(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5D4037), // Dark brown
                Color(0xFF8D6E63), // Brown
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Kelas Saya',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifikasi',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xFFFFF8E1), // Cream
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.transparent,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}