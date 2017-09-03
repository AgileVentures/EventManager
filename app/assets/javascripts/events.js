
var EventManager = {};

EventManager.events = {
    checkLiveStatus : function () {
        return $('#live').data('live');
        // would it be interesting to see this also done via ajax?
    },
    updateLiveStatusAndStyle : function (live){
        $('#live').text(live ? "event live" : "event not live");
        live? $('#live').addClass("live") : $('#live').removeClass("live");
    }
};

$(document).ready(function () {
    var live = EventManager.events.checkLiveStatus();
    EventManager.events.updateLiveStatusAndStyle(live);
});