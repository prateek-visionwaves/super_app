import 'dart:developer';
import 'package:super_app/src/core/permissions/permission_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPermissionManager{

  final PermissionManager _permissionManager = PermissionManager();

  Future<void> requestPermission(WebViewPermissionRequest request) async {
    switch(request.platform.types.first.name){
      case 'microphone':{
        if(await _permissionManager.isMicrophonePermissionGranted()){
          log('Check Microphone Permission');
            request.grant();
        }else{
          if(await _permissionManager.requestMicrophonePermission()){
            log('Request Microphone Permission');
            request.grant();
          }else{
            request.deny();
          }
        }
      }
      case 'camera':{
        if(await _permissionManager.isCameraPermissionGranted()){
          request.grant();
        }else{
          if(await _permissionManager.requestCameraPermission()){
            request.grant();
          }else{
            request.deny();
          }
        }
        break;
      }
      default: {
        request.deny();
        break;
      }
    }
  }
}