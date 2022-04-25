import 'package:flutter/material.dart';
import 'package:ipapico_flutter/ipapico_flutter.dart';

class IpApiDataPreview extends StatelessWidget {
  const IpApiDataPreview({
    Key? key,
    required this.data,
  }) : super(key: key);

  final IpApiResponse data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'IPAPI.CO Wrapper for Flutter',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            'IP: ${data.ip}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'VERSION: ${data.version}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'CITY: ${data.city}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'REGION: ${data.region}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'REGION CODE: ${data.regionCode}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY: ${data.country}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY NAME: ${data.countryName}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY CODE: ${data.countryCode}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY CODE ISO3: ${data.countryCodeIso3}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY CAPITAL: ${data.countryCapital}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY TLD: ${data.countryTld}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'CONTINENT CODE: ${data.continentCode}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'IN EU: ${data.inEu}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'POSTAL: ${data.postal}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'LATITUDE: ${data.latitude}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'LONGITUDE: ${data.longitude}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'TIMEZONE: ${data.timezone}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'UTC OFFSET: ${data.utcOffset}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY CALLING CODE: ${data.countryCallingCode}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'CURRENCY: ${data.currency}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'CURRENCY NAME: ${data.currencyName}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'LANGUAGES: ${data.languages}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY AREA: ${data.countryArea}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'COUNTRY POPULATION: ${data.countryPopulation}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'ASN: ${data.asn}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Text(
            'ORG: ${data.org}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
