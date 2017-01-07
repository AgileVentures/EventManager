App.events = App.cable.subscriptions.create("EventsChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
    console.log("connected");
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
    console.log("disconnected");
  },

  received: function(event) {
    // Called when there's incoming data on the websocket for this channel
    console.log("received", event);
    $('#live').text(event.live? "event live" : "event not live");
  }
});