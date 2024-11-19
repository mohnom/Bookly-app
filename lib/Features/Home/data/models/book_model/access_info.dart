import 'package:equatable/equatable.dart';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromBookss(Map<String, dynamic> json) => AccessInfo(
        country: json['country'] as String?,
        viewability: json['viewability'] as String?,
        embeddable: json['embeddable'] as bool?,
        publicDomain: json['publicDomain'] as bool?,
        textToSpeechPermission: json['textToSpeechPermission'] as String?,
        epub: json['epub'] == null
            ? null
            : Epub.fromBookss(json['epub'] as Map<String, dynamic>),
        pdf: json['pdf'] == null
            ? null
            : Pdf.fromBookss(json['pdf'] as Map<String, dynamic>),
        webReaderLink: json['webReaderLink'] as String?,
        accessViewStatus: json['accessViewStatus'] as String?,
        quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
      );

  Map<String, dynamic> toBookss() => {
        'country': country,
        'viewability': viewability,
        'embeddable': embeddable,
        'publicDomain': publicDomain,
        'textToSpeechPermission': textToSpeechPermission,
        'epub': epub?.toBookss(),
        'pdf': pdf?.toBookss(),
        'webReaderLink': webReaderLink,
        'accessViewStatus': accessViewStatus,
        'quoteSharingAllowed': quoteSharingAllowed,
      };

  @override
  List<Object?> get props {
    return [
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed,
    ];
  }
}
