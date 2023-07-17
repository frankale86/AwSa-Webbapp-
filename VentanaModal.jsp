<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ventana Modal</title>	 
	<link rel="stylesheet" href="../../css/fontawesome-all.min.css">
	<link rel="stylesheet" href="../../css/common-1.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->

    <!-- iconos -->
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!-- Fin iconos -->
	
	<!-- Esto activa la Ventana Modal -->
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body>
	<div class="container">
		 <div class="row">
			  <div class="span12">
				   <form class="form-horizontal" action='' method="POST">
				        <fieldset>
	   			        	<legend class="">Ventana Modal Base...</legend>	   			        					      
				        </fieldset>
				   </form>
			  </div>
		</div>
		
	    <!-- ------------------------------------------------------------------- -->
		<br>
		Iconos
		<br>
	    
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
		  Launch demo modal
		</button>
		<!-- PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP -->
		
		<!-- PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP -->
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			 <div class="modal-dialog" role="document">
				   <div class="modal-content">
					     <div class="modal-header">
					          <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">×</span>
					          </button>
					     </div>
					      
					     <div class="modal-body">
					        ...
					     </div>
					      
					     <div class="modal-footer">
					           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					           <button type="button" class="btn btn-primary">Save changes</button>
					     </div>
				   </div>
			 </div>
		</div>
	    <!-- ------------------------------------------------------------------- -->
	</div>
</body>

</html>