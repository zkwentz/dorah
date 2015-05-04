`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ProjectsNewController = Ember.Controller.extend(
  AuthenticatedRouteMixin,
  actions:
    save: ->
      @model.save()
      false
)

`export default ProjectsNewController`
