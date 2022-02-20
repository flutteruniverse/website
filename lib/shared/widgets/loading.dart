import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    required this.loading,
    required this.child,
  }) : super(key: key);
  final bool loading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return loading ? Center(child: CircularProgressIndicator()) : child;
  }
}
