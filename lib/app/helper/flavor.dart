enum Flavor { development, staging, production }

class FlavorConfig {
  static Flavor flavor = Flavor.development;

  static setDev() => flavor = Flavor.development;

  static setProd() => flavor = Flavor.production;
  static setStag() => flavor = Flavor.staging;

  static bool isProduction() => flavor == Flavor.production;
  static bool isDevelopment() => flavor == Flavor.development;
  static bool isStaging() => flavor == Flavor.staging;

  static String baseUrl() {
    switch (flavor) {
      case Flavor.development:
        return 'https://localhost/';
      case Flavor.production:
        return 'https://localhost/';
      default:
        return 'https://localhost/';
    }
  }
}
