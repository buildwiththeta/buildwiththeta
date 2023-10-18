import { FMargin } from "../features/margin";
import { DBKeys } from "../key_constants";

export function toMargin(node: SceneNode) {
  return {
    [DBKeys.margins]: new FMargin([0, 0, 0, 0]).toJson()
  };
}
