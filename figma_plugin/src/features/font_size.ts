import { SizeUnit } from "../features/size";

export class FFontSize {
  constructor({
    size = 16,
    unit = SizeUnit.pixel,
    sizeTablet,
    sizeDesktop
  }: {
    size?: number;
    unit?: SizeUnit;
    sizeTablet?: number | null;
    sizeDesktop?: number | null;
  }) {
    this.size = size;
    this.sizeTablet = sizeTablet ?? null;
    this.sizeDesktop = sizeDesktop ?? null;
    this.unit = unit;
  }

  size: number;
  sizeTablet: number | null;
  sizeDesktop: number | null;
  unit: SizeUnit;

  toJson(): {
    s: number;
    st?: number | null;
    sd?: number | null;
    u: string;
  } {
    return {
      s: this.size,
      st: this.sizeTablet || null,
      sd: this.sizeDesktop || null,
      u: SizeUnit[this.unit]
    };
  }
}
