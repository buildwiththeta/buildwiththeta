import { FSize } from "../features/size";
import { DBKeys } from "../key_constants";
export function toHeight(node: SceneNode) {
  if ("height" in node) {
    return {
      [DBKeys.height]: new FSize(node.height.toString()).toJson()
    };
  }
}
