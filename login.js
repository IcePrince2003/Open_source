//Bắt sự kiện checkbox đăng nhập
document.getElementById('login').onclick = function()
{
    if (document.getElementById('login').checked)
        document.getElementById('Password').type = 'text';
    else document.getElementById('Password').type = 'password';
}