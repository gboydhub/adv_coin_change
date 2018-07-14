function popupDate()
{
    var d = new Date();
    var month = ["January", "February", "March", "April",
        "May", "June", "July", "August", "September",
        "October", "November", "December"];
    var curMonth = d.getMonth() + 1;
    var curDay = d.getDate();
    var curHour = (d.getHours() % 12);
    var curMin = d.getMinutes();
    var dateString = curMonth.toString() + '/' + curDay.toString() + '/' + d.getFullYear() +
            ' ' + curHour.toString() + ':' + curMin.toString();

    window.alert(dateString);
}