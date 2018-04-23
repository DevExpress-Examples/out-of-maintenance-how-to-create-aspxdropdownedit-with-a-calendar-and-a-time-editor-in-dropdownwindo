function onClickOkButton(s, e) {
    var date = calendar.GetSelectedDate();
    var hours = comboBoxOfHour.GetValue();
    var minutes = comboBoxOfMinute.GetValue();

    if (hours == null || minutes == null)
        return;

    var dateTime = new Date(date.getFullYear(), date.getMonth(), date.getDate(), hours, minutes);
    dde.SetValue(dateTime);
    dde.SetText(dateTime.toCustomFormatString());
    dde.HideDropDown();
    dde.Validate();
}

function onClickCancelButton(s, e) {
    dde.HideDropDown();
}

function onDropDownOpen(s, e) {
    var value = s.GetValue();

    if (incorrectValue(value))
        return;

    var arDate = value.split(' ');
    var dateParse = arDate[0].split('/');
    var date = new Date(dateParse[2], dateParse[0] - 1, dateParse[1]);
    calendar.SetVisibleDate(date);
    calendar.SetSelectedDate(date);

    var timeParse = arDate[1].split(':');
    var hours = parseInt(timeParse[0]);
    hours = (isNaN(hours)) ? '00' : hours;
    var minutes = parseInt(timeParse[1]);
    minutes = (isNaN(minutes)) ? '00' : minutes;
    comboBoxOfHour.SetValue(hours);
    comboBoxOfMinute.SetValue(minutes);
}

function onDateValidation(s, e) {
    var value = s.GetValue();

    if (incorrectValue(value))
        return;

    var date = new Date(value);
    if (date instanceof Date && !isNaN(date.valueOf())) {
        s.SetText(date.toCustomFormatString());
    }
    else{
        e.isValid = false;
    }
}

if (!Date.prototype.toCustomFormatString) {
    Date.prototype.toCustomFormatString = function () {
        var dateSep = '/';
        var timeSep = ':';

        var month = this.getMonth() + 1;
        month = (month < 10) ? '0' + month : month;
        var date = (this.getDate() < 10) ? '0' + this.getDate() : this.getDate();
        var hours = (this.getHours() < 10) ? '0' + this.getHours() : this.getHours();
        var minutes = (this.getMinutes() < 10) ? '0' + this.getMinutes() : this.getMinutes();

        return month + dateSep + date + dateSep + this.getFullYear() + ' ' + hours + timeSep + minutes;
    }
}

function incorrectValue(value) {
    return value == '' || value == null;
}