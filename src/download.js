// Credits: https://stackoverflow.com/a/33542499
export function download(filename, data) {
  var blob = new Blob([data], { type: "text/json" });
  if (window.navigator.msSaveOrOpenBlob) {
    window.navigator.msSaveBlob(blob, filename);
  } else {
    var elem = window.document.createElement("a");
    elem.href = window.URL.createObjectURL(blob);
    elem.download = filename;
    document.body.appendChild(elem);
    elem.click();
    // window.URL.revokeObjectURL(elem.href); // WebkitBlobResource error 1 on iOS 13.7
    document.body.removeChild(elem);
  }
}
