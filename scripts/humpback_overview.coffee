ReportTab = require 'reportTab'
templates = require '../templates/templates.js'
d3 = window.d3

class HumpbackOverviewTab extends ReportTab
  name: 'HumpbackOverview'
  className: 'humpback_overview'
  template: templates.humpback_overview

  render: () ->
    # create random data for visualization

    # setup context object with data and render the template from it
    context =
      sketch: @model.forTemplate()
      sketchClass: @sketchClass.forTemplate()
      attributes: @model.getAttributes()
      admin: @project.isAdmin window.user
      
    
    @$el.html @template.render(context, templates)

module.exports = HumpbackOverviewTab