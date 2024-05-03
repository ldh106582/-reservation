import React, { useState } from 'react';

function gptForm(){
	const [inputValue, setInputValue] = useState('');
	
	const hanldeSubmit = (evnet) => {
		event.preventDefault();
		cconsole.log(inputValue);
	};
	
	const handleChange = (event) => {
		setInputValue(event.target.value);
	};
	
	return (
    <div className="fix border border-dark">
      <div>
        <form id="gptchat" onSubmit={handleSubmit}>
          <input 
            type="text" 
            value={inputValue} 
            onChange={handleChange} 
          />
          <input type="submit" value="Submit" />
        </form>
      </div>
    </div>
  );
}