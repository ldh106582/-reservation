var reserve = document.getElementById("reserve");

reserve.addEventListener("click", function()
{
	var input = document.getElementById("checkin_date");
	input.type = 'date';
});

// 체크했을 때 나타나도록 하는 것
document.addEventListener('DOMContentLoaded', function() {
  var checkboxes = document.querySelectorAll('.clickable');

  checkboxes.forEach(function(checkbox) {
    checkbox.addEventListener('click', function() {
      var text = checkbox.nextElementSibling.textContent;
      var displayTextDiv = document.getElementById('displaytext');
      displayTextDiv.textContent = text;
    });
  });
});