#!/bin/bash |
# creates new website projects folders and files |
# ascii text from http://www.network-science.de/ascii/ with univers font |
 
mkdir assets;
mkdir -p assets/css/sass;
mkdir -p assets/css/sass/global;
mkdir -p assets/css/sass/site;
mkdir -p assets/js;
mkdir -p assets/images;
 
touch index.html;
echo '<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="robots" content="index,follow" />
	<title>Page Title</title>
	<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>
<body>
	<div id="wrapper">
		<div class="header"></div>
		<div class="content"></div>
		<div class="footer"></div>
	</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
</body>
</html>' > index.html

touch config.rb;
echo 'http_path = ""
css_dir = "assets/css"
sass_dir = "assets/css/sass"
images_dir = "assets/img"
javascripts_dir = "assets/js"

# output_style = :expanded or :nested or :compact or :compressed
output_style = :expanded
relative_assets = true
line_comments = true' > config.rb

touch robots.txt;

touch assets/js/scripts.js;
echo '$(document).ready(function() {
	console.log("scripts loaded");
});' > assets/js/scripts.js

touch assets/css/sass/style.scss;
echo '@import "global/master";' > assets/css/sass/style.scss;

touch assets/css/sass/global/_master.scss;
echo '/*
                                          ,d                          
                                          88                          
88,dPYba,,adPYba,  ,adPPYYba, ,adPPYba, MM88MMM ,adPPYba, 8b,dPPYba,  
88P`   "88"    "8a ""     `Y8 I8[    ""   88   a8P_____88 88P`   "Y8  
88      88      88 ,adPPPPP88  `"Y8ba,    88   8PP""""""" 88          
88      88      88 88,    ,88 aa    ]8I   88,  "8b,   ,aa 88          
88      88      88 `"8bbdP"Y8 `"YbbdP"`   "Y888 `"Ybbd8"` 88      

-------------------------------------------------------------------------------
*******************************************************************************
===============================================================================
*/

@import "compass";
@import "compass/layout";
@import "compass/css3";
@import "variables";
@import "mixins";
@import "../site/base";
@import "../site/layout";
@import "../site/typography";
@import "../site/navigation";
@import "../site/sections";' > assets/css/sass/global/_master.scss

touch assets/css/sass/global/_variables.scss;
echo '/*
                                  88            88          88             
                                  ""            88          88             
                                                88          88             
8b       d8 ,adPPYYba, 8b,dPPYba, 88 ,adPPYYba, 88,dPPYba,  88  ,adPPYba,  
`8b     d8` ""     `Y8 88P`   "Y8 88 ""     `Y8 88P`    "8a 88 a8P_____88  
 `8b   d8`  ,adPPPPP88 88         88 ,adPPPPP88 88       d8 88 8PP"""""""  
  `8b,d8`   88,    ,88 88         88 88,    ,88 88b,   ,a8" 88 "8b,   ,aa  
    "8"     `"8bbdP"Y8 88         88 `"8bbdP"Y8 8Y"Ybbd8"`  88  `"Ybbd8"`  

-------------------------------------------------------------------------------
*******************************************************************************
===============================================================================
*/
' > assets/css/sass/global/_variables.scss;

touch assets/css/sass/global/_mixins.scss;
echo '/*
                   88             88                        
                   ""             ""                        
                                                            
88,dPYba,,adPYba,  88 8b,     ,d8 88 8b,dPPYba,  ,adPPYba,  
88P`   "88"    "8a 88  `Y8, ,8P`  88 88P`   `"8a I8[    ""  
88      88      88 88    )888(    88 88       88  `"Y8ba,   
88      88      88 88  ,d8" "8b,  88 88       88 aa    ]8I  
88      88      88 88 8P`     `Y8 88 88       88 `"YbbdP"`

-------------------------------------------------------------------------------
*******************************************************************************
===============================================================================
*/' > assets/css/sass/global/_mixins.scss;

touch assets/css/sass/site/_base.scss;
echo '/*
88                                           
88                                           
88                                           
88,dPPYba,  ,adPPYYba, ,adPPYba,  ,adPPYba,  
88P`    "8a ""     `Y8 I8[    "" a8P_____88  
88       d8 ,adPPPPP88  `"Y8ba,  8PP"""""""  
88b,   ,a8" 88,    ,88 aa    ]8I "8b,   ,aa  
8Y"Ybbd8"`  `"8bbdP"Y8 `"YbbdP"`  `"Ybbd8"` 

-------------------------------------------------------------------------------
*******************************************************************************
===============================================================================
*/

@import "compass/reset";' > assets/css/sass/site/_base.scss;

touch assets/css/sass/site/_layout.scss;
echo '/*
88                                                         
88                                                  ,d     
88                                                  88     
88 ,adPPYYba, 8b       d8  ,adPPYba,  88       88 MM88MMM  
88 ""     `Y8 `8b     d8` a8"     "8a 88       88   88     
88 ,adPPPPP88  `8b   d8`  8b       d8 88       88   88     
88 88,    ,88   `8b,d8`   "8a,   ,a8" "8a,   ,a88   88,    
88 `"8bbdP"Y8     Y88`     `"YbbdP"`   `"YbbdP`Y8   "Y888  
                  d8`                                      
                 d8`              

-------------------------------------------------------------------------------
*******************************************************************************
===============================================================================
*/' > assets/css/sass/site/_layout.scss;

touch assets/css/sass/site/_typography.scss;
echo '/*
  ,d                                        
  88                                        
MM88MMM 8b       d8 8b,dPPYba,   ,adPPYba,  
  88    `8b     d8` 88P`    "8a a8P_____88  
  88     `8b   d8`  88       d8 8PP"""""""  
  88,     `8b,d8`   88b,   ,a8" "8b,   ,aa  
  "Y888     Y88`    88`YbbdP"`   `"Ybbd8"`  
            d8`     88                      
           d8`      88                      

-------------------------------------------------------------------------------
*******************************************************************************
===============================================================================
*/' > assets/css/sass/site/_typography.scss;

touch assets/css/sass/site/_navigation.scss;
echo '/*
8b,dPPYba,  ,adPPYYba, 8b       d8  
88P`   `"8a ""     `Y8 `8b     d8`  
88       88 ,adPPPPP88  `8b   d8`   
88       88 88,    ,88   `8b,d8`    
88       88 `"8bbdP"Y8     "8"      

-------------------------------------------------------------------------------
*******************************************************************************
===============================================================================
*/' > assets/css/sass/site/_navigation.scss;

touch assets/css/sass/site/_sections.scss;
echo '/*
                                        88                          
                                  ,d    ""                          
                                  88                                
,adPPYba,  ,adPPYba,  ,adPPYba, MM88MMM 88  ,adPPYba,  8b,dPPYba,   
I8[    "" a8P_____88 a8"     ""   88    88 a8"     "8a 88P`   `"8a  
 `"Y8ba,  8PP""""""" 8b           88    88 8b       d8 88       88  
aa    ]8I "8b,   ,aa "8a,   ,aa   88,   88 "8a,   ,a8" 88       88  
`"YbbdP"`  `"Ybbd8"`  `"Ybbd8"`   "Y888 88  `"YbbdP"`  88       88

-------------------------------------------------------------------------------
*******************************************************************************
===============================================================================
*/' > assets/css/sass/site/_sections.scss;




