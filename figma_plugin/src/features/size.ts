export class FSize {
  size: string;
  sizeTablet?: string | null;
  sizeDesktop?: string | null;

  constructor(
    size: string,
    sizeTablet: string | null = null,
    sizeDesktop: string | null = null
  ) {
    this.size = size;
    this.sizeTablet = sizeTablet;
    this.sizeDesktop = sizeDesktop;
  }

  toJson(): { s: string; t?: string; d?: string } {
    return {
      s: this.size,
      t: this.sizeTablet || undefined,
      d: this.sizeDesktop || undefined
    };
  }
}
