

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaveToFile extends StatefulWidget {
  const SaveToFile({Key? key}) : super(key: key);

  @override
  State<SaveToFile> createState() => _SaveToFileState();
}

class _SaveToFileState extends State<SaveToFile> with SingleTickerProviderStateMixin {
  late final TabController tabController =
  TabController(length: 3, vsync: this, initialIndex: 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter file downloader example'),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            //SettingsScreen(),
            //SingleDownloadScreen(),
            //MultipleDownloads(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: const [
            Tab(icon: Icon(Icons.settings), text: 'Settings'),
            Tab(icon: Icon(Icons.download_rounded), text: 'Single download'),
            Tab(icon: Icon(Icons.cloud_download), text: 'Bulk download'),
          ],
          controller: tabController,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
        ),
      ),
    );
  }
}