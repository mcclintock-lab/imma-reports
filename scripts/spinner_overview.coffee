ReportTab = require 'reportTab'
templates = require '../templates/templates.js'
d3 = window.d3

class SpinnerOverviewTab extends ReportTab
  name: 'SpinnerOverview'
  className: 'spinner_overview'
  template: templates.spinner_overview

  render: () ->
    # create random data for visualization

    # setup context object with data and render the template from it
    context =
      sketch: @model.forTemplate()
      sketchClass: @sketchClass.forTemplate()
      attributes: @model.getAttributes()
      admin: @project.isAdmin window.user
      chartData: _.map data, (d, i) -> {index: i, value: d}
    
    @$el.html @template.render(context, templates)

module.exports = SpinnerOverviewTab