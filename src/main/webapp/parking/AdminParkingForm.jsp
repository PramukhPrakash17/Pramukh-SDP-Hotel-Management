<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>AdminParking</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f9f9f9;
}

/* .container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border: 1px solid #ccc;
} */
.form-container {
            display: flex;
            flex-direction: column;
            width: 500px; /* Set the width of the form */
            padding: 20px;
            margin: auto; /* Center the form horizontally */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Optional: adds shadow for better visibility */
        }
        .radio-group {
            margin: 10px 0;
        }
        .radio-option {
            display: block;
            margin: 5px 0; /* Adds space between radio buttons */
        }
        .radio-option label {
            margin-left: 5px; /* Space between radio button and its label */
        }
        #searchField {
            margin: 10px 0;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<form action="AdminParking" method="post" class='form-container'>
		<h2>Welcome to Admin Parking!</h2>
		<br>
		<p>Please select your option:</p>
		 <input type="radio" name="option" value="view" checked
			onclick="showSearchField(this)"><span>Select here to view all
		parking details </span><br> <input type="radio" name="option"
			value="search" onclick="showSearchField(this)"><span>Search by room
		number</span>
		<div id="searchField" style="display: none;">
			<input type="text" name="searchValue" id="searchValue"
				oninput="updateOptionValue(this)"> Enter the Room Number <br>
		</div>
		<input type="submit" value="Submit">
	</form> 


	<script>
		 function showSearchField(radio) {
			var searchField = document.getElementById("searchField");
			if (radio.value === "search") {
				searchField.style.display = "block";
			} else {
				searchField.style.display = "none";
				document.getElementById("searchValue").value = "";
			}
		} 
		
		
	</script>
</body>
</html>