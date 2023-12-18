import 'package:flutter/material.dart';
import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';

import '../../core/colors.dart';

class AccountAppBar extends StatelessWidget {
  const AccountAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(heading: "Accounts");
  }
}
