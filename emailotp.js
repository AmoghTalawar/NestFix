function sendOTP() {
    const email = document.getElementById('email');
    const otpverify = document.getElementsByClassName('otpverify')[0];
    let otp_val = Math.floor(Math.random() * 10000);
    let emailbody = `<h2><br>Your NesFix website password reset OTP :</h2>${otp_val}`;
    
    Email.send({
        SecureToken :"00c5a91d-97f4-47ef-a383-eb3b241ea9d0",
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
                    window.location.href = `newpass.jsp?email=${email.value}`;
                } else {
                    alert("Invalid OTP!!!!");
                }
            });
        }
    }).catch(error => {
        console.error("Error occurred while sending OTP:", error);
        alert("Error occurred while sending OTP. Please try again later.");
    });
}
