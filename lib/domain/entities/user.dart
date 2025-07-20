import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String name;
  final String email;
  final String phone;
  final DateTime createdAt;
  final DateTime? updatedAt;

  // Helper methods
  String get displayName => name.isNotEmpty ? name : email;

  bool get isValid => id.isNotEmpty && name.isNotEmpty && email.isNotEmpty && phone.isNotEmpty;

  // Copy with method
  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [id, name, email, phone, createdAt, updatedAt];
}
