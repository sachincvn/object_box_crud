import 'package:objectbox/objectbox.dart';
import '../../domain/entities/user.dart';

/// Gender enumeration
enum Gender {
  male,
  female,
  other,
  preferNotToSay,
}

extension GenderExtension on Gender {
  String get displayName {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
      case Gender.other:
        return 'Other';
      case Gender.preferNotToSay:
        return 'Prefer not to say';
    }
  }
}

/// Simple Address model
@Entity()
class Address {
  @Id()
  int id = 0;

  final String street;
  final String city;
  final String state;
  final String country;
  final String zipCode;

  Address({
    this.id = 0,
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.zipCode,
  });

  String get fullAddress => '$street, $city, $state $zipCode, $country';

  Address copyWith({
    int? id,
    String? street,
    String? city,
    String? state,
    String? country,
    String? zipCode,
  }) {
    return Address(
      id: id ?? this.id,
      street: street ?? this.street,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      zipCode: zipCode ?? this.zipCode,
    );
  }

  @override
  String toString() => fullAddress;
}

/// Simple UserModel with basic fields
@Entity()
class UserModel {
  @Id()
  int objectBoxId = 0;
  
  @Unique()
  final String id;
  
  // Basic information
  final String name;
  final String email;
  final String phone;
  
  // Gender
  final int genderIndex; // Gender enum index
  
  // Address relationship
  final ToOne<Address> address = ToOne<Address>();
  
  // Timestamps
  @Property(type: PropertyType.date)
  final DateTime createdAt;
  
  @Property(type: PropertyType.date)
  final DateTime? updatedAt;

  UserModel({
    this.objectBoxId = 0,
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    this.genderIndex = 0, // Default to male
    required this.createdAt,
    this.updatedAt,
  });

  // ==================== Getters ====================
  
  /// Get gender enum from index
  Gender get gender => Gender.values[genderIndex];
  
  /// Get address or null
  Address? get userAddress => address.target;
  
  // ==================== Factory Methods ====================
  
  // Convert from domain entity
  factory UserModel.fromEntity(User user) {
    return UserModel(
      id: user.id,
      name: user.name,
      email: user.email,
      phone: user.phone,
      createdAt: user.createdAt,
      updatedAt: user.updatedAt,
    );
  }
  
  // Convert to domain entity
  User toEntity() {
    return User(
      id: id,
      name: name,
      email: email,
      phone: phone,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  // ==================== Utility Methods ====================
  
  /// Copy with method for creating modified instances
  UserModel copyWith({
    int? objectBoxId,
    String? id,
    String? name,
    String? email,
    String? phone,
    int? genderIndex,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserModel(
      objectBoxId: objectBoxId ?? this.objectBoxId,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      genderIndex: genderIndex ?? this.genderIndex,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
  
  /// Search functionality
  bool matchesSearchQuery(String query) {
    final lowercaseQuery = query.toLowerCase();
    return name.toLowerCase().contains(lowercaseQuery) || 
           email.toLowerCase().contains(lowercaseQuery) || 
           phone.toLowerCase().contains(lowercaseQuery);
  }
  
  /// Convert to string representation
  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, gender: ${gender.displayName})';
  }
}
