const reader = new FileReader()

const select_img = () => {
	document.querySelector('input').click();
	document.querySelector('input').oninput = () => {
	  reader.readAsDataURL( document.querySelector('input').files[0] );
		reader.onload = () => {
			qrcode.decode(reader.result);
		}
	}
}

const allowDrop = e => {
	e.preventDefault();
}

const drop = event => {
	event.preventDefault();
	reader.readAsDataURL(event.dataTransfer.files[0]);
	reader.onload = () => {
		qrcode.decode(reader.result);
	}
}

qrcode.callback = data => {
	document.querySelector('.result').innerText = data;
}

window.addEventListener('paste', event => {
	const files = event.clipboardData.files;
	// document.querySelector('input').files = event.clipboardData.files;
	// reader.readAsDataURL(document.querySelector('input').files[0]);
	reader.readAsDataURL(event.clipboardData.files[0]);
	reader.onload = () => {
		// document.querySelector('.input-area').innerHTML += `<br><br><img src="${reader.result}"></img>`;
		// qrcode.decode(document.querySelector('img').src);
		qrcode.decode(reader.result);
	}
})
