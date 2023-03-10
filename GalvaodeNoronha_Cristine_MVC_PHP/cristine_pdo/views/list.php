
<html>
<div id="content" class="row">
	<ul>
		<?php
		for($i = 0; $i < $rows; $i++) { 
			echo '<a class="col-12 med-col-6" href="index.php?id='.$userfip[$i]->id.'">
			<li>'.$userfip[$i]->user_fname.' '.$userfip[$i]->user_lname.'</li></a>
			';
		}
		?>
	</ul>
</html>	
