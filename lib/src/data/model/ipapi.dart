import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ipapi.g.dart';

@JsonSerializable()
class IpApiResponse extends Equatable {
  final String? ip;
  final String? version;
  final String? city;
  final String? region;
  @JsonKey(name: 'region_code')
  final String? regionCode;
  final String? country;
  @JsonKey(name: 'country_name')
  final String? countryName;
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @JsonKey(name: 'country_code_iso3')
  final String? countryCodeIso3;
  @JsonKey(name: 'country_capital')
  final String? countryCapital;
  @JsonKey(name: 'country_tld')
  final String? countryTld;
  @JsonKey(name: 'continent_code')
  final String? continentCode;
  @JsonKey(name: 'in_eu')
  final bool? inEu;
  final String? postal;
  final double? latitude;
  final double? longitude;
  final String? timezone;
  @JsonKey(name: 'utc_offset')
  final String? utcOffset;
  @JsonKey(name: 'country_calling_code')
  final String? countryCallingCode;
  final String? currency;
  @JsonKey(name: 'currency_name')
  final String? currencyName;
  final String? languages;
  @JsonKey(name: 'country_area')
  final double? countryArea;
  @JsonKey(name: 'country_population')
  final int? countryPopulation;
  final String? asn;
  final String? org;

  const IpApiResponse({
    this.ip,
    this.version,
    this.city,
    this.region,
    this.regionCode,
    this.country,
    this.countryName,
    this.countryCode,
    this.countryCodeIso3,
    this.countryCapital,
    this.countryTld,
    this.continentCode,
    this.inEu,
    this.postal,
    this.latitude,
    this.longitude,
    this.timezone,
    this.utcOffset,
    this.countryCallingCode,
    this.currency,
    this.currencyName,
    this.languages,
    this.countryArea,
    this.countryPopulation,
    this.asn,
    this.org,
  });

  factory IpApiResponse.fromJson(Map<String, dynamic> json) =>
      _$IpApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$IpApiResponseToJson(this);

  @override
  List<Object?> get props => [
        ip,
        version,
        city,
        region,
        regionCode,
        country,
        countryName,
        countryCode,
        countryCodeIso3,
        countryCapital,
        countryTld,
        continentCode,
        inEu,
        postal,
        latitude,
        longitude,
        timezone,
        utcOffset,
        countryCallingCode,
        currency,
        currencyName,
        languages,
        countryArea,
        countryPopulation,
        asn,
        org,
      ];

  IpApiResponse copyWith({
    String? ip,
    String? version,
    String? city,
    String? region,
    String? regionCode,
    String? country,
    String? countryName,
    String? countryCode,
    String? countryCodeIso3,
    String? countryCapital,
    String? countryTld,
    String? continentCode,
    bool? inEu,
    String? postal,
    double? latitude,
    double? longitude,
    String? timezone,
    String? utcOffset,
    String? countryCallingCode,
    String? currency,
    String? currencyName,
    String? languages,
    double? countryArea,
    int? countryPopulation,
    String? asn,
    String? org,
  }) {
    return IpApiResponse(
      ip: ip ?? this.ip,
      version: version ?? this.version,
      city: city ?? this.city,
      region: region ?? this.region,
      regionCode: regionCode ?? this.regionCode,
      country: country ?? this.country,
      countryName: countryName ?? this.countryName,
      countryCode: countryCode ?? this.countryCode,
      countryCodeIso3: countryCodeIso3 ?? this.countryCodeIso3,
      countryCapital: countryCapital ?? this.countryCapital,
      countryTld: countryTld ?? this.countryTld,
      continentCode: continentCode ?? this.continentCode,
      inEu: inEu ?? this.inEu,
      postal: postal ?? this.postal,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      timezone: timezone ?? this.timezone,
      utcOffset: utcOffset ?? this.utcOffset,
      countryCallingCode: countryCallingCode ?? this.countryCallingCode,
      currency: currency ?? this.currency,
      currencyName: currencyName ?? this.currencyName,
      languages: languages ?? this.languages,
      countryArea: countryArea ?? this.countryArea,
      countryPopulation: countryPopulation ?? this.countryPopulation,
      asn: asn ?? this.asn,
      org: org ?? this.org,
    );
  }

  @override
  String toString() {
    return 'IpApiResponse(ip: $ip, version: $version, city: $city, region: $region, regionCode: $regionCode, country: $country, countryName: $countryName, countryCode: $countryCode, countryCodeIso3: $countryCodeIso3, countryCapital: $countryCapital, countryTld: $countryTld, continentCode: $continentCode, inEu: $inEu, postal: $postal, latitude: $latitude, longitude: $longitude, timezone: $timezone, utcOffset: $utcOffset, countryCallingCode: $countryCallingCode, currency: $currency, currencyName: $currencyName, languages: $languages, countryArea: $countryArea, countryPopulation: $countryPopulation, asn: $asn, org: $org)';
  }
}
