import 'package:bullshit/main.dart';
import 'package:bullshit/responsive/responsive.dart';
import 'package:bullshit/widgets/custom_button.dart';
import 'package:bullshit/widgets/custom_text.dart';
import 'package:bullshit/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void disposr() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  Shadow(
                    blurRadius: 90,
                    color: Colors.blue,
                  ),
                ],
                text: 'Create Room',
                fontSize: 60,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextField(
                  controller: _nameController, hintText: 'enter your nickname'),
              SizedBox(height: size.height * 0.30),
              CustomButton(onTap: () {}, text: 'create'),
            ],
          ),
        ),
      ),
    );
  }
}
