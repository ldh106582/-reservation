const talk = document.getElementById('talk');
const gptchat = document.getElementById('gptchat');
const userinput = document.getElementById('userinput');

gptchat.addEventListener('submit', function(event){
	event.preventDefault();
	
	const message = userinput.value;
	
	addMessage(message);
	userinput.value = '';
});

function addMessage(message) {
	const messageElement = document.createElement('div');
	
	messageElement.textContent = message;
	messageElement.classList.add('me');
	
	talk.appendChild(messageElement);
}