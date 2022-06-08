import 'dart:convert';

Wallet walletFromJson(String str) => Wallet.fromJson(json.decode(str));

String walletToJson(Wallet data) => json.encode(data.toJson());

class Wallet {
  Wallet({
    this.id,
    this.balance,
    this.createdAt,
    this.updateAt,
    this.deletedAt,
  });

  int? id;
  int? balance;
  DateTime? createdAt;
  DateTime? updateAt;
  DateTime? deletedAt;

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
    id: json["id"],
    balance: json["balance"],
    createdAt: json["createdAt"],
    updateAt: DateTime.parse(json["updateAt"]),
    deletedAt: json["deletedAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "balance": balance,
    "createdAt": createdAt.toString(),
    "updateAt": updateAt.toString(),
    "deletedAt": deletedAt.toString(),
  };

  @override
  String toString() {
    return 'id: $id balance: $balance, createdAt: ${createdAt.toString()}';
  }
}