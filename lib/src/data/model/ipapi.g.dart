// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IpApiResponse _$IpApiResponseFromJson(Map<String, dynamic> json) =>
    IpApiResponse(
      json['ip'] as String,
      json['version'] as String,
      json['city'] as String,
      json['region'] as String,
      json['region_code'] as String,
      json['country'] as String,
      json['country_name'] as String,
      json['country_code'] as String,
      json['country_code_iso3'] as String,
      json['country_capital'] as String,
      json['country_tld'] as String,
      json['continent_code'] as String,
      json['in_eu'] as bool,
      json['postal'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      json['timezone'] as String,
      json['utc_offset'] as String,
      json['country_calling_code'] as String,
      json['currency'] as String,
      json['currency_name'] as String,
      json['languages'] as String,
      (json['country_area'] as num).toDouble(),
      json['country_population'] as int,
      json['asn'] as String,
      json['org'] as String,
    );

Map<String, dynamic> _$IpApiResponseToJson(IpApiResponse instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'version': instance.version,
      'city': instance.city,
      'region': instance.region,
      'region_code': instance.regionCode,
      'country': instance.country,
      'country_name': instance.countryName,
      'country_code': instance.countryCode,
      'country_code_iso3': instance.countryCodeIso3,
      'country_capital': instance.countryCapital,
      'country_tld': instance.countryTld,
      'continent_code': instance.continentCode,
      'in_eu': instance.inEu,
      'postal': instance.postal,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'utc_offset': instance.utcOffset,
      'country_calling_code': instance.countryCallingCode,
      'currency': instance.currency,
      'currency_name': instance.currencyName,
      'languages': instance.languages,
      'country_area': instance.countryArea,
      'country_population': instance.countryPopulation,
      'asn': instance.asn,
      'org': instance.org,
    };
