<?php
 
// This function will take $_SERVER['REQUEST_URI'] and build a breadcrumb based on the user's current path
function breadcrumbs($separator = '&nbsp; > &nbsp;', $home = 'Home') {
    // This gets the REQUEST_URI (/path/to/file.php), splits the string (using '/') into an array, and then filters out any empty values
    $path = array_filter(explode('/', parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)));
 
    // This will build our "base URL" ... Also accounts for HTTPS :)
	//changes made http_host to https
    $base = ($_SERVER['HTTP_HOST'] ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
 
    // Initialize a temporary array with our breadcrumbs. (starting with our home page, which I'm assuming will be the base URL)
    $breadcrumbs = Array("<a href=\"$base\">$home</a> ");
    $breadcrumbs1 = Array();

 
    // Find out the index for the last value in our path array
	$last_key=array_keys($path);
    $last = end($last_key);
 
    // Build the rest of the breadcrumbs
    foreach ($path AS $x => $crumb) {
        // Our "title" is the text that will be displayed (strip out .php and turn '_' into a space)
        $title = ucwords(str_replace(Array('.php', '_'), Array('', ' '), $crumb));
        // If we are not on the last index, then display an <a> tag
        if ($x != $last)
            $breadcrumbs[] = "<li class='breadcrumb-item'><a href=\"$base$crumb\">$title</a></li>";
        // Otherwise, just display the title (minus)
        else
            $breadcrumbs[] = $title;
    }
	foreach ($path AS $y => $crumb1) {
        // Our "title" is the text that will be displayed (strip out .php and turn '_' into a space)
        $title1 = ucwords(str_replace(Array('.php', '_'), Array('', ' '), $crumb1));
        // If we are not on the last index, then display an <a> tag
        if ($y == $last)
          $breadcrumbs1[] = $title1;
    }
	
	
	
 
    // Build our temporary array (pieces of bread) into one big string :)
    return implode($separator, $breadcrumbs);
}
// This function will take $_SERVER['REQUEST_URI'] and build a breadcrumb based on the user's current path
function breadcrumbs1($separator = '&nbsp; > &nbsp;', $home = 'Home') {
    // This gets the REQUEST_URI (/path/to/file.php), splits the string (using '/') into an array, and then filters out any empty values
    $path = array_filter(explode('/', parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)));
 
    // This will build our "base URL" ... Also accounts for HTTPS :)
	//changes made http_host to https
    $base = ($_SERVER['HTTP_HOST'] ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
 
    // Initialize a temporary array with our breadcrumbs. (starting with our home page, which I'm assuming will be the base URL)
    $breadcrumbs = Array("<a href=\"$base\">$home</a> ");
    $breadcrumbs1 = Array();

 
    // Find out the index for the last value in our path array
	$last_key=array_keys($path);
    $last = end($last_key);
 
    // Build the rest of the breadcrumbs
	foreach ($path AS $y => $crumb1) {
        // Our "title" is the text that will be displayed (strip out .php and turn '_' into a space)
        $title1 = ucwords(str_replace(Array('.php', '_'), Array('', ' '), $crumb1));
        // If we are not on the last index, then display an <a> tag
        if ($y == $last)
          $breadcrumbs1[] = $title1;
    }
	
	
	
 
    // Build our temporary array (pieces of bread) into one big string :)
    return implode($separator, $breadcrumbs1);
}
 
?>

<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini mb-5">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1> <?php echo breadcrumbs1() ;?></h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <?php echo breadcrumbs() ;?>
                </ol>
            </div>
        </div>
		
    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->