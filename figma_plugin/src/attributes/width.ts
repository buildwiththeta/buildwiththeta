import { DBKeys } from "../key_constants";
import { FSize } from "../features/size";

export function toWidth(node: SceneNode) {
  if ("width" in node) {
    return {
      [DBKeys.width]: new FSize(node.width.toString()).toJson()
    };
  }
}
