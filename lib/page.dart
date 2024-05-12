import 'package:fluent_ui/fluent_ui.dart';

mixin PageMixin {
  Widget description({required Widget content}) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 4),
          child: DefaultTextStyle(
            style: FluentTheme.of(context).typography.body ?? const TextStyle(),
            child: content,
          ),
        );
      },
    );
  }

  Widget subtitle({required Widget content}) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(top: 14, bottom: 2),
          child: DefaultTextStyle(
            style: FluentTheme.of(context).typography.subtitle ??
                const TextStyle(),
            child: content,
          ),
        );
      },
    );
  }
}
