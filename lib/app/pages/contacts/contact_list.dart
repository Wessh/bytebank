import 'package:bytebank/app/pages/contacts/contact_form.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Contacts')),
      ),
      body: ListView(
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text(
                      'Wessh',
                      style: TextStyle(fontSize: 25),
                    ),
                    subtitle: Text('305,0', style: TextStyle(fontSize: 18)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(builder: (context) => ContactForm()),
              )
              .then(
                (newContact) => debugPrint(newContact.toString()),
              );
        },
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
