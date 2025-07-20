import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/user_model.dart';
import '../../domain/entities/user.dart';
import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';
import '../../data/datasources/user_local_data_source.dart';
import '../../core/services/injection_container.dart';

class SimpleUserForm extends StatefulWidget {
  final User? user; // null for add, User for edit

  const SimpleUserForm({
    super.key,
    this.user,
  });

  @override
  State<SimpleUserForm> createState() => _SimpleUserFormState();
}

class _SimpleUserFormState extends State<SimpleUserForm> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late final TextEditingController _streetController;
  late final TextEditingController _cityController;
  late final TextEditingController _stateController;
  late final TextEditingController _countryController;
  late final TextEditingController _zipCodeController;

  // Selected gender
  Gender _selectedGender = Gender.male;

  // Loading state for form
  bool _isLoading = false;

  // Form state
  bool get isEditing => widget.user != null;

  @override
  void initState() {
    super.initState();

    // Initialize controllers
    _nameController = TextEditingController(text: widget.user?.name ?? '');
    _emailController = TextEditingController(text: widget.user?.email ?? '');
    _phoneController = TextEditingController(text: widget.user?.phone ?? '');
    _streetController = TextEditingController();
    _cityController = TextEditingController();
    _stateController = TextEditingController();
    _countryController = TextEditingController();
    _zipCodeController = TextEditingController();

    // Load full user data if editing
    if (isEditing) {
      _loadUserData();
    }
  }

  Future<void> _loadUserData() async {
    if (widget.user == null) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // Get the data source to load full UserModel
      final dataSource = Injector.get<UserLocalDataSource>();
      final userModel = await dataSource.getUserById(widget.user!.id);

      if (userModel != null) {
        setState(() {
          _selectedGender = userModel.gender;

          // Populate address fields if address exists
          // Force load the address relationship
          final address = userModel.address.target;
          if (address != null) {
            _streetController.text = address.street;
            _cityController.text = address.city;
            _stateController.text = address.state;
            _countryController.text = address.country;
            _zipCodeController.text = address.zipCode;
          }
        });
      }
    } catch (e) {
      // Error loading user data - continue with empty form
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _streetController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _countryController.dispose();
    _zipCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Edit User' : 'Add User'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Basic Information Section
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Basic Information',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 16),

                            // Name Field
                            TextFormField(
                              controller: _nameController,
                              decoration: const InputDecoration(
                                labelText: 'Full Name',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person),
                              ),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Please enter a name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),

                            // Email Field
                            TextFormField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.email),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Please enter an email';
                                }
                                if (!value.contains('@')) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),

                            // Phone Field
                            TextFormField(
                              controller: _phoneController,
                              decoration: const InputDecoration(
                                labelText: 'Phone',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.phone),
                              ),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Please enter a phone number';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),

                            // Gender Dropdown
                            DropdownButtonFormField<Gender>(
                              value: _selectedGender,
                              decoration: const InputDecoration(
                                labelText: 'Gender',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person_outline),
                              ),
                              items: Gender.values.map((gender) {
                                return DropdownMenuItem(
                                  value: gender,
                                  child: Text(gender.displayName),
                                );
                              }).toList(),
                              onChanged: (Gender? value) {
                                if (value != null) {
                                  setState(() {
                                    _selectedGender = value;
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Address Section
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address Information',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 16),

                            // Street Field
                            TextFormField(
                              controller: _streetController,
                              decoration: const InputDecoration(
                                labelText: 'Street Address (Optional)',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.home),
                              ),
                              // No validator - optional field
                            ),
                            const SizedBox(height: 16),

                            // City and State Row
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _cityController,
                                    decoration: const InputDecoration(
                                      labelText: 'City (Optional)',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.location_city),
                                    ),
                                    // No validator - optional field
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: TextFormField(
                                    controller: _stateController,
                                    decoration: const InputDecoration(
                                      labelText: 'State (Optional)',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.map),
                                    ),
                                    // No validator - optional field
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),

                            // Country and Zip Code Row
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _countryController,
                                    decoration: const InputDecoration(
                                      labelText: 'Country (Optional)',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.flag),
                                    ),
                                    // No validator - optional field
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: TextFormField(
                                    controller: _zipCodeController,
                                    decoration: const InputDecoration(
                                      labelText: 'Zip Code (Optional)',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.local_post_office),
                                    ),
                                    // No validator - optional field
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Save Button
                    ElevatedButton(
                      onPressed: _saveUser,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text(
                        isEditing ? 'Update User' : 'Add User',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  void _saveUser() {
    print('🔥 Save button pressed!');

    if (!_formKey.currentState!.validate()) {
      print('❌ Form validation failed');
      return;
    }

    print('✅ Form validation passed');

    try {
      final now = DateTime.now();

      // Create domain User entity (simple approach)
      final user = User(
        id: isEditing ? widget.user!.id : DateTime.now().millisecondsSinceEpoch.toString(),
        name: _nameController.text.trim(),
        email: _emailController.text.trim(),
        phone: _phoneController.text.trim(),
        createdAt: isEditing ? widget.user!.createdAt : now,
        updatedAt: isEditing ? now : null,
      );

      print('📝 Created user: ${user.name}, ${user.email}');

      // Use BLoC for both create and update (let repository handle the complexity)
      if (isEditing) {
        print('🔄 Updating user...');
        context.read<UserBloc>().add(UpdateUserEvent(user));
      } else {
        print('➕ Creating new user...');
        context.read<UserBloc>().add(CreateUserEvent(user));
      }

      print('🚪 Closing form...');
      Navigator.of(context).pop();
    } catch (e) {
      print('❌ Error in _saveUser: $e');
      // Show error to user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error saving user: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
