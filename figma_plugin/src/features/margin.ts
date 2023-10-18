export class FMargin {
  margins: (number | undefined)[];
  marginsTablet: (number | undefined)[] | null;
  radiusDesktop: (number | undefined)[] | null;

  constructor(
    margins: (number | undefined)[],
    marginsTablet: (number | undefined)[] | null = null,
    radiusDesktop: (number | undefined)[] | null = null
  ) {
    this.margins = margins;
    this.marginsTablet = marginsTablet;
    this.radiusDesktop = radiusDesktop;
  }

  toJson(): {
    m: (number | undefined)[];
    t?: (number | undefined)[] | null;
    d?: (number | undefined)[] | null;
  } {
    return {
      m: this.margins || [0, 0, 0, 0],
      t: this.marginsTablet || null,
      d: this.radiusDesktop || null
    };
  }
}
