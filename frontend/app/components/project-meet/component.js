import Ember from 'ember';
import injectScript from 'ember-inject-script';
import config from '../../config/environment';

const ProjectMeetComponent = Ember.Component.extend({
  jitsiUrl: config.APP.jitsiUrl,
  jitsiDomain: config.APP.jitsiDomain,
  init: function() {
    this._super();
    var theRoom = this.get('room');
    var theWidth = this.get('width');
    var theHeight = this.get('height');
    var theUrl = this.get('jitsiUrl');
    var theDomain = this.get('jitsiDomain');
    injectScript(theUrl).then (function() {
      var domain = "meet.jit.si";
      var htmlElement = document.querySelector('#meet');
      var api = new JitsiMeetExternalAPI(theDomain, theWidth, theHeight,
        htmlElement);
    });
  }
});


ProjectMeetComponent.reopenClass({
  positionalParams: ['title', 'room', 'width', 'height']
});

export default ProjectMeetComponent;
