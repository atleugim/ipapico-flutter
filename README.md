# ipapico_flutter

![Pub Version](https://img.shields.io/pub/v/ipapico_flutter?color=light-green)

A [ipapi.co](https://ipapi.co/) wrapper for flutter, ipapi.co provides a REST API to find the location of an IP address, geolocation and other metadata. This is a utility package to get that information and use it in dart applications

## Example App

<img src="https://i.imgur.com/jC5adjQ.png" width="400" />

## Usage

```Dart
// Use the [IpApiData] singleton class
final ipApiData = IpApiData();

// The response is a [IpApiResponse] model
final response = await ipApiData.getIpApiData();
```

## Usage with Flutter Apps

```Dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Use the [IpApiData] singleton class
    final ipApiData = IpApiData();

    return MaterialApp(
      title: 'ipapico_flutter',
      home: Scaffold(
        body: FutureBuilder<IpApiResponse?>(
          future: ipApiData.getIpApiData(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return IpApiDataPreview(data: snapshot.data!);
            }

            if (snapshot.hasError ||
                (snapshot.hasData && snapshot.data == null)) {
              final error = snapshot.error?.toString() ?? 'Unknown error';
              return Center(
                child: Text('Error: $error'),
              );
            }

            return const Center(
              child: CupertinoActivityIndicator(color: Colors.black),
            );
          },
        ),
      ),
    );
  }
}
```

### The IpApiResponse Model

Official documentation can be found [here](https://ipapi.co/api/)

```Dart
final String? ip;
final String? version;
final String? city;
final String? region;
final String? regionCode;
final String? country;
final String? countryName;
final String? countryCode;
final String? countryCodeIso3;
final String? countryCapital;
final String? countryTld;
final double? countryArea;
final int? countryPopulation;
final String? continentCode;
final bool? inEu;
final String? postal;
final double? latitude;
final double? longitude;
final String? timezone;
final String? utcOffset;
final String? countryCallingCode;
final String? currency;
final String? currencyName;
final String? languages;
final String? asn;
final String? org;
```

### Api Limitations

The free plan provides ~1000 requests per day / ~30000 month

More info [here](https://ipapi.co/#pricing)
