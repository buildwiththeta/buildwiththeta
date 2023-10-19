import { FFill } from "../features/fill";
import { DBKeys } from "../key_constants";
import { Helpers } from "../helpers/helpers";
export function toFFill(node: SceneNode) {
  const fill = Helpers.fillConverter(node);
  if (fill != null) {
    return {
      [DBKeys.fill]: fill.toJson()
    };
  }
}
