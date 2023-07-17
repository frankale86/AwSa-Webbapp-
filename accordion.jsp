<!DOCTYPE html>
<html>
	<head>
	  <title>Bootstrap Example</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	  
	</head>
	<body>
	
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX 
https://www.w3schools.com/bootstrap4/bootstrap_grid_large.asp    Lo saque de aqui -->

<div class="container mt-3">
  <br>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs">
	  <li class="nav-item">
	      <a class="nav-link active" data-toggle="tab" href="#Tab1">1. Denominación</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab2">2. Justificación</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab3">3. Aspectos curriculares</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab4">4. Organización actividades académicas</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab5">5. Investigación innovación</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab6">6. Relación con el sector externo</a>
	  </li>	  
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab7">7. Profesores</a>
	  </li>		  

	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab8">8. Medios Educativos</a>
	  </li>	

	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab9">9. Infraestructura física y tecnológica</a>
	  </li>	

  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
  
	   <!-- Tab 1 -->
	   <div id="Tab1" class="container tab-pane active"><br>
            <!-- Primer Grupo de Acordeón -->	   
	        <h4>1. Denominación</h4>
			<!-- Primer Grupo de accordion -->
			    <p>
				<div class="container">
					  <p>		  
					  <div id="accordion">
						    <div class="card">
						      <div class="card-header">
						        <a class="card-link" data-toggle="collapse" href="#a1">
						          Collapsible Group Item #1
						        </a>
						      </div>
						      <div id="a1" class="collapse" data-parent="#accordion">
						        <div class="card-body">
						          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						        </div>
						      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#a2">
								        Collapsible Group Item #2
								       </a>
							      </div>
							      <div id="a2" class="collapse" data-parent="#accordion">
								       <div class="card-body">
								          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								       </div>
							      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#a3">
								          Collapsible Group Item #3
								       </a>
							      </div>
							      <div id="a3" class="collapse" data-parent="#accordion">
								        <div class="card-body">
								          	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								        </div>
							      </div>
						    </div>

					  </div>
				</div>
			<!-- Fin Primer Container -->		        
	   </div>
	   
	   <!-- Tab 2 -->
	   <div id="Tab2" class="container tab-pane fade"><br>
            <!-- Segundo Grupo de Acordeón -->
	        <h4>2. Justificación</h4>
			<!-- Segundo Grupo de accordion -->
			    <p>
				<div class="container">
					  <p>		  
					  <div id="accordion">
						    <div class="card">
						      <div class="card-header">
						        <a class="card-link" data-toggle="collapse" href="#b1">
						          Collapsible Group Item #1
						        </a>
						      </div>
						      <div id="b1" class="collapse" data-parent="#accordion">
						        <div class="card-body">
						          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						        </div>
						      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#b2">
								        Collapsible Group Item #2
								       </a>
							      </div>
							      <div id="b2" class="collapse" data-parent="#accordion">
								       <div class="card-body">
								          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								       </div>
							      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#b3">
								          Collapsible Group Item #3
								       </a>
							      </div>
							      <div id="b3" class="collapse" data-parent="#accordion">
								        <div class="card-body">
								          	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								        </div>
							      </div>
						    </div>
						    
					  </div>
				</div>
			<!-- Fin Segundo Container -->

	   </div>

	   <!-- Tab 3 -->        
	   <div id="Tab3" class="container tab-pane fade"><br>
            <!-- Tercer Grupo de Acordeón -->
	        <h4>3. Aspectos curriculares</h4>
			<!-- Tercer Grupo de accordion -->
			    <p>
				<div class="container">
					  <p>		  
					  <div id="accordion">
						    <div class="card">
						      <div class="card-header">
						        <a class="card-link" data-toggle="collapse" href="#c1">
						          Collapsible Group Item #1
						        </a>
						      </div>
						      <div id="c1" class="collapse" data-parent="#accordion">
						        <div class="card-body">
						          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						        </div>
						      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c2">
								        Collapsible Group Item #2
								       </a>
							      </div>
							      <div id="c2" class="collapse" data-parent="#accordion">
								       <div class="card-body">
								          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								       </div>
							      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c3">
								          Collapsible Group Item #3
								       </a>
							      </div>
							      <div id="c3" class="collapse" data-parent="#accordion">
								        <div class="card-body">
								          	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								        </div>
							      </div>
						    </div>			    
						    
					  </div>
				</div>
			<!-- Fin Tercer Container -->	        
	   </div>

	   <!-- Tab 4 -->      
	   <!-- <div id="Tab4" class="container tab-pane"><br> -->
	   <div id="Tab4" class="container tab-pane"><br>
            <!-- Cuarto Grupo de Acordeón -->
	        <h4>4. Organización actividades académicas</h4>
			<!-- Cuarto Grupo de accordion -->
			    <p>
				<div class="container">
					  <p>		  
					  <div id="accordion">
						    <div class="card">
						      <div class="card-header">
						        <a class="card-link" data-toggle="collapse" href="#d1">
						          Collapsible Group Item #1
						        </a>
						      </div>
						      <div id="d1" class="collapse" data-parent="#accordion">
						        <div class="card-body">
						          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						        </div>
						      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#d2">
								        Collapsible Group Item #2
								       </a>
							      </div>
							      <div id="d2" class="collapse" data-parent="#accordion">
								       <div class="card-body">
								          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								       </div>
							      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#d3">
								          Collapsible Group Item #3
								       </a>
							      </div>
							      <div id="d3" class="collapse" data-parent="#accordion">
								        <div class="card-body">
								          	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								        </div>
							      </div>
						    </div>			    
						    
					  </div>
				</div>
			<!-- Fin Cuarto Container -->

	   </div>
	   
	   <!-- Tab 5 -->	   
	   <div id="Tab5" class="container tab-pane fade"><br>
            <!-- Quinto Grupo de Acordeón -->
	        <h4>5. Investigación innovación</h4>
	        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	   </div>

	   <!-- Tab 6 -->        
	   <div id="Tab6" class="container tab-pane fade"><br>
	        <h4>6. Relación con el sector externo</h4>
            <!-- Sexto Grupo de Acordeón -->
	        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
	   </div>    
    
	   <!-- Tab 7 -->    
 	   <div id="Tab7" class="container tab-pane fade"><br>
	        <h4>7. Profesores</h4>
            <!-- Septimo Grupo de Acordeón -->
	        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
	   </div>    
        
	   <!-- Tab 8 -->        
	   <div id="Tab8" class="container tab-pane fade"><br>
	        <h4>8. Medios Educativos</h4>
            <!-- Octavo Grupo de Acordeón -->
	        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
	   </div>     
    
   	   <!-- Tab 9 -->    
	   <div id="Tab9" class="container tab-pane fade"><br>
	        <h5>9. Infraestructura física y tecnológica</h5>
            <!-- Noveno Grupo de Acordeón -->
	        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
	   </div> 


  </div>  <!-- Fin Tabs -->
</div>

<!-- PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP -->
	    
	</body>
</html>