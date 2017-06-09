function orders_clear()
{
	window.localStorage.clear();
}

function recast()
{
	var x = 'Cart is empty!';
	$('#ordertable').text(x);
	window.localStorage.clear();
	button_update();
}

function add_to_cart(id)
{
	var hash_key = 'product_' + id;
	var x = window.localStorage.getItem(hash_key);
	x = x * 1 + 1;
	window.localStorage.setItem(hash_key, x);
	alert (hash_key);
	orders_input();
	button_update();
}

function orders_input()
{
	var orders = orders_list();
	$('#orders_input').val(orders);
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

function orders_output_database()
{
	var orders = orders_list();
	$('#orderdata').val(orders);	
	button_update();
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

