function getDateString()
{
    var d = new Date();
    var month = ["January", "February", "March", "April",
        "May", "June", "July", "August", "September",
        "October", "November", "December"];
    var curMonth = month[d.getMonth()];
    var curDay = d.getDate();
    var curDaySuffix = "th";
    switch(curDay%10)
    {
        case 1:
        {
            curDaySuffix = "st";
            break;
        }
        case 2:
        {
            curDaySuffix = "nd";
            break;
        }
        case 3:
        {
            curDaySuffix = "rd";
            break;
        }
    }
    var curHour = (d.getHours() % 12);
    var curHourSuffix = "AM";
    if(d.getHours() >= 12) curHourSuffix = "PM";
    if(curHour == 0) curHour = 12;

    var curMin = d.getMinutes();
    var curMinPrefix = "";
    if(curMin < 10) curMinPrefix = "0";

    var dateString = curMonth.toString() + ' ' + curDay.toString() + curDaySuffix + ', ' + d.getFullYear() +
            ' ' + curHour.toString() + ':' + curMinPrefix + curMin.toString() + ' ' + curHourSuffix;

    return dateString;
}

function changeResults(newStyle)
{
    document.getElementById("coin_result").style = newStyle;
}

function setRandomBG()
{
    var randomBG = Math.floor((Math.random() * 2) + 1);
    var bgURL = "url('/images/bg" + randomBG.toString() + ".gif')";
    document.body.style.backgroundImage = bgURL;
    document.body.style.backgroundSize = "cover";
    document.body.style.backgroundPosition = "center";
}