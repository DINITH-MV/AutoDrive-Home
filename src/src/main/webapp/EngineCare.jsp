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
    <link rel="stylesheet" href="./css/EngineCare.css" />
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
        <a href="#"
          >SERVICES</a
        >
        <a href="#">PACKAGES</a>
        <a href="#"
          >ABOUT US</a
        >
        <a href="#">CONTACT US</a>
        <div class="animation start-services"></div>
      </nav>
    </div>
    <div class="firstPart"></div>
    <div class="backBox">
      <div class="diagonal-split3">
        <div class="banner">Engine Care</div>
      </div>
    </div>
    <div class="SecondSession"></div>
    
    
    <form action="EngineCareAppointmentServlet" method="POST">
    
      <div class="container">
        <h1>Engine care service</h1>
        <div class="row">
          <label for="fname">First name:</label>
          <input
          	required autocomplete="off"
            type="text"
            id="fname"
            name="fname"
            placeholder="First name"            
          />
        </div>
        <div class="row">
          <label for="lname">Last name:</label>
          <input
          	required autocomplete="off"
            type="text"
            id="lname"
            name="lname"
            placeholder="Last name"
          />
        </div>
        <div class="row">
          <label for="phone">Phone number:</label>
          <input
          	required autocomplete="off"
            type="number"
            id="phone"
            name="contactNum"
            placeholder="Contact number"
          />
        </div>
        <div class="row">
          <label for="vehicle_type">Vehicle type:</label>
          <select id="vehicle_type" name="VehicleType">
            <option value="car">Car</option>
            <option value="van">Van</option>
            <option value="truck">Truck</option>
            <option value="motorcycle">Motorcycle</option>
          </select>
        </div>
        <div class="row">
          <label for="vehicle_number">Vehicle number:</label>
          <input 
          	required autocomplete="off"
            type="text"
            id="VehicleNum"
            name="VehicleNum"
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
          <input type="datetime-local" id="date_time" name="dateTime" />
        </div> 
              
        <div class="checkbox-group">
            <h4>Select the service</h4> 
            <input type="checkbox" id="Change_the_Engine oil" name="services" value="Change_the_Engine oil"	autocomplete="off">
            <label for="Change_the_Engine oil">Wash and grooming</label></br>
          
            <input type="checkbox" id="Air_Filter_Replacement" name="services" value="Air_Filter_Replacement" autocomplete="off">
            <label for="Air_Filter_Replacement">Lube services</label></br>
          
            <input type="checkbox" id="Spark_Plug_Replacement" name="services" value="Spark_Plug_Replacement" autocomplete="off">
            <label for="Spark_Plug_Replacement">Exterior and interior detailing</label></br>
          
            <input type="checkbox" id="engine_tune_ups" name="services[]" value="engine_tune_ups">
            <label for="engine_tune_ups">Engine tune ups</label></br>
          
            <input type="checkbox" id="undercarriage_degreasing" name="services" value="undercarriage_degreasing">
            <label for="undercarriage_degreasing">Undercarriage degreasing</label></br>
          
            <input type="checkbox" id="Fuel_System_Cleaning" name="services" value="Fuel_System_Cleaning">
            <label for="Fuel_System_Cleaning">Windscreen treatments</label></br>
          
            <input type="checkbox" id="Coolant_Check" name="services[]" value="Coolant_Check">
            <label for="Coolant_Check">Inspection reports</label></br>
          
            <input type="checkbox" id="Belt_and_Hose_Inspection" name="services" value="Belt_and_Hose_Inspection">
            <label for="Belt_and_Hose_Inspection">Insurance claims</label></br>
          
            <input type="checkbox" id="other" name="services" value="other"	autocomplete="off">
            <label for="other">Other</label>
          </div>          
          <div class="row">
            <label for="anything_else">Anything else?</label>
            <textarea id="anything_else" name="anything_else"
            placeholder="Anything else you would like to let us know?"></textarea>
          </div>
          <input type="hidden" value = "EngineCare" name="sType"/>
        <div class="row">
          <input type="submit" value="Submit" name="Submit"/>
        </div>
      </div>      
    </form>
    <div class="Footer"></div>
  </body>
</html>
