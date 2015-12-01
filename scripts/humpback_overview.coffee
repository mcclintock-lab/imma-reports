ReportTab = require 'reportTab'
templates = require '../templates/templates.js'
d3 = window.d3

class HumpbackOverviewTab extends ReportTab
  name: 'HumpbackOverview'
  className: 'humpback_overview'
  template: templates.humpback_overview
  dependencies: [
    'HumpbackDiversityToolbox'
  ]

  render: () ->
    # create random data for visualization
    humpback_diversity = @recordSet('HumpbackDiversityToolbox', 'Diversity').toArray()
    # setup context object with data and render the template from it
    context =
      sketch: @model.forTemplate()
      sketchClass: @sketchClass.forTemplate()
      attributes: @model.getAttributes()
      admin: @project.isAdmin window.user
      humpback_diversity: humpback_diversity
      
    
    @$el.html @template.render(context, templates)

module.exports = HumpbackOverviewTab