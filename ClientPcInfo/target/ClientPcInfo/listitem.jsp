<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >
    <link rel="stylesheet" href="styles/style.css">
    <title>Admin Panel</title>
  </head>
  <body>



    <div class="nav_bar" >
      <a class="active" href="#home">Admin Panel</a>
        <a href="#news">News</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <div class="logout_component">
          <a class="logoutstyle" href="#logout" >Logout</a>
        </div>

    </div>


<div class="container">

<div class="row">
  <div class="emptycol" style="height:65px; width: 1024px;"></div>
</div>

<div class="row">
    <div class="emptycol" style="height:50px; width: 1024px;">
      <h2>Statistics</h2>
    </div>
</div>


<div class="row">

        <div class="tableinfo" style="width: 1024px;">

          <table class="table">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">IP</th>
                  <th scope="col">Etherium</th>
                  <th scope="col">Bitcoi</th>
                  <th scope="col">Bitcoin Cash</th>
                  <th scope="col">Litecoin</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
              </tbody>
        </table>

        </div>
</div>


<div class="row">
<div class="col"></div>
<div class="col">
        <div class="paginationinfo" style="height: 60px; width: 400px;">
          <nav aria-label="Page navigation example">
            <ul class="pagination">
              <li class="page-item"><a class="page-link" href="http://localhost:8080/ClientPcInfo/client/ClientServlet?action=prev">Previous</a></li>
              <li class="page-item"><a class="page-link" href="http://localhost:8080/ClientPcInfo/client/ClientServlet?action=1">1</a></li>
              <li class="page-item"><a class="page-link" href="http://localhost:8080/ClientPcInfo/client/ClientServlet?action=next">Next</a></li>
            </ul>
          </nav>
        </div>
  </div>
  <div class="col"></div>
</div>

</div>



    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="bootstrap/js/bootstrap.min.js" ></script>
  </body>
</html>
