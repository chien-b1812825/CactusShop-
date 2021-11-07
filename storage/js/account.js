
            var LogiForm =document.getElementById("LoginForm");
            var RegForm =document.getElementById("RegForm");
            var Indicator = document.getElementById("Indicator");

            function register(){
                RegForm.style.transform = "translateX(0px)";
                LogiForm.style.transform = "translateX(0px)";
                Indicator.style.transform = "translateX(100px)";
            }

            function login(){
                RegForm.style.transform = "translateX(300px)";
                LogiForm.style.transform = "translateX(300px)";
                Indicator.style.transform = "translateX(0px)";
            }