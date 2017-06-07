// function smth()
// {
// 	var x = window.localStorage.getItem('aaa');   // x = localStorage['aaa']
// 	x = x*1 + 1;	// x = x + 1   // x * 1 to tranform string into integer
// 	window.localStorage.setItem('aaa', x); // localstorage['aaa'] = x
// 	alert(x);		
// }


function add_to_cart(id)
{
	var hash_key = 'product_' + id;
	var x = window.localStorage.getItem(hash_key);
	x = x * 1 + 1
	window.localStorage.setItem(hash_key, x);
	alert (hash_key);
	orders_input();
}

function buyalert(title){
	alert(title);
}


function items_in_cart()
{
	var total = 0;
	for(var i=0; i < localStorage.length; i++)
	{
   	 var key = localStorage.key(i);
   	 var total = total*1 + localStorage[key]*1;
    }
     return total;     
}

function orders_input()
{
	var orders = orders_list();
	$('#orders_input').val(orders);
	button_update();
}

function orders_output_database()
{
	var orders = orders_list();
	$('#orderdata').val(orders);	
	button_update();
}

function button_update()
{
	var text = 'Cart' + ' ' + '(' + items_in_cart() + ')';
	$('#cart_btn').val(text);
}

function orders_list()
{
	var list = '';
	for(var i=0; i < localStorage.length; i++)
	{
   	 var key = localStorage.key(i);   //localStorage.key = key , localStorage[key] = value
   	 var list = list + localStorage.key(i) + '=' + localStorage[key] + ',';
   	}
     return list;
}

function table_orders_insert() 
{
	var code_insert=document.getElementById("orders_table");
    for (var i=0; i < localStorage.length; i++) 
    {	
    	var key = localStorage.key(i);
		code_insert.innerHTML += "<tr><td>" + localStorage.key(i) + "</td><td>" + localStorage[key] + "</td></tr>";       
    }
}

function orders_clear()
{
	// window.location.replace("http://localhost:4567/about");
	window.localStorage.clear();

}

// function tableCreate() 
// {
//     var body = document.getElementsByTagName('body')[0];
//     var tbl = document.createElement('table');
//     tbl.style.width = '30%';
//     tbl.align = "center";
//     tbl.fontSize = "15";
//     tbl.setAttribute('border', '0');

// 	var tbdy = document.createElement('tbody');
//     for (var i=0; i < 1; i++){
//         var tr = document.createElement('tr');
//         for (var j = 0; j < 1; j++){            
//         	var td = document.createElement('td');
//             td.appendChild(document.createTextNode('Product ID'));
//             tr.appendChild(td)}
//         for (var j = 0; j < 1; j++){            
//         	var td = document.createElement('td');
//             td.appendChild(document.createTextNode('Quantity'));
//             tr.appendChild(td)}
//         tbdy.appendChild(tr);}
//     tbl.appendChild(tbdy);

//     var tbdy = document.createElement('tbody');
//     for (var i=0; i < localStorage.length; i++) 
//     {
//         var tr = document.createElement('tr');
//         for (var j = 0; j < 1; j++) 
//         {            
//         	var td = document.createElement('td');
//             td.appendChild(document.createTextNode(localStorage.key(i)));
//             tr.appendChild(td)
//         }

//         var key = localStorage.key(i);

//         for (var j = 0; j < 1; j++) 
//         {            
//         	var td = document.createElement('td');
//             td.appendChild(document.createTextNode(localStorage[key]));
//             tr.appendChild(td)
//         }

//         tbdy.appendChild(tr);
//     }
//     tbl.appendChild(tbdy);
//     body.appendChild(tbl)
// }


