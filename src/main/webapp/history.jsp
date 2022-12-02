<%@page import="java.util.ArrayList"%>
<%@page import="com.Accio.HistoryResult"%>


<html>
<head>
   <link rel = "stylesheet" type = "text/css" href = "styles.css">
</head>
<body>
<h1 style="background-color:#C4A484;">History</h1>
  </div>
      <div class "BackButton">
  <button type="button" name="Back" onclick="history.back()">Back</button>
  </div>

   <div class = "resultTable">
     <table border = 2>
      <tr>
        <td>Name</td>
        <td>Link</td>
      </tr>
       <%
          ArrayList<HistoryResult> results = (ArrayList<HistoryResult>) request.getAttribute("results");
          for(HistoryResult result : results){
       %>
      <tr>
         <td><%out.println(result.getName());%></td>
         <td><a href = "%out.println(result.getLink());%"><%out.println(result.getLink());%></a></td>
      </tr>
      <%
        }
      %>

    </table>

</body>
</html>
