@App.module "Example", (Example, App, Backbone, Marionette, $, _) ->

  UILayoutMn2 = require('../../router/ui_layout_mn2')

  class Layout extends UILayoutMn2
    template: require('./templates/root')
    regions:
      'clientInfo': '[ui-view=clientInfo]'
      'clientList': '[ui-view=clientList]'



  module.exports = class RootComponent extends Marionette.Object
    view: Layout

    getView: ->
      @_view or= new @view _.extend {}, @options, controller: @
