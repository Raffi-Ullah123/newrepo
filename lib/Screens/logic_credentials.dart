import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final formkey=GlobalKey<FormState>();
  
  TextEditingController nController= TextEditingController();
  TextEditingController pController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("hack me sex"),
      ),
      body: Form(
          key: formkey,
          child: Column(
        children: [
          _buildTextField(
            controller: nController,
            icon: Icons.person,
            hintText: "Name",
              validator: (name){
              if(name==null || name.isEmpty){
                return "Name cannot be empty";
              }else{
                return null;
              }
              }
          ),

        ],
      )),
    );
  }
  Widget _buildTextField({
    required TextEditingController controller,
    required IconData icon,
    required String hintText,
    required FormFieldValidator<String> validator,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.yellow,
      ),
      height: 50,
      width: 300,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          contentPadding: const EdgeInsets.only(top: 13, left: 30, bottom: 10),
          hintText: hintText,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
        ),
        validator: validator,
      ),
    );
  }
}
