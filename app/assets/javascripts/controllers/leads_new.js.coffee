App.LeadsNewController = Ember.Controller.extend

  actions:

    createLead: ->
      fields = @get('fields')
      console.log fields
      if App.Lead.valid(fields)
        lead = @store.createRecord 'lead', fields
        lead.save().then (lead) =>
          @transitionToRoute 'lead', lead
      else
        @set 'showError', true