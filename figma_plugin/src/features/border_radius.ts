export class FBorderRadius {
  radiusMobile: (number | undefined)[];
  radiusTablet: (number | undefined)[] | null;
  radiusDesktop: (number | undefined)[] | null;

  constructor(
    radiusMobile: (number | undefined)[],
    radiusTablet: (number | undefined)[] | null = null,
    radiusDesktop: (number | undefined)[] | null = null
  ) {
    this.radiusMobile = radiusMobile;
    this.radiusTablet = radiusTablet;
    this.radiusDesktop = radiusDesktop;
  }

  toJson(): {
    m: (number | undefined)[];
    t?: (number | undefined)[] | null;
    d?: (number | undefined)[] | null;
  } {
    return {
      m: this.radiusMobile || [0, 0, 0, 0],
      t: this.radiusTablet || null,
      d: this.radiusDesktop || null
    };
  }
}
