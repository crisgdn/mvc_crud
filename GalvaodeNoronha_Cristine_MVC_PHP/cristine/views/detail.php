

<div class="file">
<div id="" class="file">
<?php
echo 
	'
	<div class="">
		<img id="empImage" alt="Employee Photo" src="images/'.$userfip[0]->user_image.'">
	</div>
	';	
?>
<div id="empDetails"> 
   <?php
    echo '
	<span class="centerDetails">
		<span class="label">Name:</span> '.$userfip[0]->user_lname.', '.$userfip[0]->user_fname.'<br>
		<span class="label">Employee ID:</span> '.$userfip[0]->id.'<br>
		<span class="label">Position:</span> '.$userfip[0]->user_role.'<br>
	</span>'
	?>
	<div class="gap">
	<?php	
		echo '<a href="http://localhost/cristine/index.php?task=delete&id='.$userfip[0]->id.'">delete employee</a><br>';
		echo '<a href="http://localhost/cristine/index.php?task=update&id='.$userfip[0]->id.'">update employee</a>';	
	?>
	</div>
</div>

</div>

