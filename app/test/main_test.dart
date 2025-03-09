import 'package:app/core/core_dependencies.dart';
import 'package:app/main.dart';
import 'package:app/presentation/pages/account_screen.dart';
import 'package:app/presentation/pages/favorites_screen.dart';
import 'package:app/presentation/pages/hotels_screen.dart';
import 'package:app/presentation/pages/overview_screen.dart';
import 'package:app/presentation/widgets/hotel_card.dart';
import 'package:app/presentation/widgets/hotel_description/hotel_description.dart';
import 'package:app/presentation/widgets/hotel_description/wrapped_text_description.dart';
import 'package:app/presentation/widgets/hotel_image/hotel_photo.dart';
import 'package:app/presentation/widgets/hotel_image/user_ratings.dart';
import 'package:app/router/app_router.dart';
import 'package:app/router/initialization_guard.dart';
import 'package:database/database.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart' show SizedBox, kTabScrollDuration;
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import 'package:rest_api/hotels_api.dart';
// ignore: depend_on_referenced_packages, it's just a test.
import 'package:retrofit/dio.dart';

// ignore: avoid-long-functions, this is test.
void main() => group('$Main', () {
  const duration = Duration.zero;
  final database = AppDatabase(DatabaseConnection(NativeDatabase.memory()));

  tearDownAll(database.close);

  // ignore: avoid-local-functions, it's a test.
  Future<void> cleanupTest(WidgetTester tester) async {
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle(kTabScrollDuration);
  }

  testWidgets('$OverviewScreen and $AccountScreen are present on app start', (
    tester,
  ) async {
    await tester.pumpWidget(
      Provider.value(
        value: CoreDependencies(database, const _MainTest()),
        child: Main(AppRouter(const InitializationGuard())),
      ),
    );
    await tester.pump(duration);
    expect(find.byType(OverviewScreen), findsOneWidget);

    await tester.tap(find.byIcon(HotelsScreen.icon));
    await tester.pump(duration);
    expect(find.byType(HotelsScreen), findsOneWidget);

    await tester.tap(find.byIcon(FavoritesScreen.icon));
    await tester.pump(duration);
    expect(find.byType(FavoritesScreen), findsOneWidget);

    await tester.tap(find.byIcon(AccountScreen.icon));
    await tester.pump(duration);
    expect(find.byType(AccountScreen), findsOneWidget);

    await cleanupTest(tester);
  });

  testWidgets('$HotelsScreen contains $WrappedTextDescription', (tester) async {
    await tester.pumpWidget(
      Provider.value(
        value: CoreDependencies(database, const _MainTest()),
        child: Main(AppRouter(const InitializationGuard())),
      ),
    );
    await tester.pump(duration);
    await tester.tap(find.byIcon(HotelsScreen.icon));
    await tester.pump(duration);

    expect(find.byType(HotelCard), findsOneWidget);
    expect(find.byType(HotelDescription), findsOneWidget);
    expect(find.byType(HotelPhoto), findsOneWidget);
    expect(find.byType(WrappedTextDescription), findsNWidgets(3));

    await tester.pump(duration);
    await tester.tap(find.byIcon(FavoritesScreen.icon));
    await tester.pump(duration);
    expect(find.byType(HotelPhoto), findsNothing);
    expect(find.byType(UserRatings), findsNothing);

    await cleanupTest(tester);
  });

  testWidgets(
    '$FavoritesScreen contains $UserRatings when user taps on heart icon',
    (tester) async {
      await tester.pumpWidget(
        Provider.value(
          value: CoreDependencies(database, const _MainTest()),
          child: Main(AppRouter(const InitializationGuard())),
        ),
      );
      await tester.pump(duration);
      await tester.tap(find.byIcon(HotelsScreen.icon));
      await tester.pump(duration);

      await tester.tap(find.byIcon(Symbols.favorite_rounded));
      await tester.pump(duration);

      await tester.tap(find.byIcon(FavoritesScreen.icon));
      await tester.pump(duration);
      expect(find.byType(HotelPhoto), findsOneWidget);
      expect(find.byType(UserRatings), findsOneWidget);

      await cleanupTest(tester);
    },
  );
});

class _MainTest implements ClientHttp {
  const _MainTest();

  @override
  Future<HttpResponse<ApiResponse?>> getHotels() => Future.sync(
    () => HttpResponse(
      const ApiResponse(
        hotels: [
          Hotel(
            bestOffer: BestOffer(
              flightIncluded: true,
              simplePricePerPerson: 100,
              total: 100,
            ),
            hotelId: '1',
            name: 'Hotel',
            ratingInfo: RatingInfo(
              recommendationRate: 5,
              reviewsCount: 100,
              score: 1,
            ),
          ),
        ],
      ),
      Response(requestOptions: RequestOptions()),
    ),
  );
}
