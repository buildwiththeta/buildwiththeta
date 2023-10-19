export enum FontWeight {
  w100 = 100,
  w200 = 200,
  w300 = 300,
  w400 = 400,
  w500 = 500,
  w600 = 600,
  w700 = 700,
  w800 = 800,
  w900 = 900
}

export function roundFontWeight(value: number): FontWeight {
  if (value < 100) {
    return FontWeight.w100;
  } else if (value < 200) {
    return FontWeight.w200;
  } else if (value < 300) {
    return FontWeight.w300;
  } else if (value < 400) {
    return FontWeight.w400;
  } else if (value < 500) {
    return FontWeight.w500;
  } else if (value < 600) {
    return FontWeight.w600;
  } else if (value < 700) {
    return FontWeight.w700;
  } else if (value < 800) {
    return FontWeight.w800;
  } else {
    return FontWeight.w900;
  }
}
