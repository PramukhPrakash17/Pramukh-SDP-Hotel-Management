<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Details</title>
    <link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
    <style>
        html, body {
            min-height: 100%;
            margin: 0;
            color: #333;
        }
        .container {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
            width: auto;
            max-width: 500px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-top: 20px;
        }
        input[type="text"], input[type="email"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
            box-shadow: 0 2px 4px rgba(0,0,0,0.2);
        }
        label {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
    <div class="container">
        <h2>Booking Details</h2>
        <form action="room_checkin" method="POST">
            <label for="bookingId">Booking ID:</label>
            <input type="text" name="bookingId" id="bookingId" value="${bookingId}" readonly>

            <label for="customerId">Customer ID:</label>
            <input type="text" name="customerId" id="customerId" value="${customerId}" readonly>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" value="${email}" readonly>

            <%-- Calculate Today's Date in ISO Format --%>
            <%@ page import="java.time.LocalDate" %>
            <%
                LocalDate today = LocalDate.now();
            %>
            <label for="checkInDate">Check-In Date:</label>
            <input type="date" name="checkInDate" id="checkInDate" value="${checkInDate}" min="<%= today.toString() %>">

            <label for="checkOutDate">Check-Out Date:</label>
            <input type="date" name="checkOutDate" id="checkOutDate" value="${checkOutDate}" min="<%= today.toString() %>">

            <label for="roomType">Room Type:</label>
            <input type="text" name="roomType" id="roomType" value="${roomType}" readonly>

            <label for="roomView">Room View:</label>
            <input type="text" name="roomView" id="roomView" value="${roomView}" readonly>

            <label for="price">Price:</label>
            <input type="text" name="price" id="price" value="${price}" readonly>

            <input type="submit" value="Confirm Details">
        </form>
    </div>
</body>
</html>
