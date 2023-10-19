export class FTextDirection {
  value: TextDirection;

  constructor({ value = TextDirection.ltr }: { value?: TextDirection }) {
    this.value = value;
  }

  toJson(): string {
    return this.value;
  }
}

export enum TextDirection {
  ltr = "ltr",
  rtl = "rtl"
}
