import { DBKeys } from "../key_constants";
export function toVisibility(node: SceneNode) {
  return {
    [DBKeys.visibility]: node.visible
  };
}
