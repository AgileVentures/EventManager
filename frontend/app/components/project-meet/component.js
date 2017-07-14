import Ember from 'ember';
import injectScript from 'ember-inject-script';

export default Ember.Component.extend({
  init: function() {
    this._super();
    var url = "https://meet.jit.si/external_api.js";
    injectScript(url).then (function() {
      var domain = "meet.jit.si";
      var room = "JitsiMeetAPIExample";
      var width = 700;
      var height = 700;
      var htmlElement = document.querySelector('#meet');
      var api = new JitsiMeetExternalAPI(domain, room, width, height,
        htmlElement);
    });
  }
});
