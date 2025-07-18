import 'package:jetpow/core/models/kyc.dart';

class User {
  int? id;
  String? strigaUserId;
  int? kycTier;
  String? firstName;
  String? lastName;
  String? sourceOfIncome;
  String? email;
  String? phoneNumber;
  String? dateOfBirth;
  String? accountStatus;
  String? loginType;
  String? kycStatus;
  String? imageUrl;
  bool? fingerprintEnabled;
  bool? isPhoneNumberVerified;
  bool? isEmailVerified;
  bool? tPinEnabled;
  String? tPin;
  Address? address;
  KYCRequest? kyc;

  User({
    this.id,
    this.strigaUserId,
    this.kycTier,
    this.firstName,
    this.lastName,
    this.sourceOfIncome,
    this.email,
    this.phoneNumber,
    this.dateOfBirth,
    this.accountStatus,
    this.loginType,
    this.kycStatus,
    this.imageUrl,
    this.fingerprintEnabled,
    this.isPhoneNumberVerified,
    this.isEmailVerified,
    this.tPinEnabled,
    this.tPin,
    this.address,
    this.kyc,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      strigaUserId: json["striga_user_id"],
      kycTier: json["kyc_tier"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      sourceOfIncome: json["source_of_income"],
      email: json["email"],
      phoneNumber: json["phone_number"],
      dateOfBirth: json["date_of_birth"],
      accountStatus: json["account_status"],
      loginType: json["login_type"],
      kycStatus: json["kyc_status"],
      imageUrl: json["image_url"],
      fingerprintEnabled: json["fingerprint_enabled"] ?? false,
      isPhoneNumberVerified: json["is_phone_number_verified"] ?? false,
      isEmailVerified: json["is_email_verified"] ?? false,
      tPinEnabled: json["t_pin_enabled"] ?? false,
      tPin: json["t_pin"],
      address:
          json["address"] != null ? Address.fromJson(json["address"]) : null,
      kyc:
          json["user_kyc"] != null
              ? KYCRequest.fromJson(json["user_kyc"])
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "striga_user_id": strigaUserId,
      "first_name": firstName,
      "last_name": lastName,
      "dob": dateOfBirth,
      "image_url": imageUrl,
    };
  }
}

class Address {
  String? addressLine1;
  String? addressLine2;
  String? city;
  String? postalCode;
  String? state;
  String? country;
  int? userId;
  String? strigaId;

  Address({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.postalCode,
    this.state,
    this.country,
    this.userId,
    this.strigaId,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      addressLine1: json['address_line_1'],
      addressLine2: json['address_line_2'],
      city: json['city'],
      postalCode: json['postal_code'],
      state: json['state'],
      country: json['country'],
      userId: json['user_id'],
      strigaId: json['striga_user_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address_line_1': addressLine1,
      'address_line_2': addressLine2,
      'city': city,
      'postal_code': postalCode,
      'state': state,
      'country': country,
      'user_id': userId,
      'striga_user_id': strigaId,
    };
  }
}

class SignupBody {
  String? firstName;
  String? lastName;
  String? email;
  String? countryCode;
  String? number;

  SignupBody({
    this.firstName,
    this.lastName,
    this.email,
    this.countryCode,
    this.number,
  });

  factory SignupBody.fromJson(Map<String, dynamic> json) {
    return SignupBody(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      countryCode: json['conutry_code'],
      number: json['number'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'conutry_code': countryCode,
      'number': number,
    };
  }
}

class LoginBody {
  String? countryCode;
  String? number;

  LoginBody({this.countryCode, this.number});

  factory LoginBody.fromJson(Map<String, dynamic> json) {
    return LoginBody(countryCode: json['country_code'], number: json['number']);
  }

  Map<String, dynamic> toJson() {
    return {'countery_code': countryCode, 'number': number};
  }
}
