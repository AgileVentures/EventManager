App.events = App.cable.subscriptions.create("EventsChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
    //console.log("connected");
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
    //console.log("disconnected");
  },

  received: function(event) {
    // Called when there's incoming data on the websocket for this channel
    //console.log("received", event);
    EventManager.events.updateLiveStatusAndStyle(event.live)

    //$('#live').text(event.live? "event live" : "event not live");
    //event.live? $('#live').addClass("live") : $('#live').removeClass("live");


    //var f = event.live? $('#live').addClass : $('#live').removeClass
    //f.call($('#live'), "live")


    //(event.live? addClass : removeClass).call($('#live'), "live")

    //$('event#'+event.id).render(event)
  }
});


//Event Data --> erb
//
//Event Data --> (websocket) js