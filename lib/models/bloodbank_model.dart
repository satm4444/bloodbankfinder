class BloodBank {
  final int id;
  final String bloodBankName;
  final int location;
  final int phone;
  final String bloodGroup;
  final String imageUrl;

  BloodBank({
    required this.id,
    required this.bloodBankName,
    required this.location,
    required this.phone,
    required this.bloodGroup,
    required this.imageUrl,
  });

  factory BloodBank.fromJson(Map<String, dynamic> json) => BloodBank(
        id: json['id'],
        bloodBankName: json['bloodBankName'],
        location: json['location'],
        phone: json['phone'],
        bloodGroup: json['bloodGroup'],
        imageUrl: json['imageUrl'],
      );
}
