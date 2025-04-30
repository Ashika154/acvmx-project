import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController(text: "Aaron Williams");
  final phoneController = TextEditingController(text: "+233 55 123 4567");
  final emailController = TextEditingController(text: "aaronwilliams@gmail.com");
  final addressController = TextEditingController(text: "Accra, Ghana");

  final productNameController = TextEditingController(text: "Smart Coffee Vending Machine");
  final modelController = TextEditingController(text: "ACVMX 3000 Basic (GB-3000B)");
  final serialNumberController = TextEditingController(text: "12000V100");
  final purchaseDateController = TextEditingController(text: "January 15, 2025");
  final warrantyController = TextEditingController(text: "Active (Valid until January 15, 2027)");
  final maintenanceController = TextEditingController(text: "February 10, 2025");

  Widget buildFieldRow(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
          const SizedBox(width: 15),
          SizedBox(
            width: 195,
            child: TextFormField(
              controller: controller,
              maxLines: 1,
              style: TextStyle(fontSize: 12),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter $label';
                }
                return null;
              },
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSection(String title, List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              if (title == "Profile")
                const Icon(Icons.edit, size: 16, color: Colors.black),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(children: children),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0B3D91),
        title: const Text('Profile', style: TextStyle(color: Colors.white, fontSize: 15)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              buildSection("Profile", [
                buildFieldRow("Name", nameController),
                buildFieldRow("Phone", phoneController),
                buildFieldRow("Email", emailController),
                buildFieldRow("Address", addressController),
              ]),
              buildSection("Machine Details", [
                buildFieldRow("Product name", productNameController),
                buildFieldRow("Model", modelController),
                buildFieldRow("Serial Number", serialNumberController),
                buildFieldRow("Date of Purchase", purchaseDateController),
                buildFieldRow("Warranty Status", warrantyController),
                buildFieldRow("Last Maintenance", maintenanceController),
              ]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xFF0B3D91),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.article), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
    );
  }
}
