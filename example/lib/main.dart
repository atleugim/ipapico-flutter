import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ipapico_flutter/ipapico_flutter.dart';
import 'package:test/src/widgets/ipapi_data_preview.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ipApiData = IpApiData();
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: FutureBuilder<IpApiResponse>(
          future: ipApiData.getIpApiData(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? IpApiDataPreview(data: snapshot.data!)
                : const Center(
                    child: CupertinoActivityIndicator(color: Colors.black),
                  );
          },
        ),
      ),
    );
  }
}
