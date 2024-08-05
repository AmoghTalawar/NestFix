function otpSend(){
    const email = document.getElementById('email');
    const otpverify = document.getElementsByClassName('otpverify')[0];

    let otp_val = Math.floor(Math.random() * 10000);

    let emailbody = `<h2><img src="https://iili.io/JXJ2ifR.png"><br>Your NestFix website  Reset Password OTP :</h2>${otp_val}`;
    
    Email.send({
        SecureToken : "f97b1fdc-e061-4a1b-bbda-99c09d1c6cbc",
        To : email.value,
        From : "nestfix07@gmail.com",
        Subject : "NestFix",
        Body : emailbody,
    }).then(message => {
        if (message === "OK") {
            alert("OTP sent to your email " + email.value);

            otpverify.style.display = "flex";

            const otp_inp = document.getElementById('otp_inp');
            const otp_btn = document.getElementById('otp-btn');

            otp_btn.addEventListener('click', () => {
                if (otp_inp.value == otp_val) {
                    alert("Email address verified...");
                    window.location.href = `forgotpassword.jsp?email=${email.value}`;
                    
                } else {
					alert("Invalid OTP!!!!");
                            
				}
            });
        }
    });
}
