// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// This is a header to distinguish sections of the form.
class CardSettingsHeader extends StatelessWidget {
  CardSettingsHeader({
    this.label: 'Label',
    this.labelAlign: TextAlign.left,
    this.height: 34.0,
    this.color,
  });

  final String label;
  final TextAlign labelAlign;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0.0),
      decoration: BoxDecoration(color: color ?? Theme.of(context).accentColor),
      height: height,
      padding: EdgeInsets.only(left: 14.0, top: 4.0, right: 14.0, bottom: 4.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).primaryTextTheme.title,
              textAlign: labelAlign,
              textScaleFactor: 0.80,
            ),
          ),
        ],
      ),
    );
  }
}
