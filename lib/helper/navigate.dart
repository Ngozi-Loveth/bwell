import 'package:flutter/material.dart';

goTo(context, Widget? location) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return location!;
  }));
}
