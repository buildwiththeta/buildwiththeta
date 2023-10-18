export class FSizeRange {
  size: string | null;
  sizeTablet: string | null;
  sizeDesktop: string | null;

  constructor(
    size: string | null = null,
    sizeTablet: string | null = null,
    sizeDesktop: string | null = null
  ) {
    this.size = size;
    this.sizeTablet = sizeTablet;
    this.sizeDesktop = sizeDesktop;
  }

  toJson(): { s: string | null; t: string | null; d: string | null } {
    return {
      s: this.size,
      t: this.sizeTablet,
      d: this.sizeDesktop
    };
  }
}
