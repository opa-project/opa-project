import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: <String, WidgetBuilder>{
//      '/add': (BuildContext context) => AddContactPage()
    }, home: ContactListPage());
  }
}

class ContactListPage extends StatefulWidget {
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  Iterable<Contact> _contacts;
  Iterable<Contact> filteredContacts;

  bool isSearching = false;

  @override
  initState() {
    super.initState();
    refreshContacts();
  }

  refreshContacts() async {
    var contacts = await ContactsService.getContacts();
    setState(() {
      _contacts = filteredContacts = contacts;
    });
  }

  void _filteredContacts(value) {
    setState(() {
    filteredContacts = _contacts.where((contact) => contact.displayName.toLowerCase().contains(value.toLowerCase()));
    });
  }

  bool _isChecked = false;

  void onChanged(bool value){
    setState(() {
      _isChecked = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching 
        ? Text('Invite your friends!') 
        : TextField(
          onChanged: (value) {
            _filteredContacts(value);
          },
          style: TextStyle(color: Colors.white), 
          decoration: InputDecoration(
            icon: Icon(Icons.search, color: Colors.white,),
            hintText: "Search Contacts",
            hintStyle: TextStyle(color: Colors.white)
            ),
          ),
        actions:<Widget>[
          isSearching ?
                    IconButton(
            icon: Icon(Icons.cancel),
            onPressed:() {
              setState(() {
                isSearching = false;
                filteredContacts = _contacts;
              });
            },) :
          IconButton(
            icon: Icon(Icons.search),
            onPressed:() {
              setState(() {
                isSearching = true;
              });
            },)
        ]),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            // add code to go to next page
          }),
      body: SafeArea(
        child: filteredContacts != null
            ? ListView.builder(
          itemCount: filteredContacts?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            Contact c = filteredContacts?.elementAt(index);
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ContactDetailsPage(c)));
              },
              leading: (c.avatar != null && c.avatar.length > 0)
                  ? CircleAvatar(backgroundImage: MemoryImage(c.avatar))
                  : CircleAvatar(
                  child: Text(c.displayName.length > 1
                      ? c.displayName?.substring(0, 2)
                      : "")),
              title: Text(c.displayName ?? ""),
              trailing: Checkbox(
            value: _isChecked,
            onChanged: (bool index) {
              onChanged(index);
            },
          ), 
            );
          },
        )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class ContactDetailsPage extends StatelessWidget {
  ContactDetailsPage(this._contact);
  final Contact _contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(title: Text(_contact.displayName ?? ""), actions: <Widget>[
        ]),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              ListTile(
                  title: Text("Name"),
                  trailing: Text(_contact.givenName ?? "")),
              ListTile(
                  title: Text("Family name"),
                  trailing: Text(_contact.familyName ?? "")),
              ItemsTile("Phones", _contact.phones),
              ItemsTile("Emails", _contact.emails)
            ],
          ),
        ));
  }
}

class ItemsTile extends StatelessWidget {
  ItemsTile(this._title, this._items);
  final Iterable<Item> _items;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(title: Text(_title)),
          Column(
              children: _items
                  .map((i) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListTile(
                      title: Text(i.label ?? ""),
                      trailing: Text(i.value ?? ""))))
                  .toList())
        ]);
  }
}