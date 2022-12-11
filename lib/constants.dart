import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1D7874);
const kTaskTileColor = Color(0xFFF4C095);
const kHoverColor = Color(0xFF705844);

const kTaskTitle = TextStyle(
  color: Colors.white,
  fontSize: 30.0,
  fontWeight: FontWeight.w700,
);

const kTaskNumber = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
);

const kBoxDecoration = BoxDecoration(
  color: kTaskTileColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);

const kAddTaskTitle = TextStyle(
  fontWeight: FontWeight.w700,
  color: kPrimaryColor,
  fontSize: 25.0,
);

const kButtonTextTitle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
);