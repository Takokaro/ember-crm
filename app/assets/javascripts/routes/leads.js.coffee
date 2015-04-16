App.LeadsRoute = Ember.Route.extend

  model: -> 
    @store.find 'lead'

  setupController: (controller, model) ->
    controller.set 'model', model
