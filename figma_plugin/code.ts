

// This plugin will open a window to prompt the user to enter a number, and
// it will then create that many rectangles on the screen.

// This file holds the main code for plugins. Code in this file has access to
// the *figma document* via the figma global object.
// You can access browser APIs in the <script> tag inside "ui.html" which has a
// full browser environment (See https://www.figma.com/plugin-docs/how-plugins-run).

// This shows the HTML page in "ui.html".
figma.showUI(__html__);

// Calls to "parent.postMessage" from within the HTML page will trigger this
// callback. The callback will be passed the "pluginMessage" property of the
// posted message.
figma.ui.onmessage = async msg => {
  // One way of distinguishing between different types of messages sent from
  // your HTML page is to use an object with a "type" property like this.
  if (msg.type === 'copy') {
    const nodes: readonly SceneNode[] = getSelections();
    const cnodes = loopNodes(nodes, true)

    //const compressed = btoa(await gzip(JSON.stringify(cnodes)));

    /*const jsonString = JSON.stringify(cnodes);
    var bytes = utf8.encode(jsonString);
    var encoded = base64.encode(bytes);*/

    figma.ui.postMessage({pluginMessage: {
      type: "copy_text",
      content: JSON.stringify(cnodes), //await gzip.gzip(encoded),
    }});
  }

  // Make sure to close the plugin when you're done. Otherwise the plugin will
  // keep running, which shows the cancel button at the bottom of the screen.
  //figma.closePlugin();
};

function loopNodes(nodes: readonly SceneNode[], parentNode: boolean) : CNode[] {
  let nodesArray : CNode[] = []
  for (const node of nodes) {
    const cnode = new CNode(node, parentNode)
    console.log(node)
    let children : CNode[] = []
    if ('children' in node) {
      children = loopNodes(node.children, false)
    }
    nodesArray = [...nodesArray, cnode, ...children]
  }
  return nodesArray
}

function getSelections() : readonly SceneNode[] {
  return figma.currentPage.selection
}

class CNode {
  id: string;
  name: string;
  type: string;
  parent_id: string | undefined;
  attributes: Object;
  rect_props: Object;

  constructor(node: SceneNode, parentNode: boolean) {
    this.id = node.id;
    this.name = node.name;
    this.type = this.toType(node);
    this.parent_id = parentNode ? undefined : node.parent?.id;
    this.attributes = {
      ...this.toFFill(node),
    };
    this.rect_props = {
      ...this.toRect(node.x, node.y, node.width, node.height, parentNode),
      ...this.toBorderRadius(node),
    };
  }

  toType(node: SceneNode) : string {
    if ('fills' in node) {
      if (node.fills instanceof Array) {
        if (node.fills.length != 0) {
          if (node.fills[0]?.type == "IMAGE") {
            return "image"
          }
        }
      }
    }
    switch (node.type) {
      case "TEXT":
        return "text"
      case "RECTANGLE":
        return "container"
      case "FRAME":
        return "container"
      case "GROUP":
        return "container"
      case "INSTANCE":
        return "instance"
      case "COMPONENT":
        return "container"
      default:
        throw new Error(`Unknown type: ${node.type}`)
    }
  }
  
  rgbToHex(r: number, g: number, b: number): string {
    // Convert the 0-1 range to 0-255
    const red = Math.round(r * 255);
    const green = Math.round(g * 255);
    const blue = Math.round(b * 255);
  
    // Convert to hex and make sure each value is two digits
    const hexRed = (red < 16 ? '0' : '') + red.toString(16);
    const hexGreen = (green < 16 ? '0' : '') + green.toString(16);
    const hexBlue = (blue < 16 ? '0' : '') + blue.toString(16);
  
    // Combine into a single hex color string
    return '#' + hexRed + hexGreen + hexBlue;
  }
  
  
  toFSizeFromNumber(num: number) {
    return {
      unit: "px",
      value: num
    }
  }
  
  toRect(x: number, y: number, width: number, height: number, parentNode: boolean) {
    const finalX = x < 0 && parentNode ? 0 : x
    const finalY = y < 0 && parentNode ? 0 : y
    if (!parentNode) {
      return {
        left: finalX,
        top: finalY,
        right: finalX + width,
        bottom: finalY + height,
      }
    }
    return {
      left: finalX,
      top: finalY,
      right: 390 - (finalX + width),
      bottom: 844 - (finalY + height),
    }
  }
  
  toFFill(node: SceneNode) {
    let key = "fills"
    if (node.type == "TEXT" || node.type == "RECTANGLE" || node.type == "FRAME" || node.type == "COMPONENT") {
      if (key in node) {
        if (node.fills != null) {
          if (node.fills instanceof Array) {
            if (node.fills.length != 0) {
              if (node.fills[0].type == "SOLID") {
                const fill = node.fills[0] as SolidPaint;
                return { 
                  fill: {
                    type: "solid",
                    levels: [ 
                      {
                        opacity: fill.opacity,
                        color: this.rgbToHex(fill.color.r, fill.color.g, fill.color.b),
                        step: 0,
                      },
                    ],
                  }
                }
              }
              if (node.fills[0].type == "IMAGE") {
                /*
                const fill = node.fills[0] as ImagePaint;
                if (fill.imageHash == null) {
                  return
                }
                const image = figma.getImageByHash(fill.imageHash)
                return {
                  img: {
                    bytes: await image?.getBytesAsync(),
                  }
                }*/
              }
              if (node.fills[0].type == "GRADIENT_LINEAR") {
                const fill = node.fills[0] as GradientPaint;
                return {
                  fill: {
                    type: "gradient",
                    levels: fill.gradientStops.map((stop, i) => {
                      return {
                        opacity: stop.color.a,
                        color: this.rgbToHex(stop.color.r, stop.color.g, stop.color.b),
                        step: i,
                      }
                    }),
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  toBorderRadius(node: SceneNode) {
    if ('cornerRadius' in node) {
      if (node.cornerRadius !== figma.mixed) {
        return {
          br: {
            m: [
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
            ],
            t: [
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
            ],
            d: [
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
            ]
          }
        }
      }
    }
    if ('topLeftRadius' in node && 'topRightRadius' in node && 'bottomLeftRadius' in node && 'bottomRightRadius' in node) {
      return {
        br: {
          m: [
            node.topLeftRadius,
            node.topRightRadius,
            node.bottomRightRadius,
            node.bottomLeftRadius,
          ],
          t: [
            node.topLeftRadius,
            node.topRightRadius,
            node.bottomRightRadius,
            node.bottomLeftRadius,
          ],
          d: [
            node.topLeftRadius,
            node.topRightRadius,
            node.bottomRightRadius,
            node.bottomLeftRadius,
          ]
        }
      }
    }
  }
}
