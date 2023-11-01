$(function(){
    $("#form").load("/form/form.html")
})

function region()
{
    var region = ['(Chọn)', 'Kinh', 'Tày', 'Thái', 'Mường', 'Mèo', 'Mạ', 'H\'Mông', 'Dao', 'Gia Rai',
     'Ê Đê', 'Ba Na', 'Xơ Đăng', 'Sán Dìu', 'Chăm', 'Cơ Ho', 'Ra Glai', 'X\'Tiêng', 'Bru-Vân Kiều', 'Giáy',
      'Cơ Tu', 'Giẻ Triêng', 'M\'nông', 'Thổ', 'Chơ Ro', 'Ô Đu', 'Rơ Măm', 'Chu Ru', 'Lào', 'La Chí', 'La Ha',
       'Phù Lá', 'La Hủ', 'Lự', 'Lô Lô', 'Mảng', 'Cơ Lao', 'Brâu', 'Ơ Đu', 'Pu Péo', 'Ro Ngao', 'La Chi', 'La Rê',
        'Mơ Nông', 'Bố Y', 'Cống', 'Si La', 'Pu Xang', 'La Hu', 'Lựa', 'Lô', 'Chư Ru', 'Krông', 'Hồi', 'M\'bri'];
    var select_region = region.sort();
    var selection = document.getElementsByClassName("choose-region");
    for (var i in selection)
    {
        for (j=0; j < select_region.length; j++)
        {
            var option = document.createElement('option');
            option.text = select_region[j];
            option.value = j;
            selection[i].add(option);
        }
    }
}
region()

function numberKeyPress(input)
{
    var ip = input.value;
    var op = ip.replace(/[^0-9]/g, '');
    input.value = op;
}