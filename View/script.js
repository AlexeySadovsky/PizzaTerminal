function getFormData(){
    let dataType = $("[name='pizzaType']");
    let dataSize = $("[name='pizzaSize']");
    let dataSauce = $("[name='pizzaSauce']");
    let type = dataType[0];
    let size = dataSize[0];
    let sauce = dataSauce[0]
    sendData(type.value, size.value, sauce.value);

}

function sendData(type, size, sauce){
    $.ajax({
        method: "POST",
        url: '../Controller/logic.php',
        // processData: false,
        data: {
            'type': type,
            'size': size,
            'sauce': sauce
        },
        success: function (req) {
            let data = JSON.parse(req);
            printCheck(data);
        }
    })
}

function printCheck(data) {
    console.log(data);
    let WinPrint = null;
    WinPrint = window.open('', '', 'left=0,top=0,width=400,height=200,toolbar=0,scrollbars=1,status=0');
    if (WinPrint != null) {
        WinPrint.document.write('<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title> Товарный чек</title>');
        WinPrint.document.write('</head>');
        WinPrint.document.write('<body>');
        WinPrint.document.write('<div class="content">');
        WinPrint.document.write('<p id="1"></p>');
        WinPrint.document.getElementById("1").innerHTML= data[0].toString() + "...................." + data[1].toString() + "руб";
        WinPrint.document.write('<p id="2"></p>');
        WinPrint.document.getElementById("2").innerHTML=data[2].toString() + "...................." + data[3].toString();
        WinPrint.document.write('<p id="3"></p>');
        WinPrint.document.getElementById("3").innerHTML=data[4].toString() + "...................." + data[5].toString() + "руб";
        WinPrint.document.write('<hr><pre>');
        WinPrint.document.write('<p id="4"></p>');
        WinPrint.document.getElementById("4").innerHTML="Общая стоимость:             " + data[6].toString() + "руб";
        WinPrint.document.write('</pre>');
        WinPrint.document.write('</div>');
        WinPrint.print();
        WinPrint.document.write('</body></html>');
        WinPrint.document.close();
        WinPrint.focus();
    }
}