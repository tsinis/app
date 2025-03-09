// ignore_for_file: avoid-non-empty-constructor-bodies

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show immutable, visibleForTesting;
import 'package:http_mock_adapter/http_mock_adapter.dart' show DioAdapter;

import 'src/export.dart';

export 'package:dio/dio.dart';

export 'src/bloc/hotel_data_state.dart';
export 'src/bloc/remote_data_bloc.dart';
export 'src/export.dart';
export 'src/mappers/model_mapper.dart';
export 'src/repository/remote_data_repository.dart';

sealed class HotelsApi {
  /// `BASE_URL` environment variable. Web platform is an exception due to CORS.
  static const baseUrl = String.fromEnvironment('BASE_URL');
  static const isBaseUrlProvided = baseUrl.length > 0;

  static const _route = '/hotels.json';
}

@immutable
// ignore: prefer-single-declaration-per-file, it's a helper class.
final class AdaptedDio {
  factory AdaptedDio() {
    final dio = Dio();
    final adapt = DioAdapter(dio: dio);
    final clonedDio = dio.clone(httpClientAdapter: adapt);
    final response = hotels.map((hotel) => hotel.copyWith(images: [])).toList();

    return AdaptedDio._(adapt, clonedDio)..reply(ApiResponse(hotels: response));
  }

  const AdaptedDio._(this._adapter, this.dio);

  @visibleForTesting
  factory AdaptedDio.test([Dio? mockedDio]) {
    final dio = mockedDio ?? Dio();
    final adapter = DioAdapter(dio: dio);

    return AdaptedDio._(adapter, dio.clone(httpClientAdapter: adapter));
  }

  final Dio dio;
  final DioAdapter _adapter;

  @visibleForTesting
  void reply(ApiResponse? response, {int statusCode = 200}) => _adapter.onGet(
    HotelsApi._route,
    (request) => request.reply(statusCode, response?.toJson()),
  );
}

// ignore_for_file: format-comment, not a comment, it's an annotated test data.
// coverage:ignore-start
@visibleForTesting
// ignore: prefer-static-class, it's a test helper.
final hotels = [
  /// Hotel 1: Luxury beachfront resort.
  Hotel(
    bestOffer: BestOffer(
      appliedTravelDiscount: 250,
      availableSpecialGroups: [
        BestOfferAvailableSpecialGroups.promotion,
        BestOfferAvailableSpecialGroups.flexible,
      ],
      detailedPricePerPerson: [949.5, 949.2],
      flightIncluded: true,
      includedTravelDiscount: 150,
      originalTravelPrice: 2149,
      rooms: const Rooms(
        overall: RoomOverall(
          adultCount: 2,
          boarding: 'All Inclusive',
          childrenCount: 0,
          name: 'Deluxe Ocean View Suite',
          quantity: 1,
          sameBoarding: true,
          sameRoomGroups: true,
        ),
        pricesAndOccupancy: [
          PricesAndOccupancy(
            adultCount: 2,
            childrenAges: [],
            childrenCount: 0,
            groupIdentifier: 'grp-deluxe-ocean',
            simplePricePerPerson: 949.5,
            total: 1899,
          ),
        ],
        roomGroups: [
          RoomGroups(
            boarding: 'All Inclusive Room',
            detailedDescription:
                'Luxurious suite with panoramic ocean views, king-size bed',
            groupIdentifier: 'grp-deluxe-oceans',
            name: 'Deluxe Ocean View Suites',
            quantity: 1,
          ),
        ],
      ),
      simplePricePerPerson: 949.5,
      total: 1899,
      travelDate: TravelDate(
        days: 8,
        departureDate: DateTime.utc(2024, 7, 15),
        nights: 7,
        returnDate: DateTime.utc(2024, 7, 22),
      ),
      travelPrice: 1898,
    ),
    destination: 'Palma de Mallorca, Spain',
    hotelId: 'h-mallorca-01',
    images: [
      const ApiImage(
        large: 'https://example.com/hotels/royal-mallorca-lg1.jpg',
        small: 'https://example.com/hotels/royal-mallorca-sm1.jpg',
      ),
      const ApiImage(
        large: 'https://example.com/hotels/royal-mallorca-lg2.jpg',
        small: 'https://example.com/hotels/royal-mallorca-sm2.jpg',
      ),
      const ApiImage(
        large: 'https://example.com/hotels/royal-mallorca-lg3.jpg',
        small: 'https://example.com/hotels/royal-mallorca-sm3.jpg',
      ),
    ],
    name: 'Royal Mallorca Beach Resort & Spa',
    ratingInfo: const RatingInfo(
      recommendationRate: 98,
      reviewsCount: 2457,
      score: 4.8,
      scoreDescription: 'Excellent',
    ),
  ),

  // Hotel 2: Family-friendly resort.
  Hotel(
    bestOffer: BestOffer(
      appliedTravelDiscount: 300,
      availableSpecialGroups: [BestOfferAvailableSpecialGroups.flexible],
      detailedPricePerPerson: [799, 791, 450, 451],
      flightIncluded: true,
      includedTravelDiscount: 201,
      originalTravelPrice: 2799,
      rooms: const Rooms(
        overall: RoomOverall(
          adultCount: 2,
          boarding: 'The all Inclusive',
          childrenAges: [7, 9],
          childrenCount: 2,
          name: 'Family Suite with Pool Access',
          quantity: 1,
          sameBoarding: true,
          sameRoomGroups: true,
        ),
        pricesAndOccupancy: [
          PricesAndOccupancy(
            adultCount: 2,
            childrenAges: [7, 9],
            childrenCount: 2,
            groupIdentifier: 'grp-family-suite',
            simplePricePerPerson: 624.75,
            total: 2499,
          ),
        ],
        roomGroups: [
          RoomGroups(
            boarding: 'All Inclusives',
            detailedDescription: 'Spacious suite with direct pool access',
            groupIdentifier: 'grps-family-suite',
            name: 'Family Suite with a Pool Access',
            quantity: 1,
          ),
        ],
      ),
      simplePricePerPerson: 624.75,
      total: 2499,
      travelDate: TravelDate(
        days: 10,
        departureDate: DateTime.utc(2024, 8, 10),
        nights: 9,
        returnDate: DateTime.utc(2024, 8, 19),
      ),
      travelPrice: 2491,
    ),
    destination: 'Alcudia, Mallorca, Spain',
    hotelId: 'h-mallorca-02',
    images: [
      const ApiImage(
        large: 'https://example.com/hotels/mallorca-family-lg1.jpg',
        small: 'https://example.com/hotels/mallorca-family-sm1.jpg',
      ),
      const ApiImage(
        large: 'https://example.com/hotels/mallorca-family-lg2.jpg',
        small: 'https://example.com/hotels/mallorca-family-sm2.jpg',
      ),
    ],
    name: 'Mallorca Family Paradise',
    ratingInfo: const RatingInfo(
      recommendationRate: 92,
      reviewsCount: 1832,
      score: 4.5,
      scoreDescription: 'Very Good',
    ),
  ),

  // Hotel 3: Boutique adults-only hotel.
  Hotel(
    bestOffer: BestOffer(
      appliedTravelDiscount: 202,
      availableSpecialGroups: [BestOfferAvailableSpecialGroups.promotion],
      detailedPricePerPerson: [1099.5, 1099.2],
      flightIncluded: true,
      includedTravelDiscount: 100,
      originalTravelPrice: 2399,
      rooms: const Rooms(
        overall: RoomOverall(
          adultCount: 2,
          boarding: 'Half Board',
          childrenCount: 0,
          name: 'Premium Sea View Suite',
          quantity: 1,
          sameBoarding: true,
          sameRoomGroups: true,
        ),
        pricesAndOccupancy: [
          PricesAndOccupancy(
            adultCount: 2,
            childrenAges: [],
            childrenCount: 0,
            groupIdentifier: 'grp-sea-view',
            simplePricePerPerson: 1099.5,
            total: 2199,
          ),
        ],
        roomGroups: [
          RoomGroups(
            boarding: 'Half-Board',
            detailedDescription:
                'Elegant suite with stunning Mediterranean views',
            groupIdentifier: 'grps-sea-views',
            name: 'Premium Sea View Suites',
            quantity: 1,
          ),
        ],
      ),
      simplePricePerPerson: 1099.5,
      total: 2199,
      travelDate: TravelDate(
        days: 5,
        departureDate: DateTime.utc(2024, 9, 5),
        nights: 6,
        returnDate: DateTime.utc(2024, 9, 11),
      ),
      travelPrice: 2191,
    ),
    destination: 'Port de Soller, Mallorca, Spain',
    hotelId: 'h-mallorca-03',
    images: [
      const ApiImage(
        large: 'https://example.com/hotels/villa-tranquila-lg1.jpg',
        small: 'https://example.com/hotels/villa-tranquila-sm1.jpg',
      ),
      const ApiImage(
        large: 'https://example.com/hotels/villa-tranquila-lg2.jpg',
        small: 'https://example.com/hotels/villa-tranquila-sm2.jpg',
      ),
      const ApiImage(
        large: 'https://example.com/hotels/villa-tranquila-lg3.jpg',
        small: 'https://example.com/hotels/villa-tranquila-sm3.jpg',
      ),
    ],
    name: 'Villa Tranquila Adults Only',
    ratingInfo: const RatingInfo(
      recommendationRate: 96,
      reviewsCount: 957,
      score: 4.7,
      scoreDescription: 'Exceptional',
    ),
  ),

  // Hotel 4: Budget-friendly option.
  Hotel(
    bestOffer: BestOffer(
      appliedTravelDiscount: 104,
      availableSpecialGroups: [],
      detailedPricePerPerson: [449.5, 449.4],
      flightIncluded: true,
      includedTravelDiscount: 50,
      originalTravelPrice: 999,
      rooms: const Rooms(
        overall: RoomOverall(
          adultCount: 2,
          boarding: 'Bed & Breakfast',
          childrenCount: 0,
          name: 'Standard Double Room',
          quantity: 1,
          sameBoarding: true,
          sameRoomGroups: true,
        ),
        pricesAndOccupancy: [
          PricesAndOccupancy(
            adultCount: 2,
            childrenAges: [],
            childrenCount: 0,
            groupIdentifier: 'grp-standard',
            simplePricePerPerson: 449.5,
            total: 899,
          ),
        ],
        roomGroups: [
          RoomGroups(
            boarding: 'Bed and Breakfast',
            detailedDescription: 'Comfortable room in central location',
            groupIdentifier: 'grps-standard',
            name: 'Standard 1xDouble Room',
            quantity: 1,
          ),
        ],
      ),
      simplePricePerPerson: 449.5,
      total: 899,
      travelDate: TravelDate(
        days: 2,
        departureDate: DateTime.utc(2024, 6, 20),
        nights: 3,
        returnDate: DateTime.utc(2024, 6, 24),
      ),
      travelPrice: 894,
    ),
    destination: 'Palma City Center, Mallorca, Spain',
    hotelId: 'h-mallorca-04',
    images: [
      const ApiImage(
        large: 'https://example.com/hotels/hostal-mallorca-lg1.jpg',
        small: 'https://example.com/hotels/hostal-mallorca-sm1.jpg',
      ),
      const ApiImage(
        large: 'https://example.com/hotels/hostal-mallorca-lg2.jpg',
        small: 'https://example.com/hotels/hostal-mallorca-sm2.jpg',
      ),
    ],
    name: 'Hostal Mallorca Central',
    ratingInfo: const RatingInfo(
      recommendationRate: 85,
      reviewsCount: 764,
      score: 4.0,
      scoreDescription: 'Good',
    ),
  ),
];
// coverage:ignore-end
