import { DBKeys } from "../key_constants";
import { FSizeRange } from "../features/size_range";

export function toSizeRange(node: SceneNode) {
  return {
    [DBKeys.minWidth]: new FSizeRange(
      node.minWidth != null ? node.minWidth.toString() : null
    ).toJson(),
    [DBKeys.minHeight]: new FSizeRange(
      node.minHeight != null ? node.minHeight.toString() : null
    ).toJson(),
    [DBKeys.maxHeight]: new FSizeRange(
      node.maxHeight != null ? node.maxHeight.toString() : null
    ).toJson(),
    [DBKeys.maxWidth]: new FSizeRange(
      node.maxWidth != null ? node.maxWidth.toString() : null
    ).toJson()
  };
}
