import 'package:fluent_ui/fluent_ui.dart';
import 'package:intl/intl.dart';

const _kRecentProjectSize = 300.0;

class RecentProject extends StatelessWidget {
  const RecentProject({
    super.key,
    this.name,
    this.version,
    this.lastModified,
    this.isPopulated = false,
  }) : assert(
          isPopulated == true
              ? name != null && version != null && lastModified != null
              : true,
        );
  final String? name;
  final String? version;
  final DateTime? lastModified;
  final bool isPopulated;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final dateFormat = DateFormat('yyyy/MM/dd');
    return Button(
      style: ButtonStyle(
        padding: ButtonState.resolveWith((states) {
          return EdgeInsets.zero;
        }),
        shape: ButtonState.resolveWith((states) {
          if (states.isFocused || states.isHovering || states.isPressing) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: theme.accentColor,
                width: 2,
              ),
            );
          }
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: theme.inactiveBackgroundColor.lerpWith(
                theme.brightness.isDark ? Colors.white : Colors.black,
                0.04,
              ),
              width: 2,
            ),
          );
        }),
        backgroundColor: ButtonState.resolveWith((states) {
          return theme.inactiveBackgroundColor.lerpWith(
            theme.brightness.isDark ? Colors.white : Colors.black,
            0,
          );
        }),
      ),
      onPressed: () {},
      child: SizedBox(
        width: _kRecentProjectSize,
        height: _kRecentProjectSize,
        child: _buildRecentProject(theme, dateFormat),
      ),
    );
  }

  Widget _buildRecentProject(FluentThemeData theme, DateFormat dateFormat) {
    if (!isPopulated) {
      return const SizedBox.shrink();
    }
    final name = this.name;
    final version = this.version;
    final lastModified = this.lastModified;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                name ?? 'Untitled',
                style: theme.typography.subtitle,
              ),
            ],
          ),
        ),
        Expanded(child: Container()),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          ),
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
          child: Row(
            children: [
              Expanded(child: Container()),
              Text(
                version ?? '0.0.0',
                style: theme.typography.caption,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
          child: Text(
            'Last modified on ${dateFormat.format(lastModified ?? DateTime.now())}',
            style: theme.typography.caption,
          ),
        ),
      ],
    );
  }
}
