import 'package:permission_handler/permission_handler.dart';

class PermissionsService {
  final PermissionHandler _permissionHandler = PermissionHandler();

  
  Future<bool> _requestPermission(PermissionGroup permission) async {
    var result = await _permissionHandler.requestPermissions([permission]);
    if (result[permission] == PermissionStatus.granted) {
      return true;
    }
    return false;
  }
  
  Future<bool> hasPermission(PermissionGroup permission) async {
    var permissionStatus =
    await _permissionHandler.checkPermissionStatus(permission);
    return permissionStatus == PermissionStatus.granted;
  }
  
  /// Requests the users permission to read their contacts.
  Future<bool> requestContactsPermission(Future push) async {
    return _requestPermission(PermissionGroup.contacts);
    /// Requests the users permission to read their contacts.
  
  }
  
  Future<bool> hasContactsPermission() async {
    return hasPermission(PermissionGroup.contacts);
  }

}