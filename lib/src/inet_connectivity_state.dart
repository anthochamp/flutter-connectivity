// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

enum InetConnectivityState {
  /// Disconnected from Internet (same as [ConnectivityResult.none])
  disconnected,

  /// Connected to a network without Internet access.
  connected,

  /// Connected to Internet.
  internet,
}
