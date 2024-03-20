import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    String license = await rootBundle.loadString('assets/OFL.txt');
    yield LicenseEntryWithLineBreaks(['add_license_for_sample'], license);
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Sample());
  }
}

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showLicensePage(context: context),
          child: const Text('showLicensePage'),
        ),
      ),
    );
  }
}
