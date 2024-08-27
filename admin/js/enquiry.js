$( document ).ready( function ()
{
var url = baseurl;


function ProductList() {
    $.ajax({
        url: url + 'admin/script/EnquiryList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            // Initialize DataTable
            var reportTable = $('#Enquiry_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
					},
					 { 
					"data": "Name"
					},
					 { 
					"data": "Email"
					},{ 
					"data": "Phone"
					},{ 
					"data": "Subject"
					},{ 
					"data": "Message"
					},{ 
					"data": "Date"
					}
                    
                ]
            });
        },
        error: function (error) {
            console.error('Error fetching data:', error);
        }
    });
}

ProductList();
});