import 'package:bytebank/app/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('New contact')),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Full name',
              ),
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _accountNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Account number',
                ),
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  child: Text('Create'),
                  onPressed: () {
                    final String name = _nameController.text;
                    final int accountNumber =
                        int.tryParse(_accountNumberController.text)!;
                    final Contact newContact = Contact(name, accountNumber);
                    Navigator.pop(context, newContact);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
