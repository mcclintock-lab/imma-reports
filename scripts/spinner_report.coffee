SpinnerOverviewTab = require './spinner_overview.coffee'

window.app.registerReport (report) ->
  report.tabs [SpinnerOverviewTab]
  # path must be relative to dist/
  report.stylesheets ['./report.css']
