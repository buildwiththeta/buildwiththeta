import { CNode } from "./cnode";

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
figma.ui.onmessage = async (msg) => {
  // One way of distinguishing between different types of messages sent from
  // your HTML page is to use an object with a "type" property like this.
  if (msg.type === "copy") {
    const nodes: readonly SceneNode[] = getSelections();
    const cnodes = loopNodes(nodes, true);

    //const compressed = btoa(await gzip(JSON.stringify(cnodes)));

    /*const jsonString = JSON.stringify(cnodes);
    var bytes = utf8.encode(jsonString);
    var encoded = base64.encode(bytes);*/

    figma.ui.postMessage({
      pluginMessage: {
        type: "copy_text",
        content: JSON.stringify(cnodes) //await gzip.gzip(encoded),
      }
    });
  }

  // Make sure to close the plugin when you're done. Otherwise the plugin will
  // keep running, which shows the cancel button at the bottom of the screen.
  //figma.closePlugin();
};

function loopNodes(nodes: readonly SceneNode[], parentNode: boolean): CNode[] {
  let nodesArray: CNode[] = [];
  for (const node of nodes) {
    const cnode = new CNode(node, parentNode);
    console.log(node);
    let children: CNode[] = [];
    if ("children" in node) {
      children = loopNodes(node.children, false);
    }
    nodesArray = [...nodesArray, cnode, ...children];
  }
  return nodesArray;
}

function getSelections(): readonly SceneNode[] {
  return figma.currentPage.selection;
}
