import QtQuick
import qs.Commons
import qs.Ui

BarWidget {
  id: root
  moduleName: "io.github.bonnyatole.clipboard-button"

  function toggleClipboard() {
    if (root.bar) root.bar.run("omarchy-shell shell toggle omarchy.clipboard")
  }

  implicitWidth: button.implicitWidth
  implicitHeight: button.implicitHeight

  BarIconButton {
    id: button
    anchors.fill: parent
    bar: root.bar
    text: "\u{f014d}"   // nf-md-clipboard_text
    tooltipText: "Clipboard history · Super+Ctrl+V"
    useActiveColor: false

    Accessible.role: Accessible.Button
    Accessible.name: "Open clipboard history"

    onPressed: function(buttonCode) {
      if (buttonCode === Qt.LeftButton) root.toggleClipboard()
    }
  }
}
