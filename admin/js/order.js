$( document ).ready( function ()
{
var url = baseurl;


function OrderList(id) {
    $.ajax({
        url: url + 'admin/script/OrderList.php',
        method: 'POST',
        dataType: 'json',
		data : {
			id : id
		},
		searchable: true,
        success: function (data) {
            // Initialize DataTable
            var reportTable = $('#Order_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
					},
					 { 
					"data": "Bill_FirstName",
					 "render": function (data, type, full, meta) {
                            return data +' '+full.Bill_LastName;
                        }
					},
					 { 
					"data": "Order_ID",
					"render": function (data, type, full, meta) {
                            return '#'+data;
                        }
					},
				  {
                        "data": "payment_date"
                    },{
						"data": "Order_status"
					},
					 { 
					"data": "Order_status",
					"render": function (data, type, full, meta) {
						if (full.Order_status === 'pending') {
                    pen = 'success';
                } else {
                    pen = 'danger';
                }
                if (full.Order_status === 'confirm') {
                    con = 'success';
                } else {
                    con = 'danger';
                }
                if (full.Order_status === 'process') {
                    pro = 'success';
                } else {
                    pro = 'danger';
                }
                if (full.Order_status === 'cancelled') {
                    can = 'success';
                } else {
                    can = 'danger';
                }
                if (full.Order_status === 'delivered') {
                    dev = 'success';
                } else {
                    dev = 'danger';
                }
				
					return '<div class="row d-flex">'+
						   '<span id="ostatus" class="badge badge-'+ pen +' px-2 m-1" data-id="'+full.id+'" data-status="pending">Pending</span>'+
						   '<span id="ostatus" class="badge badge-'+ con  +' px-2 m-1" data-id="'+full.id+'" data-status="confirm">Confirm</span>'+
						   '<span id="ostatus" class="badge badge-'+ pro +' px-2 m-1" data-id="'+full.id+'" data-status="process">Process</span>'+
						   '<span id="ostatus" class="badge badge-'+ dev +' px-2 m-1" data-id="'+full.id+'" data-status="delivered">Delivered</span>'+
						   '<span id="ostatus" class="badge badge-'+ can +' px-2 m-1" data-id="'+full.id+'" data-status="cancelled">Cancelled</span></div>';
                        }
					},
					 { 
					"data": "Payment_status"
					},{ 
					"data": "id",
					"render": function (data, type, full, meta) {
					return '<span id="Edit" class="btn badge badge-primary" data-id="'+full.id+'" data-order="'+full.Order_ID+'">View</span>';
                        }
					},
                    
                ]
            });
        },
        error: function (error) {
            console.error('Error fetching data:', error);
        }
    });
}

$(document).on('click', '#ostatus', function() {
    var Order_ID = $(this).attr('data-id');
    var Order_Status = $(this).attr('data-status');
	$.ajax({
        url: url +"admin/script/ostatus.php",
        method: "POST",
        cache: false,
        data: {
            Order_ID: Order_ID,
            Order_Status: Order_Status
        },
        success: function(data) {
			  var obj = jQuery.parseJSON(data);
            if (obj.error == 'success') {
				  toastr.success(obj.msg)
               OrderList();
            } else {
		toastr.error(obj.msg)
            }
        }
    })
 
});


$(document).on('click', '#orderstatus', function() {
	  var id = $(this).attr("data-status");
	 OrderList(id);
});

$(document).on('click', '#Edit', function() {
	  var id = $(this).attr("data-id");
	  window.location.href= url + "admin/details.php?id="+id;
});



OrderList();

});