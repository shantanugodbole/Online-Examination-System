function secondPassed(seconds) {
    
  var minutes = Math.round((seconds - 30) / 60);
  var remainingSeconds = seconds % 60;
  if (remainingSeconds < 10) {
    remainingSeconds = "0" + remainingSeconds;
  }
  document.getElementById("countdown").innerHTML =
    "Remaining Time " + minutes + ":" + remainingSeconds;
  if (seconds == 0) {
    clearInterval(countdownTimer);
    document.getElementById("countdown").innerHTML = "TIme up! Submit Now!";
  } else {
    seconds--;
  }
}
// var countdownTimer = setInterval("secondPassed()", 1000);
