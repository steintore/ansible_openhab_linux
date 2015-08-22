var returnValue = 'OFF'
var value = JSON.parse(input).data.level.value

if (value == 255) returnValue = 'ON'
returnValue;