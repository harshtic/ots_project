const email = document.getElementById('email');
const password = document.getElementById('password');

const form = document.getElementById('login-form');

const showError = (input, message) => {
	const formFieldContainer = input.parentElement;
	console.log(formFieldContainer);
	formFieldContainer.className = 'form-field-input-container error';
	const errorMessage = formFieldContainer.querySelector('small');
	errorMessage.innerText = message;
};

const success = (input) => {
	const formFieldContainer = input.parentElement;
	console.log(formFieldContainer);
	formFieldContainer.className = 'form-field-input-container success';
};

const validateEmail = (email) => {
	const re =
		/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	if (re.test(email.value.trim().toLowerCase())) {
		success(email);
	} else {
		showError(email, 'Email is not valid !');
	}
};

const checkIfEmpty = (inputs) => {
	inputs.forEach((input) => {
		if (input.value.trim() == '') {
			let s = input.id;
			let firstLetter = s.substring(0, 1).toUpperCase();
			showError(
				input,
				`${firstLetter}${s.substr(1, s.length)} is required !`
			);
		} else {
			success(input);
		}
	});
};

form.addEventListener('submit', (e) => {
	e.preventDefault();
	checkIfEmpty([email, password]);
	validateEmail(email);
});
