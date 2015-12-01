HumpbackOverviewTab = require './humpback_overview.coffee'

window.app.registerReport (report) ->
  report.tabs [HumpbackOverviewTab]
  # path must be relative to dist/
  report.stylesheets ['./report.css']
