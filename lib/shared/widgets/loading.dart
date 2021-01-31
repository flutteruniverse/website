import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key key, this.loading, this.widget}) : super(key: key);
  final bool loading;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return loading ? Center(child: CircularProgressIndicator()) : widget;
  }
}
