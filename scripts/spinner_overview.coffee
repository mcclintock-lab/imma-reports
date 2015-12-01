ReportTab = require 'reportTab'
templates = require '../templates/templates.js'
d3 = window.d3

class SpinnerOverviewTab extends ReportTab
  name: 'SpinnerOverview'
  className: 'spinner_overview'
  template: templates.spinner_overview
  dependencies: [
    'SpinnerDiversity'
  ]
  render: () ->
    # create random data for visualization
    spinner_diversity = @recordSet('SpinnerDiversity', 'Diversity').toArray()
    spinner_rarified = @recordSet('SpinnerDiversity', 'Rarified').toArray()
    # setup context object with data and render the template from it
    context =
      sketch: @model.forTemplate()
      sketchClass: @sketchClass.forTemplate()
      attributes: @model.getAttributes()
      admin: @project.isAdmin window.user
      spinner_diversity: spinner_diversity
      spinner_rarified: spinner_rarified
    
    @$el.html @template.render(context, templates)

module.exports = SpinnerOverviewTab