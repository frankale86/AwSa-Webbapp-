
<!DOCTYPE html>

<html lang="en">

<head>
  
   
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="theme-color" content="#33b5e5">
    <meta charset="ISO-8859-1">
	<meta charset="UTF-8">

 	<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
 	<project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
 	system.setProperty("file.encoding", "UTF-8");

    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/css/compiled-4.20.0.min.css">

    <meta charset="utf-8">
    <title>...Propuesta examples </title>

  
    <meta name="description" content="Bootstrap accordion is a component which organizes content within collapsable items. Accordion allows showing only one collapsed item at the same time.">
    <meta name="image" content="https://mdbcdn.b-cdn.net/wp-content/uploads/2017/08/accordion-fb.jpg">

  
    <meta itemprop="name" content="Bootstrap Accordion - examples &amp; tutorial">
    <meta itemprop="description" content="Bootstrap accordion is a component which organizes content within collapsable items. Accordion allows showing only one collapsed item at the same time.">
    <meta itemprop="image" content="https://mdbcdn.b-cdn.net/wp-content/uploads/2017/08/accordion-fb.jpg">

  
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:title" content="Bootstrap Accordion - examples &amp; tutorial">
    <meta property="twitter:description" content="Bootstrap accordion is a component which organizes content within collapsable items. Accordion allows showing only one collapsed item at the same time.">
    <meta property="twitter:site" content="@MDBootstrap">
    <meta property="twitter:creator" content="@MDBootstrap">
    <meta property="twitter:image:src" content="https://mdbcdn.b-cdn.net/wp-content/uploads/2017/08/accordion-fb.jpg">
    <meta property="twitter:player" content="">

  
    <meta property="og:title" content="Bootstrap Accordion - examples &amp; tutorial">
    <meta property="og:description" content="Bootstrap accordion is a component which organizes content within collapsable items. Accordion allows showing only one collapsed item at the same time.">
    <meta property="og:image" content="https://mdbcdn.b-cdn.net/wp-content/uploads/2017/08/accordion-fb.jpg">
    <meta property="og:url" content="https://mdbootstrap.com/docs/b4/jquery/javascript/accordion/">
    <meta property="og:site_name" content="MDB - Material Design for Bootstrap">
    <meta property="og:locale" content="en_US">
    <meta property="og:video" content="">
    <meta property="fb:admins" content="443467622524287">
    <meta property="og:type" content="website">

    <link rel="shortcut icon" href="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/favicon.ico" />

  
    <script data-cfasync="false">
      (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
              new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
          j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
          '//www.googletagmanager.com/gtm.'+'js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer','GTM-W7MBMN');
    </script>
  

  
    <script type="application/ld+json">
      {
        "@context": "https://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [{
          "@type": "ListItem",
          "position": 1,
          "name": "MDBootstrap",
          "item": "https://mdbootstrap.com/",
          "image": "https://mdbcdn.b-cdn.net/img/Marketing/mdb-press-pack/mdb-main.webp"
        }, {
          "@type": "ListItem",
          "position": 2,
          "name": "Standard",
          "item": "https://mdbootstrap.com/docs/standard/",
          "image": "https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/content/en/_mdb5/standard/about/assets/mdb5-about.webp"
        }, {
          "@type": "ListItem",
          "position": 3,
          "name": "Accordion",
          "item": "https://mdbootstrap.com/docs/b4/jquery/javascript/accordion/",
          "image": "https://mdbcdn.b-cdn.net/wp-content/uploads/2017/08/accordion-fb.jpg"
        }]
      }
    </script>

    <style>
      @media (max-width: 576px) {
          [id^=dpl-], [class^=dpl-], .mobile-hidden {
              display: none!important;
          }
      }
    </style>
    <script type="text/javascript">    
		    function MM_swapImgRestore() { //v3.0 
			  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
			}
			function MM_preloadImages() { //v3.0
			  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
			    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
			    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
			}
		
			function MM_findObj(n, d) { //v4.01
			  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
			    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
			  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
			  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
			  if(!x && d.getElementById) x=d.getElementById(n); return x;
			}
		
			function MM_swapImage() { //v3.0
			  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
			   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
			}
     </script>
     <body onload="MM_preloadImages('alcaldia_on.png','eps_on.png','impacto_on.png','ips_on.png','ms_on.png','procesosdedepuracion_on.png'.'supersalud_on.png')">
    
    
  </head>

  <body class="fixed-sn mdb-skin-custom">

  <header>
    <style>
       
      #slide-out .collapsible-body, #slide-out .rotate-icon {
        transition-property: none;
      }

      #main-navbar .nav-link {
        color: rgba(0, 0, 0, .55) !important;
        font-size: 1rem !important;
        font-weight: 400;
      }
      div.search-dropdown a {
        line-height: 28px;
        height: 28px;
        width: 230px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
      }
    </style>

    <nav class="navbar fixed-top navbar-expand-md navbar-light white double-nav scrolling-navbar">
        
        <div class="float-left">
            <a href="#" data-activates="slide-out" class="button-collapse"><i class="fas fa-bars"></i><span class="sr-only" aria-hidden="true">Toggle side navigation</span></a>
        </div>

    </nav>
    

    <div id="slide-out" class="side-nav sn-bg-4 fixed" role="navigation">
        <ul
            class="custom-scrollbar list-unstyled"
            style="max-height:100vh; padding-bottom:90px; position:relative;">

            <li class="logo-sn d-block waves-effect">
                <div class="text-center">
                    <a class="pl-0" href="/"
                      ><img
                        id="MDB-logo"
                        src="legalidad.png"
                        alt="MDB Logo"/>
                    </a>
                </div>
            </li>
      
            <li>
                <form
                    class="search-form"
                    onkeypress="return event.keyCode != 13;"
                    role="search"
                    method="GET"
                    autocomplete="off">
                    <div class="form-group md-form mt-0 d-block waves-light">
                          <input
                            type="text"
                            class="form-control pb-1 pt-2 mb-0"
                            name="mdw_serach"
                            placeholder="Search"
                            id="mdw_serach"
                          />
                      <label for="mdw_serach" class="sr-only">Search</label>
                    </div>
                    <div id="mdw_serach_dropdown_wrapper" class="search-dropdown z-depth-3"></div>
                  </form>
            </li>
      

              <li>
                  <ul id="side-menu" class="collapsible collapsible-accordion">      
                      <li>
                          <a class="collapsible-header waves-effect arrow-r">
                            <i class="fas fa-download"></i>
                            Getting Started
                            <i class="fa fa-angle-down rotate-icon"></i>
                          </a>
                          <div class="collapsible-body">
                              <ul class="sub-menu">
                                  <li>
                                      <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/">...Sac</a>
                                  </li>

                                  <li>
                                      <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/getting-started/installation/">Face 1</a>
                                  </li>
        
                                  <li>
                                      <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/getting-started/styles-customization/">Face 2</a>
                                  </li>

                                  <li>
                                    <a class='collapsible-header waves-effect ' href="/education/bootstrap/">Face 3</a>
                                  </li>

                                  <li>
                                    <a class='collapsible-header waves-effect ' href="/cli/">Face 4</a>
                                  </li>

                                  <li>
                                    <a class='collapsible-header waves-effect ' href="/docs/b4/angular/">Face 5</a>
                                  </li>

                                  <li>
                                    <a class='collapsible-header waves-effect ' href="/docs/react/">Face 6</a>
                                  </li>

                                  <li>
                                    <a class='collapsible-header waves-effect ' href="/docs/b4/vue/">Face 7</a>
                                  </li>

                              </ul>
                          </div>
          </li>
          

          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="far fa-gem"></i>
                  MDB Pro
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/standard/pro/">About MDB Pro</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/pro/installation/">Installation</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/standard/pro/git/">Git &amp; repository</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/standard/pro/support/">Premium support</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/standard/pro/updates/">Updates</a>
                </li>
              </ul>
            </div>
          </li>
          

          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas  fa-th-large"></i>
              Layout
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/layout/overview/">Layout overview</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/layout/grid-usage/">Grid usage</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/layout/grid-examples/">Grid examples</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/layout/media-object/">Media object</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/layout/media-queries/">Media queries</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/layout/utilities/">Utilities for layout</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/layout/bootstrap-masonry/">Masonry</a>
                </li>
              </ul>
            </div>
          </li>
          

          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas fa-object-ungroup"></i>
                Utilities
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/borders/">Borders</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/clearfix/">Clearfix</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/close-icon/">Close icon</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/display/">Display</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/embeds/">Embeds</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/float/">Float</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/flexbox/">Flexbox</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/horizontal-align/">Horizontal align</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/image-replacement/">Image replacement</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/overflow/">Overflow</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/position/">Position</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/screenreaders/">Screenreaders</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/sizing/">Sizing</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/spacing/">Spacing</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/stretched-link/">Stretched link</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/text/">Text</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/vertical-align/">Vertical align</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/utilities/visibility/">Visibility</a>
                </li>
              </ul>
            </div>
          </li>
          

          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas fa-indent"></i>
              Content
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/content/code/">Code</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/content/figures/">Figures</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/content/flag/">Flags</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/content/icons-usage/">Icons usage</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/content/icons-list/">Icons list</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/content/images/">Images</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/content/typography/">Typography</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/content/responsive-font-size/">Responsive Font Size</a>
                </li>
              </ul>
            </div>
          </li>
          

          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fab fa-css3"></i>
              CSS
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/demo/">Demo</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/animations/">Animations</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/background-image/">Background Image</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/colors/">Colors</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/color-combination/">Color combination</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/text-color/">Text Color</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/gradients/">Gradients</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/hover-effects/">Hover effects</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/masks/">Masks</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/parallax/">Parallax</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/shadows/">Shadows</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/skins/">Skins</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/css/variables/">Variables</a>
                </li>
              </ul>
            </div>
          </li>
          

          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas fa-cubes"></i>
              Components
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/demo/">Demo</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/alerts/">Alerts</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/buttons/">Buttons</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/button-group/">Buttons group</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/buttons-social/">Buttons social</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/cards/">Cards</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/plugins/extended-cards/">Cards extended</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/dropdowns/">Dropdowns</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/jumbotron/">Jumbotron</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/list-group/">List group</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/spinners/">Loaders / Spinners</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/panels/">Panels</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/pagination/">Pagination</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/pills/">Pills</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/progress-bar/">Progress bars</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/stepper/">Stepper</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/tabs/">Tabs</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/components/badges/">Labels and Badges</a>
                </li>
              </ul>
            </div>
          </li>
          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas fa-bars"></i>
              Navigation
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/compositions/">Compositions</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/breadcrumb/">Breadcrumbs</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/footer/">Footer</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/hamburger-menu/">Hamburger Menu</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/mega-menu/">Mega Menu</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/navs/">Navs</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/navbar/">Navbar</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/scrollspy/">ScrollSpy</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/navigation/sidenav/">SideNav</a>
                </li>
              </ul>
            </div>
          </li>
          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas  fa-edit"></i>
              Forms
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/basic/">Basic examples</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/autocomplete/">Autocomplete</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/builder/">Builder</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/checkbox/">Checkbox</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/contact/">Contact form</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/customization/">Customization</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/date-picker/">Date Picker</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/plugins/file-upload/">Drag and drop</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/file-input/">File Input</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/inputs/">Inputs</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/input-group/">Inputs Group</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/multiselect/">Multiselect</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/radio-button/">Radio button</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/search/">Search</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/select/">Select</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/slider/">Slider</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/switch/">Switch</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/textarea/">Textarea</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/time-picker/">Time Picker</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/forms/validation/">Validation</a>
                </li>
              </ul>
            </div>
          </li>
          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas fa-table"></i>
              Tables
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/basic/">Basic examples</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/additional/">Additional examples</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/datatables/">Datatables</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/editable/">Editable</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/plugins/table-editor/">Editor</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="https://mdbootstrap.com/docs/standard/tools/builders/table/">Generator</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/pagination/">Pagination</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/responsive/">Responsive</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/scroll/">Scroll</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/search/">Search</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/tables/sort/">Sort</a>
                </li>
              </ul>
            </div>
          </li>
            
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas  fa-window-restore"></i>
              Modals
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/modals/basic/">Basic examples</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/modals/additional/">Advanced examples</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/modals/events/">Modal events</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/modals/forms/">Modal forms</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="https://mdbootstrap.com/docs/standard/tools/builders/modals/">Generator</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/modals/customization/">Modal styles</a>
                </li>
              </ul>
            </div>
          </li>
            
          <li>
            <a class="collapsible-header waves-effect arrow-r" href="/docs/b4/jquery/design-blocks/">
              <i class="fas fa-th"></i>
              Design Blocks
            </a>
          </li>
            
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas fa-book"></i>
              Tutorials
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/education/">Basics</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/education/bootstrap/">Bootstrap</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/education/jquery/">jQuery</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/education/angular/">Angular</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/education/react/">React</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/education/vue/">Vue</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/education/wordpress/">WordPress</a>
                </li>
              </ul>
            </div>
          </li>
          
          <li>
            <a class="collapsible-header waves-effect arrow-r" href="/docs/b4/jquery/plugins/">
              <i class="fas fa-plus-square"></i>
              Plugins &amp; Addons
            </a>
          </li>
          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas fa-image"></i>
              Templates
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/templates/trending/">Trending</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/templates/admin/">Admin dashboards</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/templates/blog/">Blog</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/templates/ecommerence/">eCommerence</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/templates/landing-pages/">Landing pages</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/templates/saas/">Saas</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/templates/magazine/">Magazine</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/docs/b4/jquery/templates/portfolios/">Portfolios</a>
                </li>
              </ul>
            </div>
          </li>
          
          <li>
            <a class="collapsible-header waves-effect arrow-r">
              <i class="fas fa-puzzle-piece"></i>
              Tools &amp; Resources
              <i class="fa fa-angle-down rotate-icon"></i>
            </a>
            <div class="collapsible-body">
              <ul class="sub-menu">
                <li>
                  <a class='collapsible-header waves-effect ' href="/support/">Support</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/snippets/">Editor &amp; snippets</a>
                </li>
                <li>
                  <a class='collapsible-header waves-effect ' href="/builder/">Drag &amp; drop builder</a>
                </li>
              </ul>
            </div>
          </li>
          
        </ul>
      </li>
      
    </ul>
        <div class="sidenav-bg mask-strong"></div>

    </div>
    
    <span id="dpl-auth-modal"></span>

  </header>


  <main class="">
    <div class="container-fluid  mt-2 ">
      <div class="main-tabs-docs">
        <style>
          .main-tabs-docs .nav-mtd {
            white-space: nowrap;
            overflow-x: auto;
            position: relative;
          }

          @media (min-width: 62rem) {
            .main-tabs-docs .nav-mtd {
              overflow-x: hidden;
            }
          }

          .main-tabs-docs .nav-mtd li a {
            display: block;
            padding: 20px 24px;
            font-size: 13px;
            text-transform: uppercase;
            color: rgba(255, 255, 255, 0.8);
            text-align: center;
            -webkit-border-radius: 0;
            border-radius: 0;
            font-weight: 500;
            border-bottom: 3px solid #33b5e5;
          }

          .main-tabs-docs .nav-mtd li a.active {
            border-bottom: 3px solid;
            color: #fff;
          }

          @media (min-width: 62em) {
            .main-tabs-docs .nav-mtd li:first-child {
              margin-left: 56px;
            }
          }

          .documentation .primary-heading {
            font-size: 2.7rem;
            font-weight: 500;
          }

          .documentation .primary-heading::before {
            height: 0;
            margin-top: 0;
          }

          .documentation .secondary-heading {
            font-size: 1.5rem;
            font-weight: 500;
            color: #444343;
            overflow: hidden;
            padding-bottom: .3rem;
            margin-bottom: .7rem;
          }

          .documentation .section-heading {
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 1.4rem;
          }

          .documentation .section-heading::before {
            height: 0;
            margin-top: 0;
          }

          .documentation .docs-pills {
            margin-top: 1.4rem;
          }

          .documentation .section-preview {
            padding: 15px;
          }

          @media only screen and (max-width: 991px) {
            .sticky,
            .sticky2,
            .sticky3,
            .sticky-placeholder {
              display: none;
            }
          }

          @media (max-width: 768px) {
            .documentation .docs-pills .export-to-snippet {
              display: none;
            }

            .documentation .docs-pills .btn-copy-code {
              right: 0 !important;
            }
          }

          @media (max-width: 576px) {
            .documentation .docs-pills .btn-copy-code {
              display: none;
            }
          }

          .pe-none {
            pointer-events: none;
          }

          .card-intro h4.h2 {
            margin-bottom: 0;
          }

          .show-code-btn:focus, .show-code-btn:hover {
            box-shadow: none;
            text-decoration: none;
            background-color: #f5f5f5;
          }
          #gtmDC-nav-advanced-sub {
            display: none;
          }
        </style>
        
   
        <div class="tab-content ">
          <div class="tab-pane fade in show active" id="docsTabsOverview" role="tabpanel">
            <div class="row">
              
              <div class=" col-lg-10  col-md-12">
                <section class="documentation">
                  
 

<!--Section: -->
  <section id="close">
          <!--Title-->
          <h2 class="secondary-heading mb-3">
              Bienvenido a S.A.C.
              <a href="#" target="_blank"                       
                class="btn btn-success btn-sm", background-color:#198754; color:#FFFFFF, role="button">Sistema de Informacion, para el Aseguramiento de la Calidad Institucional Udca...
                
                <i class="far fa-gem ml-1"></i>
              </a>
          </h2>

          <!-- Description 
          <p>You can have an accordion close by default if you don't want to show a text.</p>
          -->          
          <hr> <!-- Linea Separadora ., -->
          
          <!-- Primera Línea -->
          <div class="row">
              <div class="col-lg-4 col-md-12">
		           <div align="center">
		    
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo1','','img/png/alcaldia_on.png',1)">
		                   <img src="img/png/alcaldia_Off.png" name="Image_grupo1" width="100" height="100" id="Image_grupo1" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Reglamentacion Men y CNA<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>              
              </div>

              <div class="col-lg-4 col-md-12">
		           <div align="center">
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo2','','img/png/ms_on.png',1)">
		                   <img src="img/png/ms_off.png" name="Image_grupo2" width="100" height="100" id="Image_grupo2" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Guias<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>              
              </div>
              
              
              <div class="col-lg-4 col-md-12">
		           <div align="center">
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo3','','img/png/procesosdedepuracion_on.png',1)">
		                   <img src="img/png/procesosdedepuracion_Off.png" name="Image_grupo3" width="100" height="100" id="Image_grupo3" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Programas Facultad<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>              
              </div>              
          </div>
          
          <p>

          <!-- Segunda Línea -->
          <div class="row">
              <div class="col-lg-4 col-md-12">
		           <div align="center">
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo4','','img/png/telemedicina_on.png',1)">
		                   <img src="img/png/telemedicina_off.png" name="Image_grupo4" width="100" height="100" id="Image_grupo4" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Registro Calificado<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>              
              </div>          

              <div class="col-lg-4 col-md-12">
		           <div align="center">
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo5','','img/png/supersalud_on.png',1)">
		                   <img src="img/png/supersalud_off.png" name="Image_grupo5" width="100" height="100" id="Image_grupo5" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Acreditacion<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>              
              </div>          


              <div class="col-lg-4 col-md-12">
		           <div align="center">
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo6','','img/png/ips_on.png',1)">
		                   <img src="img/png/ips_off.png" name="Image_grupo6" width="100" height="100" id="Image_grupo6" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Autoevaluacion<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>              
              </div>
          </div>         
          <p>
          
          <!-- Tercera Línea -->
          <div class="row">
              <div class="col-lg-4 col-md-12">
		           <div align="center">
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo7','','img/png/eps_on.png',1)">
		                   <img src="img/png/eps_off.png" name="Image_grupo7" width="100" height="100" id="Image_grupo7" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Proceso 4<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>              
              </div>          
          
          
              <div class="col-lg-4 col-md-12">
		           <div align="center">
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo8','','img/png/ms_on.png',1)">
		                   <img src="img/png/ms_off.png" name="Image_grupo8" width="100" height="100" id="Image_grupo8" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Proceso 4<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>              
              </div>          
          
           
              <div class="col-lg-4 col-md-12">
		           <div align="center">
		                <a href="grupo.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image_grupo9','','img/png/impacto_on.png',1)">
		                   <img src="img/png/impacto_off.png" name="Image_grupo9" width="100" height="100" id="Image_grupo9" />
		                </a>
	                   <figcaption class="navLateral-body-cr hide-on-tablet">
		                       <span>
		                         Dashboard<br>
		                         <!-- <small>Administrador del Sistema</small> -->
		                       </span>
                      </figcaption>
		           </div>
              </div>          

          </div>
          

          <hr> <!-- Linea Separadora ., -->
          <div class="text-center">
              <small>Designed By - Direccion de Aseguramiento de la Calidad - 2022 - </small>
              <small> Universidad de Ciencias Aplicadas y Ambientales U.D.C.A.</small>
          </div>
          <p>

  </section>
      
  
        </div>
    </div>
  </main>

  <footer id="footer" class="grey lighten-4 text-center text-lg-start">
  </footer>

  <style>

    main input[type=email]:focus,
    main input[type=password]:focus,
    main input[type=text]:focus,
    main input[type=url]:focus,
    main textarea:focus {
      border: 0;
    }

    .embed-responsive-16by9-fix-contact-form::before {
      height: 450px;
    }

    @media (min-width:580px) {

      .modal-contact-form-fix,
      .modal-contact-form-fix * {

        box-sizing: content-box !important;
      }

    }

    @media (min-width: 1400px) {
      #modalPricing .modal-dialog {

        max-width: 80vw;
      }
    }

  </style>

  <div class="modal fade" id="contactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header text-center">
          <h4 class="modal-title w-100 font-weight-bold"></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body mx-3">
            <div class="text-center font-weight-bold mb-5">
                <p><a href="https://mdbootstrap.com/support/"></a></p>
                <p><a href="https://mdbootstrap.com/general/license/"></a></p>
            </div>


          <form id="contact-form" name="contact-form"
            action="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/contact-form-setup.php"
            method="POST" onsubmit="return validateForm()">
            <div class="md-form mb-5">
              <i class="fas fa-user prefix grey-text"></i>
              <input type="text" id="name" name="name" class="form-control validate">
              <label data-error="wrong" data-success="right" for="name"></label>
            </div>

            <div class="md-form mb-5">
              <i class="fas fa-envelope prefix grey-text"></i>
              <input type="email" id="email" name="email" class="form-control validate">
              <label data-error="wrong" data-success="right" for="email"></label>
            </div>

            <div class="md-form mb-5">
              <i class="fas fa-tag prefix grey-text"></i>
              <input type="text" id="subject" name="subject" class="form-control validate">
              <label data-error="wrong" data-success="right" for="subject"></label>
            </div>

            <div class="md-form">
              <i class="fas fa-pencil prefix grey-text"></i>
              <textarea type="text" id="message" name="message" class="md-textarea form-control" rows="4"></textarea>
              <label data-error="wrong" data-success="right" for="message"></label>
            </div>
          </form>
        </div>
        <p class="text-center" id="status"></p>
        <div class="modal-footer d-flex justify-content-center">

        <button class="btn btn-info"  onclick="validateForm()"><i
              class="fas fa-paper-plane-o ml-1"></i></button>

        </div>
      </div>
    </div>
  </div>

  <span id="dpl-mdb5-cookies-modal"></span>
  <span id="dpl-newmdb-docs-snippets-modal"></span>
  <span id="dpl-newmdb-alert-technology-change"></span>

  <div id="dom-target-fb" style="display: none;">
  </div>
  <div id="dom-target-tw" style="display: none;">
  </div>
  <div id="dom-target-gp" style="display: none;">
  </div>


  <div
      class="modal fade"
      id="apiRestrictedModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
  >
      <div class="modal-dialog" role="document">
          <div class="modal-content">
              <div class="modal-body">
                  
                  <section>
                      <div class="text-center">
                          <h3 class="font-weight-bold border border-primary p-3 mb-3">Access restricted</h3>

                          <h5><strong>To view this section you must have an active PRO account</strong></h5>

                          <p>
                              <strong>Log in</strong> to your account or
                              <strong>purchase an MDB5 PRO subscription</strong> if you don't have one.
                          </p>

                          <a class="btn btn-primary me-1 auth-modal-toggle" data-auth-modal-tab="sign-in" data-dismiss="modal">Login</a>
                          <a
                            class="btn btn-secondary"
                            target="_blank"
                            
                              href = "https://mdbootstrap.com/docs/standard/pro/"
                            
                            role="button"
                          >Buy MDB Pro</a>
                      </div>
                  </section>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-primary" data-dismiss="modal">
                      Close
                  </button>
              </div>
          </div>
      </div>
  </div>

  <script>
    const CONFIG = {
      docsApiUrl: "https://mdbootstrap.com/api/docs"
    };

    const supportedLanguages = {
      en: {
        flag: 'united kingdom',
        name: 'English'
      },
      cn: {
        flag: 'china',
        name: '中文'
      }
    };

    function getSiteLanguage() {
      const [, language ] = location.pathname.split('/');
      switch (language) {
        case 'cn': return 'cn';
        case 'es': return 'cn';
        default: return 'en';
      }
    }
 
    function getCurrentTechnology(url) {
      const currentUrl = url || location.pathname;
      switch (true) {
        case (currentUrl.indexOf('/docs/standard') === 0): return 'standard';
        case (currentUrl.indexOf('/docs/angular') === 0): return 'b5-angular';
        case (currentUrl.indexOf('/docs/b5/angular') === 0): return 'b5-angular';
        case (currentUrl.indexOf('/docs/b5/react') === 0): return 'b5-react';
        case (currentUrl.indexOf('/docs/b5/vue') === 0): return 'b5-vue';
        case (currentUrl.indexOf('/docs/b4/jquery') === 0): return 'jquery';
        case (currentUrl.indexOf('/docs/b4/angular') === 0): return 'angular';
        case (currentUrl.indexOf('/docs/react') === 0): return 'react';
        case (currentUrl.indexOf('/docs/vue') === 0): return 'b5-vue';
        case (currentUrl.indexOf('/docs/b4/vue') === 0): return 'vue';
      }
    }

    function getCookie(name) {
      const decodedCookie = decodeURIComponent(document.cookie);
      const cookies = decodedCookie.split(';');

      for (let i = 0; i < cookies.length; i++) {
        let cookie = cookies[i];
        while (cookie.charAt(0) === ' ') {
          cookie = cookie.substring(1);
        }
        if (cookie.indexOf(name) === 0) {
          return cookie.substring(name.length, cookie.length);
        }
      }

      return null;
    }
	  </script>
  <script>
    
    
    
    
    
  </script>

  <script type="text/javascript" src="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/js/bundles/4.20.0/compiled.min.js"></script>


  <script type="text/javascript" src="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/js/dist/search-v4/search.min.js"></script>
  <script src="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/js/dist/main.min.js"></script>


  <script>
    (function ($) {
    'use strict';

    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    });

    
    $(function () {
      $("#mdb-lightbox-ui").load("https:\/\/mdbcdn.b-cdn.net\/wp-content\/themes\/mdbootstrap4\/docs-app/b4/mdb-addons/mdb-lightbox-ui.html");
    });

    $(document).ready(function () {
      $('.mdb-select').materialSelect();
      $("#license").addClass("mdb-select price-select");
      
      $("#license").hide();
      
      new WOW().init();

      
      $(".button-collapse").sideNav();
      var el = document.querySelector('.custom-scrollbar');
      var ps = new PerfectScrollbar(el);
    });


    $('body').scrollspy({
      target: '#scrollspy'
    })

    $(function () {
      $(".sticky").sticky({
        topSpacing: 90,
        zIndex: 2,
        stopper: "#footer"
      });
      $('a[href="#docsTabsAPI"]').on('shown.bs.tab', function (e) {
        $(".sticky2").sticky({
          topSpacing: 90,
          zIndex: 2,
          stopper: "#footer"
        });
      });
      $('a[href="#docsTabsExamples"]').on('shown.bs.tab', function (e) {
        $(".sticky3").sticky({
          topSpacing: 90
          , zIndex: 2
          , stopper: "#footer"
        });
      });
    });

    $(function () {
      $(".sticky-long").sticky({
        topSpacing: 90,
        zIndex: 2,
        startScrolling: 'bottom',
        stopper: "#footer"
      });
    });

    $(document).ready(function () {
      var type = window.location.hash.substr(1);
      if (type==="docsTabsAPI") {
        if($("#docsTabsAPI").length) {
          $('[href="#docsTabsAPI"]').tab('show');
        }
        $('html, body').animate({scrollTop:0}, 'slow');
      } else if (type==="docsTabsOverview") {

        $('html, body').animate({scrollTop:0}, 'slow');
      }

      var hash = window.location.hash;
      hash && $('ul.nav a[href="' + hash + '"]').tab('show');

      $('.nav-mtd a').not('#docs-tab-examples').click(function (e) {

        var scrollurl = $('body').scrollTop() || $('html').scrollTop();

        window.location.hash = this.hash;
        $('html, body').scrollTop(scrollurl);
      });
    })

    $(document).ready(function () {
      const searchInput = document.getElementById('mdw_serach');

      const searchDropdown = document.getElementById('mdw_serach_dropdown_wrapper');

      let searchJsonFile = "https://mdbootstrap.com/wp-content/themes/mdbootstrap4/docs-app" + '/js/dist/search-v4/';

      switch ("jquery") {
        case 'angular':
          searchJsonFile += 'search-angular.json'
          break;
        case 'react':
          searchJsonFile += 'search-react.json'
          break;
        case 'vue':
          searchJsonFile += 'search-vue.json'
          break;
        default:
          searchJsonFile += 'search.json'
          break;
      }

      const search = new Search(searchInput, searchDropdown, searchJsonFile);

      search.init();
    })
    
    
    $('#contactForm').on('show.bs.modal', function () {
      $('.wpcf7-select').materialSelect('destroy');
      $('.wpcf7-select').materialSelect();
    });

    
    $('#contactForm').on('hide.bs.modal', function () {
      $('.wpcf7-select').materialSelect('destroy');
    });
    
    $("#dynamicContentWrapper-Homepage").on("click", ".dc-panel-remove", function (e) {
      $("#dynamicContentWrapper-Homepage").remove();
    });

    $("div[class*='woocommerce-MyAccount']").on("click", "#get-invoice-request", function (e) {
      e.preventDefault();

      var self = $(this);

      var desination = $(this).attr("href");

      var orderId = $(this).attr("data-order-id");
      var data = {
        action: "requestInvoice",
        order_id: orderId
      };

      $.ajax({
        url: mdw_search_object.ajaxurl,
        method: "POST",
        data: data
      }).done(function (response) {
        console.log(response);
        response = JSON.parse(response);

        if (response.status == "sent") {
          $("p", self).text(response.message);
        } else {
          window.location.replace(desination);
        }

      }).fail(function (err) {
        console.log(err);
      });
    });

    $("div[class*='woocommerce-MyAccount']").on("click", "table #confirm-invoice", function (e) {
      e.preventDefault();

      var self = $(this);

      self.html("<i class='fa fa-spinner fa-spin'></i> Processing...");

      var orderId = $(this).attr("data-order-id");
      var data = {
        action: "approveInvoiceRequest",
        order_id: orderId
      };

      $.ajax({
        url: mdw_search_object.ajaxurl,
        method: "POST",
        data: data
      }).done(function (response) {
        console.log(response);

        self.html("<i class='fa fa-check'></i> Done").attr("class", "btn btn-success");
      }).fail(function (err) {
        console.log(err);

        try {

          err = JSON.stringify(err);
        } catch (ex) {}

        self.html("<i class='fa fa-times'></i> Error").attr("class", "btn btn-danger");
        self.after("<b>Error:</b> " + err);
      });
    });

    $("#invoice-forms").on("click", function (e) {
      e.preventDefault();

      $("nav[class*='woocommerce-MyAccount'] ul li").each(function () {
        $(this).removeClass("is-active");
      });

      $(this).parent().addClass("is-active");

      $(".woocommerce div[class*='woocommerce-MyAccount']").html("<table></table>");
      var invoiceRequestTable = $(".woocommerce div[class*='woocommerce-MyAccount'] table");

      invoiceRequestTable.attr("class", "shop_table shop_table_responsive");

      var thead = "<thead>" +
        "<tr>" +
        '<th><input placeholder="Order ID" id="toEditOrderIdInput" type="number" value=""></input><a id="confirm-edited-invoice" class="btn btn-primary" href="#">Confirm</a><a id="confirm-new-invoice" class="btn btn-primary" href="#">Blank</a></th>' +
        "</tr>" +
        "</thead>";
      var tbody = "<tbody>";
      tbody += "<tr><td>No new requests.</td><td></td></tr>";
      tbody += "</tbody>";

      invoiceRequestTable.append(thead);
      invoiceRequestTable.append(tbody);

    });

    $("div[class*='woocommerce-MyAccount']").on("click", "table #confirm-edited-invoice", function (e) {
      e.preventDefault();
      var order_id = $('#toEditOrderIdInput').val();
      var data = {
        action: "getInvoiceRequestForm",
        order_id: order_id
      };

      $.ajax({
        url: mdw_search_object.ajaxurl,
        method: "POST",
        data: data
      }).done(function (response) {
        response = JSON.parse(response);
        console.log(response);

        var requests = response.requests;

        var billing_invoice_checkbox = requests.meta_data.filter(function (o) {
          return o.key == '_billing_invoice_checkbox'
        });
        var billing_vat = requests.meta_data.filter(function (o) {
          return o.key == '_billing_vat'
        });
        var invoiceRequestForm = $("table.shop_table.shop_table_responsive tbody");

        var tbody = "<tr><td id='invoiceDataToInsert'><p><label for='invoice_id'>Order ID</label><input value='" + requests.id + "' type='text' name='invoice_id' id='invoice_id' /></p>";
        if (billing_invoice_checkbox[0] !== undefined) {
          tbody += "<p><label for='billing_invoice_checkbox'>billing_invoice_checkbox</label><input value='" + billing_invoice_checkbox[0].value + "' type='text' name='billing_invoice_checkbox' id='billing_invoice_checkbox' /></p>"
        }
        tbody += "<p><label for='payment_method'>payment_method</label><input value='" + requests.payment_method + "' type='text' name='payment_method' id='payment_method' /></p>"

        if (billing_vat[0] !== undefined) {
          tbody += "<p><label for='billing_vat'>billing_vat</label><input value='" + billing_vat[0].value + "' type='text' name='billing_vat' id='billing_vat' /></p>"
        }
        tbody += "<p><label for='billing_company'>billing_company</label><input value='" + requests.billing.company + "' type='text' name='billing_company' id='billing_company' /></p>"
        tbody += "<p><label for='billing_address_1'>billing_address_1</label><input value='" + requests.billing.address_1 + "' type='text' name='billing_address_1' id='billing_address_1' /></p>"
        tbody += "<p><label for='billing_address_2'>billing_address_2</label><input value='" + requests.billing.address_2 + "' type='text' name='billing_address_2' id='billing_address_2' /></p>"
        tbody += "<p><label for='billing_city'>billing_city</label><input value='" + requests.billing.city + "' type='text' name='billing_city' id='billing_city' /></p>"
        tbody += "<p><label for='customer_id'>customer_id</label><input value='" + requests.customer_id + "' type='text' name='customer_id' id='customer_id' /></p>"
        tbody += "<a id='save-edited-invoice' class='btn btn-primary' href='#'>Save</a></td></tr>";

        invoiceRequestForm.empty();
        invoiceRequestForm.append(tbody);
      }).fail(function (err) {
        console.log(err);
      });
    });

    $("div[class*='woocommerce-MyAccount']").on("click", "table #confirm-new-invoice", function (e) {
      e.preventDefault();

      var invoiceRequestForm = $("table.shop_table.shop_table_responsive tbody");

      var tbody = "<tr><td id='invoiceDataToInsert'><p><label for='invoice_id'>Order ID</label><input disabled value='new order' type='text' name='invoice_id' id='invoice_id' /></p>";
      tbody += "<p><label for='billing_invoice_checkbox'>billing_invoice_checkbox</label><input value='' type='text' name='billing_invoice_checkbox' id='billing_invoice_checkbox' /></p>"
      tbody += "<p><label for='payment_method'>payment_method</label><input value='' type='text' name='payment_method' id='payment_method' /></p>"

      tbody += "<p><label for='billing_vat'>billing_vat</label><input value='' type='text' name='billing_vat' id='billing_vat' /></p>"
      tbody += "<p><label for='billing_company'>billing_company</label><input value='' type='text' name='billing_company' id='billing_company' /></p>"
      tbody += "<p><label for='billing_address_1'>billing_address_1</label><input value='' type='text' name='billing_address_1' id='billing_address_1' /></p>"
      tbody += "<p><label for='billing_address_2'>billing_address_2</label><input value='' type='text' name='billing_address_2' id='billing_address_2' /></p>"
      tbody += "<p><label for='billing_city'>billing_city</label><input value='' type='text' name='billing_city' id='billing_city' /></p>"
      tbody += "<p><label for='customer_id'>customer_id</label><input value='' type='text' name='customer_id' id='customer_id' /></p>"
      tbody += "<a id='save-edited-invoice' class='btn btn-primary' href='#'>Save</a></td></tr>";

      invoiceRequestForm.empty();
      invoiceRequestForm.append(tbody);
    });

    $("div[class*='woocommerce-MyAccount']").on("click", "table #save-edited-invoice", function (e) {
      e.preventDefault();

      var new_order_meta_data = {
        _billing_invoice_checkbox: $('#billing_invoice_checkbox').val(),
        _billing_vat: $('#billing_vat').val()
      }
      var order_data = {
        payment_method: $('#payment_method').val(),
        billing_address_1: $('#billing_address_1').val(),
        billing_address_2: $('#billing_address_2').val(),
        billing_city: $('#billing_city').val(),
        billing_company: $('#billing_company').val()
      }
      var order_id = $('#invoice_id').val();
      var data = {
        action: "saveNewOrEditedOrder",
        order_id: order_id,
        new_order_meta_data: new_order_meta_data,
        order_data: order_data
      };

      $.ajax({
        url: mdw_search_object.ajaxurl,
        method: "POST",
        data: data
      }).done(function (response) {
        response = JSON.parse(response);
        console.log(response);
        var invoiceRequestForm = $("table.shop_table.shop_table_responsive tbody");
        invoiceRequestForm.empty();
      }).fail(function (err) {
        console.log(err);
      });

    })


    $("#invoice-requests-list").on("click", function (e) {
      e.preventDefault();

      $("nav[class*='woocommerce-MyAccount'] ul li").each(function () {
        $(this).removeClass("is-active");
      });

      $(this).parent().addClass("is-active");

      var data = {
        action: "getInvoiceRequests"
      };

      $.ajax({
        url: mdw_search_object.ajaxurl,
        method: "POST",
        data: data
      }).done(function (response) {
        response = JSON.parse(response);
        console.log(response);

        var requests = response.requests;

        $(".woocommerce div[class*='woocommerce-MyAccount']").html("<table></table>");
        var invoiceRequestsListTable = $(".woocommerce div[class*='woocommerce-MyAccount'] table");

        invoiceRequestsListTable.attr("class", "shop_table shop_table_responsive");

        var thead = "<thead>" +
          "<tr>" +
          "<th>Order</th>" +
          "<th>Actions</th>" +
          "</tr>" +
          "</thead>";


        var tbody = "<tbody>";

        if (requests.length === 0) {
          tbody += "<tr><td>No new requests.</td><td></td></tr>";
        } else {
          for (var i = 0; i < requests.length; i++) {
            var order = requests[i];

            tbody += "<tr>" +
              "<td>" +
              "<ul style='list-style-type:none;'>" +
              "<li><b>Order ID:</b> " + order.order_id + "</li>" +
              "<li><b>Invoice Date:</b> " + order.invoice_date + "</li>" +
              "<li><b>VAT Number:</b> " + order.vat_number + "</li>" +
              "<li><b>Buyer Name:</b> " + order.buyer_name + "</li>" +
              "<li><b>Country:</b> " + order.country + "</li>" +
              "<li><b>Tax:</b> " + order.tax + "</li>" +
              "<li><b>Netto:</b> " + order.netto + "</li>" +
              "<li><b>Brutto:</b> " + order.brutto + "</li>" +
              "<li><b>EU:</b> " + order.eu_valid + "</li>" +
              "</ul>" +
              "</td>" +
              "<td>" +
              "<a id='confirm-invoice' class='btn btn-primary' data-order-id='" + order.order_id + "' href='#'>Confirm</a>" +
              "</td>" +
              "</tr>";
          }
        }


        tbody += "</tbody>";

        invoiceRequestsListTable.append(thead);
        invoiceRequestsListTable.append(tbody);

      }).fail(function (err) {
        console.log(err);
      });
    });

    var commentsCounter = $('span.counter');
    commentsCounter.each(function () {
      if ($(this).text() === 0 || $(this).text() === '') {
        $(this).css('display', 'none');
      }
    })

    function init_media() {
      var vidDefer = document.getElementsByTagName('iframe');
      for (var i = 0; i < vidDefer.length; i++) {
        if (vidDefer[i].getAttribute('data-src')) {
          vidDefer[i].setAttribute('src', vidDefer[i].getAttribute('data-src'));
        }
      }
          
    }
    window.onload = init_media;

    function saveUserFirstDownloadFreePackageDate( technology ) {

      var cookieName = 'mdb_free_download_date_' + technology + '=';
      var cookies = decodeURIComponent(document.cookie).split(';');
      var cookieExists = false;
      var cookieValue = '';

      for( var i = 0; i < cookies.length; i++ ) {
        var c = cookies[i];
        while (c.charAt(0) == ' ') {
          c = c.substring(1);
        }
        if (c.indexOf(cookieName) == 0) {
          cookieExists = true;
          cookieValue = c.substring(cookieName.length, c.length);
        }
      }

      if( !cookieExists ) {

        var currDate = new Date();
        var day = String(currDate.getDate()).padStart(2, '0');
        var month = String(currDate.getMonth() + 1).padStart(2, '0');
        var year = currDate.getFullYear();

        currDate = year + '-' + month + '-' + day;
        cookieValue = 'mdb_' + currDate;

        var expiresDate = new Date();
        expiresDate.setTime(expiresDate.getTime()+60*60*24*365);
        var expires = '; expires=' + expiresDate.toGMTString();

        document.cookie = 'mdb_free_download_date_' + technology + '=' + cookieValue + expires + '; path=/';
      }
    }

    $("#getStart-content-directDownload-jquery, #getStart-content-gitDownload-jquery").on("click", function () {
      saveUserFirstDownloadFreePackageDate( 'jq' );
    });
    $("#getStart-content-directDownload-angular, #getStart-content-gitDownload-angular").on("click", function () {
      saveUserFirstDownloadFreePackageDate( 'ng' );
    });
    $("#getStart-content-directDownload-react, #getStart-content-gitDownload-react").on("click", function () {
      saveUserFirstDownloadFreePackageDate( 're' );
    });
    $("#getStart-content-directDownload-vue, #getStart-content-gitDownload-vue").on("click", function () {
      saveUserFirstDownloadFreePackageDate( 'vu' );
    });

   
    document.addEventListener('DOMContentLoaded', function() {
      const lazyImages = [].slice.call(document.querySelectorAll('img[data-lazysrc]'));
      if ('IntersectionObserver' in window) {
        let lazyImageObserver = new IntersectionObserver(function(entries, observer) {
          entries.forEach(function(entry) {
            if (entry.isIntersecting) {
              let lazyImage = entry.target;
              lazyImage.src = lazyImage.dataset.lazysrc;
              lazyImage.removeAttribute('data-lazysrc');
              lazyImageObserver.unobserve(lazyImage);
            }
          });
        });

        lazyImages.forEach(function(lazyImage) {
          lazyImageObserver.observe(lazyImage);
        });
      }
    });

  })(jQuery);
  </script>


  <script>
    document.addEventListener('DOMContentLoaded', (e) => {
      document.querySelectorAll('#slide-out #side-menu li').forEach((menu)=>{
        menu.querySelectorAll('ul.sub-menu li').forEach((link)=>{
          var is_active = link.querySelector('a.collapsible-header').classList.contains('current-page');
          var collapseIcon = menu.querySelector('.rotate-icon');

          if (is_active && collapseIcon) {
            $(link).addClass('current-menu-item')
            $(link).parents('.collapsible-body').siblings().addClass('active')
            return false;
          }
        });
      });

      const setTransitionProperties = () => {
        const sidenav = document.getElementById('slide-out');
        const rotateIcons = sidenav.querySelectorAll('.rotate-icon');
        const collapse = sidenav.querySelectorAll('.collapsible-body');

        rotateIcons.forEach(icon => {
          icon.style.transitionProperty = 'transform'
        });

        collapse.forEach(collapse => {
          collapse.style.transitionProperty = 'height'
        });
      }

      setTimeout(setTransitionProperties, 1);
    });
  </script>

</body>

</html>

