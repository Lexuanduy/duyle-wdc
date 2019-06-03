// create new phone
$("#create").click(
		function() {
			var name = $("#name").val();
			var price = $("#price").val() * 1;
			var description = $("#description").val();
			var _brand = document.getElementById("brand");
		    var brand = _brand.options[_brand.selectedIndex].value;
		    console.log("brand: " + brand);

			if (isNaN(price)) {
				Swal({
					type : 'error',
					title : 'Please enter price phone is number.',
					text : 'Save error!'
				});
				return;
			}
			if (name.lenght < 5) {
				Swal({
					type : 'error',
					title : 'Please enter price phone.',
					text : 'Save error!'
				});
				return;
			}
			if (name.lenght < 3) {
				Swal({
					type : 'error',
					title : 'Please enter name phone.',
					text : 'Save error!'
				});
				return;
			}
			if (description.lenght < 3) {
				Swal({
					type : 'error',
					title : 'Please enter description.',
					text : 'Save error!'
				});
				return;
			}
			$.ajax({
				url : '/create?name=' + name + "&price=" + price
						+ "&description=" + description + "&brand=" + brand,
				type : 'post',
				contentType : 'application/x-www-form-urlencoded',
				success : function(data, textStatus, jQxhr) {
					 Swal({
				            position: 'center',
				            type: 'success',
				            title: 'Create success!',
				            showConfirmButton: false,
				            timer: 1500
				        });
					 setTimeout(function(){ window.location="/list"; }, 3000);
				},
				error : function(jqXhr, textStatus, errorThrown) {
					console.log(errorThrown);
				}
			});
		});