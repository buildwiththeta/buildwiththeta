export enum BoxFit {
  contain = "contain",
  cover = "cover",
  fill = "fill",
  fitHeight = "fitHeight",
  fitWidth = "fitWidth",
  none = "none",
  scaleDown = "scaleDown"
}

export class FBoxFit {
  value: BoxFit;

  constructor(value: BoxFit = BoxFit.cover) {
    this.value = value;
  }

  toJson(): string {
    return this.value;
  }
}
