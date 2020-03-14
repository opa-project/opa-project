import 'package:flutter/material.dart';
import 'package:opa_project/services/PermissionService.dart';

import 'containers/contact-list.dart';

class CreateEventButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
      floatingActionButton: new FloatingActionButton(
          elevation: 0.0,
          child: new Icon(Icons.event),
          backgroundColor: Colors.blue,
          onPressed: () async {
            PermissionsService().requestContactsPermission(
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactList())
                )
            );

          }
      )
  );
}