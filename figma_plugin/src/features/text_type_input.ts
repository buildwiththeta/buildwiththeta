enum FTextTypeEnum {
  text,
  imageUrl,
  combined,
  languages
}

export class FTextTypeInput {
  type: FTextTypeEnum;
  value: string;
  valueTablet: string;
  valueLaptop: string;
  valueDesktop: string;
  locale: string | undefined;
  combination: FTextTypeInput[] | undefined;

  constructor({
    type = FTextTypeEnum.text,
    value = "",
    valueTablet = "",
    valueLaptop = "",
    valueDesktop = "",
    locale,
    combination
  }: {
    type?: FTextTypeEnum;
    value?: string;
    valueTablet?: string;
    valueLaptop?: string;
    valueDesktop?: string;
    locale?: string;
    combination?: FTextTypeInput[];
  }) {
    this.type = type;
    this.value = value;
    this.valueTablet = valueTablet;
    this.valueLaptop = valueLaptop;
    this.valueDesktop = valueDesktop;
    this.locale = locale;
    this.combination = combination;
  }

  toJson(): any {
    const result: any = {
      t: FTextTypeEnum[this.type],
      v: this.value,
      vt: this.valueTablet,
      vl: this.valueLaptop,
      vd: this.valueDesktop,
      kTrans: this.locale
    };

    if (this.combination) {
      result.cmb = this.combination.map((e) => e.toJson());
    }

    for (const key in result) {
      if (result[key] === undefined) {
        delete result[key];
      }
    }

    return result;
  }
}
