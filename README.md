# Tertestrial client for VSCode

![example workflow](https://github.com/tertestrial/vscode/actions/workflows/main.yml/badge.svg)

<img src="icons/icon-color-300.png" width="150" height="124">

### install

This extension is [available](https://marketplace.visualstudio.com/items?itemName=kevgo.tertestrial-vscode) in the
Visual Studio marketplace. Please don't forget to also install the [server](https://github.com/tertestrial/server).

### use

1. Arrange a terminal and VSCode on your screen(s) so that you see both. You can use the terminal built into VSCode or
   an external one here.
2. Start the server by running `tertestrial` in that terminal.
3. Open Visual Studio's command palette by pressing (`Ctrl-Shift-P`). Enter `Tertestrial` to trim the list of available
   commands. Choose one of these commands:

<table type="commands">
  <tr>
    <td><b>testAll</b></td>
    <td>Test everything</td>
  </tr>
  <tr>
    <td><b>testFile</b></td>
    <td>Test this file</td>
  </tr>
  <tr>
    <td><b>testFunction</b></td>
    <td>Test this function</td>
  </tr>
  <tr>
    <td><b>repeatTest</b></td>
    <td>Repeat the last test</td>
  </tr>
  <tr>
    <td><b>stopTest</b></td>
    <td>Stop the current test</td>
  </tr>
  <tr>
    <td><b>autoRepeat</b></td>
    <td>Start/Stop auto-repeat on file save</td>
  </tr>
</table>
