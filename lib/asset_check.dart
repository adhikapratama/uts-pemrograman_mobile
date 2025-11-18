import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AssetCheckPage extends StatefulWidget {
  const AssetCheckPage({Key? key}) : super(key: key);
  @override
  _AssetCheckPageState createState() => _AssetCheckPageState();
}

class _AssetCheckPageState extends State<AssetCheckPage> {
  final paths = [
    'assets/images/keyboard/kb1.jpeg',
    'assets/images/mouse/mouse3.jpeg',
    'assets/images/monitor/monitor1.jpeg',
  ];
  final Map<String, String> res = {};

  @override
  void initState() {
    super.initState();
    _check();
  }

  Future<void> _check() async {
    for (var p in paths) {
      try {
        await rootBundle.load(p);
        res[p] = 'FOUND';
      } catch (e) {
        res[p] = 'MISSING: ${e.runtimeType}';
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asset check')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: paths
            .map(
              (p) => ListTile(
                title: Text(p),
                subtitle: Text(res[p] ?? 'checking...'),
              ),
            )
            .toList(),
      ),
    );
  }
}
