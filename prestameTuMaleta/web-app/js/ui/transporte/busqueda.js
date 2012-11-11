$(document).ready(function() {

    var hoy = new Date();
    var hoyTxt = hoy.getFullYear() + '-' + hoy.getMonth() + '-' + hoy.getDate();
//    http://www.eyecon.ro/datepicker/#implement
    $('#calendario').DatePicker({
        flat: true,
        date: ['2012-11-18','2012-11-30'],  //fechas de transportes disponibles
        current: hoyTxt,
        calendars: 3,  //tres meses
        mode: 'multiple',
        format: 'Y-m-d',   //formato YYYY-MM-DD
        starts: 1,  //lunes
        onChange: function(fechasConFormato, fechasSinFormato) {
            console.log(fechasConFormato);
            console.log(fechasSinFormato);
        },
        onRender: function(date) {
            console.log(date);
            return {}
        }
    });
    $('#calendario').DatePickerShow();

});
