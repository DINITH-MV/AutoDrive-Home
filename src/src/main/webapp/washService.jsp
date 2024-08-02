<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="./css/washservice.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    />
  </head>
  <body>
    <i class="fa fa-wrench fa-shake"></i>
    <div class="logo">Auto Drive</div>
    <div class="navBar">
      <nav>
        <a href="#">HOME</a>
        <a href="#">SERVICES</a>
        <a href="#">PACKAGES</a>
        <a href="#">ABOUT US</a>
        <a href="#">CONTACT US</a>
        <div class="animation start-services"></div>
      </nav>
    </div>
    <div class="firstPart"></div>
    <div class="backBox">
      <div class="diagonal-split3">
        <div class="banner">Wash service</div>
      </div>
    </div>
    <div class="SecondSession"></div>
    <form action="WashingServiceAppointmentServlet" method="post">
      <div class="container">
        <h1>Washing Service</h1>
        <div class="row">
          <label for="fname">First name:</label>
          <input
            type="text"
            id="fname"
            name="firstname"
            placeholder="First name"
          />
        </div>
        <div class="row">
          <label for="lname">Last name:</label>
          <input
            type="text"
            id="lname"
            name="lastname"
            placeholder="Last name"
          />
        </div>
        <div class="row">
          <label for="phone">Phone number:</label>
          <input
            type="tel"
            id="phone"
            name="phone"
            placeholder="Phone number"
          />
        </div>
        <div class="row">
          <label for="vehicle_type">Vehicle type:</label>
          <select id="vehicle_type" name="vehicle_type">
            <option value="car">Car</option>
            <option value="van">Van</option>
            <option value="truck">Truck</option>
            <option value="motorcycle">Motorcycle</option>
          </select>
        </div>
        <div class="row">
          <label for="vehicle_number">Vehicle number:</label>
          <input
            type="text"
            id="vehicle_number"
            name="vehicle_number"
            placeholder="Vehicle number"
          />
        </div>

        <div class="row">
          <label for="branch">Branch:</label>
          <select id="branch" name="branch">
            <option value="dehiwala">Dehiwala</option>
            <option value="colombo">Colombo</option>
            <option value="negombo">Negombo</option>
            <option value="galle">Galle</option>
          </select>
        </div>
        <div class="row">
          <label for="date_time">Date and time:</label>
          <input type="datetime-local" id="date_time" name="date_time" />
        </div>

        <input type="hidden" value="AccidentRepair" name="sType" />

        <div class="row">
          <label for="anything_else">Anything else?</label>
          <textarea
            id="anything_else"
            name="anything_else"
            placeholder="Anything else you would like to let us know?"
          ></textarea>
        </div>
        <div class="row">
          <input type="submit" value="Submit" />
        </div>
      </div>
    </form>
    <div class="Footer"></div>
  </body>
</html>
