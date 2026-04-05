// SPDX-FileCopyrightText: © 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:ac_connectivity/ac_connectivity.dart';
import 'package:ac_inet_connectivity_checker/ac_inet_connectivity_checker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InetConnectivityState', () {
    test('has exactly three values', () {
      expect(InetConnectivityState.values, hasLength(3));
    });

    test('contains expected members', () {
      expect(
        InetConnectivityState.values,
        containsAll([
          InetConnectivityState.disconnected,
          InetConnectivityState.connected,
          InetConnectivityState.internet,
        ]),
      );
    });

    test('members have the correct names', () {
      expect(InetConnectivityState.disconnected.name, 'disconnected');
      expect(InetConnectivityState.connected.name, 'connected');
      expect(InetConnectivityState.internet.name, 'internet');
    });

    test('supports value equality', () {
      expect(
        InetConnectivityState.disconnected,
        equals(InetConnectivityState.disconnected),
      );
      expect(
        InetConnectivityState.disconnected,
        isNot(equals(InetConnectivityState.connected)),
      );
      expect(
        InetConnectivityState.connected,
        isNot(equals(InetConnectivityState.internet)),
      );
    });

    test('can be looked up by name', () {
      expect(
        InetConnectivityState.values.byName('disconnected'),
        InetConnectivityState.disconnected,
      );
      expect(
        InetConnectivityState.values.byName('connected'),
        InetConnectivityState.connected,
      );
      expect(
        InetConnectivityState.values.byName('internet'),
        InetConnectivityState.internet,
      );
    });
  });

  group('Connectivity.defaultInetEndpoints', () {
    test('is non-empty', () {
      expect(Connectivity.defaultInetEndpoints, isNotEmpty);
    });

    test('has an even length (interleaved IPv6 and IPv4)', () {
      expect(Connectivity.defaultInetEndpoints.length % 2, equals(0));
    });

    test('contains only InetEndpoint instances', () {
      for (final endpoint in Connectivity.defaultInetEndpoints) {
        expect(endpoint, isA<InetEndpoint>());
      }
    });

    test('endpoints have non-empty addresses', () {
      for (final endpoint in Connectivity.defaultInetEndpoints) {
        expect(endpoint.host, isNotEmpty);
      }
    });
  });
}
