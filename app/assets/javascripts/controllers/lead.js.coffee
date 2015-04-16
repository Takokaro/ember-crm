App.LeadController = Ember.ObjectController.extend
  
  isEditing: false

  showUnsavedMessage: ( ->
    @get('isDirty', 'isSaving')
  ).property('isDirty', 'isSaving')

  actions:
    saveChanges: -> 
      @get('model').save() if @get('model.isDirty')

    delete: -> 
      @get('model').destroyRecord().then =>
        @transitionToRoute 'leads'
