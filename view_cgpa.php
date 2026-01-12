<?php
session_start();
	require "php/config.php";
	require_once "php/functions.php";
	$user = new login_registration_class();
	$admin_id = $_SESSION['admin_id'];
	$admin_name = $_SESSION['admin_name'];

	if(!$user->get_admin_session()){
		header('Location: index.php');
		exit();
	}
	if(isset($_REQUEST['vr'])){
		$stid = $_REQUEST['vr'];
		$name = $_REQUEST['vn'];
	}
?>	
<?php 
$pageTitle = "Student Result";
include "php/headertop_admin.php";
?>
<div class="all_student fix">

		<?php
		
		//custom function check credit hour and grade point
		function credit_hour($x){
			if($x=="DBMS") return 3;
			elseif($x == "DBMS Lab") return 1;
			elseif($x == "Mathematics") return 3;
			elseif($x == "Programming") return 3;
			elseif($x == "Programming Lab") return 1;
			elseif($x == "English") return 3;
			elseif($x == "Physics") return 3;
			elseif($x == "Chemistry") return 3;
			elseif($x == "Microprocessors & Assemblu Language") return 3;
			elseif($x == "Artificial Intelligence") return 3;
			elseif($x == "Data Communication") return 3;
			elseif($x == "Machine Learning") return 3;
			elseif($x == "Cyber Security") return 3;
			elseif($x == "Numerical Methods") return 3;
			elseif($x == "Algorithms") return 3;
			elseif($x == "Digital Logic Design") return 3;
			elseif($x == "Object Oriented Programming") return 3;
			elseif($x == "Data Structures") return 3;
			elseif($x == "Discrete Mathematics") return 3;
			elseif($x == "Structured Programming Language") return 3;
			elseif($x == "Basic Electrical Engineering") return 3;
			elseif($x == "Software Engineering") return 3;
			elseif($x == "Computer Graphics") return 3;

		}
		function grade_point($gd){
			if($gd<40) return 0;
			elseif($gd>=40 && $gd<=44) return 2.00;
			elseif($gd>=45 && $gd<=49) return 2.25;
			elseif($gd>=50 && $gd<=54) return 2.50;
			elseif($gd>=55 && $gd<=59) return 2.75;
			elseif($gd>=60 && $gd<=64) return 3.00;
			elseif($gd>=65 && $gd<=69) return 3.25;
			elseif($gd>=70 && $gd<=74) return 3.50;
			elseif($gd>=75 && $gd<=79) return 3.75;
			elseif($gd>=80 && $gd<=100) return 4.00;

		}
		?>
	<!--Infomation of student-->
		<div>
	<p style="text-align:center;color:#fff;background:purple;margin:0;padding:8px;"><?php echo "Name: ".$name."<br>Student ID: " . $stid; ?></p>
	</div>		
	<p style='text-align:center;background:#ddd;color:#01C3AA;padding:5px;width:84%;margin:0 auto'>All Completed Course & Grade</p>
	<?php
	//select semester
			$i=0;
			$ch = 0;
			$gp = 0;
				
			
				//$get_result = $user->show_marks();
				
				$get_result = $user->view_cgpa($stid);
				//var_dump($get_result);
				if($get_result && ($get_result->num_rows)>0){
			?>
				
				<table class="tab_two" style="text-align:center;width:85%;margin:0 auto">
					<th>Subject</th>
					<th>Marks</th>
					<th>Grade</th>
					<th>Credit hr.</th>
					<th>Status</th>
		<?php		
				while($rows = $get_result->fetch_assoc()){
				$i++;
				//count total credit hour;	
				$ch = $ch + credit_hour($rows['sub']);

		?>
			<tr>
				<td><?php echo $rows['sub']; ?></td>
				<td><?php echo $rows['marks']; ?></td>
				<td>
				<?php 
				//set grade for individual subject
					$mark = $rows['marks'];
					if($mark<40){echo "F";}
					elseif($mark>=40 && $mark<=44){echo "D";}
					elseif($mark>=45 && $mark<=49){echo "C";}
					elseif($mark>=50 && $mark<=54){echo "C+";}
					elseif($mark>=55 && $mark<=59){echo "B-";}
					elseif($mark>=60 && $mark<=64){echo "B";}
					elseif($mark>=65 && $mark<=69){echo "B+";}
					elseif($mark>=70 && $mark<=74){echo "A-";}
					elseif($mark>=75 && $mark<=79){echo "A";}
					elseif($mark>=80 && $mark<=100){echo "A+";}
					
					//total grade point
					$gp = $gp + (credit_hour($rows['sub']) * grade_point($rows['marks']));
					
				?>
				</td>
				<td><?php echo credit_hour($rows['sub']); ?></td>
				<td>
				<?php
					$stat = $rows['marks'];
					if($stat<40){
						echo "<span style='background:red;padding:3px 11px;color:#fff;'>Fail</span>";
					}elseif($stat>=40 && $stat<=44){
						echo "<span style='background:yellow'>Retake</span>";
					}else{
						echo "<span style='background:green;padding:3px 6px;color:#fff;'>Pass</span>";
					}
				?>
				</td>
				
				
			</tr>
			<?php } ?>
			<tr>
			<td><?php echo "Total Course: <span style='color:#800080;padding:3px 6px;font-size:22px'>".$i."</span>"; ?></td>
				<td colspan="1">Total CGPA : </td>
				<td colspan="2">
				<?php
				$sg = $gp/$ch;
				echo "<span style='color:green;padding:3px 6px;font-size:22px'>" . round($sg,2) . "</span>"; ?>
				</td>
				<td>
					<?php
						if($sg>=4.00){
							echo "<span style='background:purple;padding:3px 6px;color:#fff;'>Excellent";
						}elseif($sg>=3.0 && $sg<4.00){
							echo "<span style='background:green;padding:3px 6px;color:#fff;'>Good";
						}elseif($sg>=2.5 && $sg<3.0){
							echo "<span style='background:gray;padding:3px 6px;color:#fff;'>Average";
						}else{
							echo "<span style='background:red;padding:3px 6px;color:#fff;'>Probation";
						}
					?>
				</td>
			</tr>
		</table>
		
		<?php 
			}
			else{
				echo  "<p style='color:red;text-align:center'>Nothing Found</p>";
				}
		?>
		
		<div class="back fix">
			<p style="text-align:center"><a href="view_result.php?vr=<?php echo $stid?>&vn=<?php echo $name?>"><button class="editbtn">go to result page</button></a></p>
		</div>

</div>
<?php include "php/footerbottom.php";?>
<?php ob_end_flush() ; ?>