class KYCRequest {
  int? id;
  int? userId;
  String? reason;
  String? token;
  String? strigaUserId;
  String? verificationLink;
  String? status;
  int? kycTier;

  KYCRequest({
    this.id,
    this.userId,
    this.reason,
    this.token,
    this.strigaUserId,
    this.verificationLink,
    this.status,
    this.kycTier,
  });

  KYCRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['fk_user_id'];
    reason = json['reason'];
    token = json['token'];
    strigaUserId = json['striga_user_id'];
    verificationLink = json['verification_link'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {'striga_user_id': strigaUserId, "tier": kycTier};
  }

  Map<String, dynamic> updateKYC() {
    return {'user_id': userId, "reason": reason, "status": status};
  }
}
