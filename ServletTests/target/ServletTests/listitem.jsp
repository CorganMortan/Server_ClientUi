<%@ page import = "java.util.ArrayList,java.util.Map,database.ItemsCRUD,model.PcStatistics,DispalyContent.Pagination" %>





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


              <%!
              ItemsCRUD db_operation= new ItemsCRUD();
              ArrayList<PcStatistics> items;
              int[] pagin_array=new int[3];
              %>
              <%= Pagination.pagination_size=db_operation.get_count_items()%>
            <h1>first:<%=pagin_array[0]%></h1>
            <h1>last:<%=pagin_array[1]%></h1>
            <h1>curent:<%=pagin_array[2]%></h1>
              <%
              items=db_operation.get_interval_items(1,10);
              for(int i=0;i<items.size();++i){
              %>
              <tbody>
                <tr>
                  <th scope="row"><%= i+1 %></th>
                  <td><%= items.get(i).getPC_ip() %></td>
                  <td><%= items.get(i).getEtherium_wallet() %></td>
                  <td><%= items.get(i).getBitcoi_wallet() %></td>
                  <td><%= items.get(i).getBitcoinCash_wallet() %></td>
                  <td><%= items.get(i).getLitecoin_wallet() %></td>
                </tr>
              </tbody>
              <%
              }
              %>

        </table>

        </div>
</div>





<%=pagin_array=Pagination.pagination_steps()%>
<div class="row">
<div class="col"></div>
<div class="col">
        <div class="paginationinfo" style="height: 60px; width: 400px;">
          <nav aria-label="Page navigation example">
            <ul class="pagination">
            <li class="page-item"><a class="page-link" href="listitem.jsp?action=prev">Previous</a></li>
              <%
                 for(int i=pagin_array[0];i<=pagin_array[1];++i){
               %>

              <li class="page-item"><a class="page-link" href="listitem.jsp?action=<%=i%>"><%=i%></a></li>

               <%
                 }
               %>
              <li class="page-item"><a class="page-link" href="listitem.jsp?action1=next">Next</a></li>
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
