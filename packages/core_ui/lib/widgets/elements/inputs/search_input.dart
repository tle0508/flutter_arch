import 'package:core_ui/theme/theme_provide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchInput extends ConsumerWidget{
  
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final color = ref.watch(appThemeProvider).themeColor;

   return  TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        suffixIcon: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Icon(
            Icons.search,
            color: color.text,
            ),
        )
      ),
   );
  }

}