var events = {
    checkLiveStatus : function () {
        // ajax call to get event data
        // OR
        // put event data into HTML page as data attributes we can access
        live = $('#live').data('live')
        $('#live').text(live ? "event live" : "event not live");
        live? $('#live').addClass("live") : $('#live').removeClass("live");
    }
};


$(document).ready(function () {
    events.checkLiveStatus();
});