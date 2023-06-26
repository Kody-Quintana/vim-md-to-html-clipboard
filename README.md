# vim md to html clipboard

This plugin creates an `mdc` command which pipes a range of markdown text, or the whole buffer, into pandoc
to convert that to html, then into xclip with the `text/html` type so that it can be pasted into applications with formatting.
(e.g. MS Teams which doesn't have a direct way to write in markdown like Slack does)
