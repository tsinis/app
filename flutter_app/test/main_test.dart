import 'package:app/main.dart';
import 'package:app/presentation/pages/account_screen.dart';
import 'package:app/presentation/pages/favorites_screen.dart';
import 'package:app/presentation/pages/hotels_screen.dart';
import 'package:app/presentation/pages/overview_screen.dart';
import 'package:app/router/app_router.dart';
import 'package:app/router/initialization_guard.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('$OverviewScreen is present on app start', (tester) async {
    await tester.pumpWidget(Main(AppRouter(const InitializationGuard())));
    await tester.pumpAndSettle();
    expect(find.byType(OverviewScreen), findsOneWidget);

    await tester.tap(find.byIcon(HotelsScreen.icon));
    await tester.pumpAndSettle();
    expect(find.byType(HotelsScreen), findsOneWidget);

    await tester.tap(find.byIcon(FavoritesScreen.icon));
    await tester.pumpAndSettle();
    expect(find.byType(FavoritesScreen), findsOneWidget);

    await tester.tap(find.byIcon(AccountScreen.icon));
    await tester.pumpAndSettle();
    expect(find.byType(AccountScreen), findsOneWidget);
  });
}
