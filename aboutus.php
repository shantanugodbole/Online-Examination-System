<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.aboutuscenter {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
  <h1>About Us</h1>
  <p>SY Computers : Batch B1 of 2018-22</p>
  <p>This Online Examination System is our final project of the course MiniProject</p>
  <p>Our mentor was Manish Potey Sir</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="image/aboutus_jc.png" alt="Jugal" height="250" width="250" class="aboutuscenter">
      <div class="container">
        <h2 style="text-align:center">Jugal Chauhan</h2>
        <p style="text-align:center" class="title">Collaborator</p>
        <p style="text-align:center">Roll Number : 1811071</p>
        <p style="text-align:center" >jugal.dc@somaiya.edu</p>
        <form action="https://github.com/jugal-chauhan/">
          <p><button class="button">Github</button></p>
        </form>
        <form action="https://www.linkedin.com/in/jugal-chauhan-8422b9157/">
          <p><button class="button">LinkedIN</button></p>
        </form>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="image/aboutus_sg.png" alt="Shantanu" height="250" width="250" class="aboutuscenter">
      <div class="container">
        <h2 style="text-align:center">Shantanu Godbole</h2>
        <p style="text-align:center" class="title">Collaborator</p>
        <p style="text-align:center">Roll Number : 1811079</p>
        <p style="text-align:center">shantanu.godbole@somaiya.edu</p>
        <form action="https://github.com/shantanugodbole/">
          <p><button class="button">Github</button></p>
        </form>
        <form action="https://www.linkedin.com/in/shantanu-godbole-988278128/">
          <p><button class="button">LinkedIN</button></p>
        </form>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="image/aboutus_ag.png" alt="Anjali" height="250" width="250" class="aboutuscenter">
      <div class="container">
        <h2 style="text-align:center">Anjali Gohil</h2>
        <p style="text-align:center" class="title">Collaborator</p>
        <p style="text-align:center">Roll Number : 1811080</p>
        <p style="text-align:center">anjali.gohil@somaiya.edu</p>
        <form action="https://github.com/anjaligohil1909">
          <p><button class="button">Github</button></p>
        </form>
        <form action="">
          <p><button class="button">LinkedIN</button></p>
        </form>
      </div>
    </div>
  </div>
</div>

</body>
</html>

