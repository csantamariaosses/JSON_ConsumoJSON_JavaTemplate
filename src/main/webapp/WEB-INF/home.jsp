<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- dataTable -->
    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.21/b-1.6.2/b-html5-1.6.2/datatables.min.css" />

    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>

    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css"/>
    <!-- dataTable #-->
</head>

<body>


    <div class="container my-3">
        <div class="row">
            <div class="col-12 text-center">

               <h3>Listado </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <hr />
                <hr />
                <table id="miTabla">
                    <thead class="thead-light">
                        <tr>
                            <th>Type</th>
                            <th>Id</th>
                            <th>Quote</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach  var="cita" items="${citas}" >
                        <tr>
                           <td>${cita.type}</td>
                           <td>${cita.value.id}</td>
                           <td>${cita.value.quote}</td>
                       </tr>
                        </c:forEach>
                        
                    </tbody>
                    <tfoot class="thead-light">
                        <tr>
                            <th>Type</th>
                            <th>Id</th>
                            <th>Quote</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="col-2"></div>
        </div>
    </div>



    <!-- bootstrap 4 -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <!-- bootstrap 4 #-->


    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <!-- JQuery #-->


    <!-- dataTable -->
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.21/b-1.6.2/b-html5-1.6.2/datatables.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.2.1/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" language="javascript" src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script type="text/javascript" language="javascript" src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script type="text/javascript" language="javascript" src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script type="text/javascript" language="javascript" src="//cdn.datatables.net/buttons/1.2.1/js/buttons.html5.min.js"></script>
    <!-- dataTable #-->

    <!-- JS - Interno. -->
    <script type="text/javascript">
        const url = "https://jsonplaceholder.typicode.com/users"
        fetch(url)
            .then(response => response.json())
            .then(json => {
                $("#miTabla").DataTable(
                {
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'excel', 'pdf'
                        ],
                        
                        language: {
                            url: "https://cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json",
                        },
               });
            });

    </script>
    <!-- JS - Interno. #-->
</body>
</html>