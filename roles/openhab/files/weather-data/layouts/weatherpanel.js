
function startTime() {
    document.getElementById('time').innerHTML = moment().locale('nb').format('HH mm ss');
    document.getElementById('date').innerHTML = moment().locale('nb').format('dddd Do MMMM YYYY');
    
}
window.onload = setInterval(startTime, 1000);