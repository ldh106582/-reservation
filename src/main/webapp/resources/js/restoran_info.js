const gptchat = document.getElementById("gptchat");
const userInput = document.getElementById("userinput");
const talk = document.getElementById('talk');

gptchat.addEventListener('submit', function(event){
	event.preventDefault();

	const message = userInput.value;
	
	
	userInput.value = '';
});

function displayMessage(message){
	const t_message = document.createElement('div');
	messageElement.textContect = message;
	talk.appendChild(t_message);
}