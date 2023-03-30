<!DOCTYPE html>
<html>
<head>
	<title>Semester Spider Chart Example</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<!-- Chart.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js"></script>
	<style>
		.container {
			margin-top: 50px;
		}

		#myChart {
			animation: fadein 2s;
		}

		@keyframes fadein {
			from { opacity: 0; }
			to   { opacity: 1; }
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Semester Spider Chart Example</h1>
		<form method="post">
			<div class="form-group">
				<label for="semester">Semester:</label>
				<select class="form-control" id="semester" name="semester">
					<option value="spring">Spring</option>
					<option value="summer">Summer</option>
					<option value="autumn">Autumn</option>
				</select>
			</div>
			<div class="form-group">
				<label for="year">Year:</label>
				<select class="form-control" id="year" name="year">
					<option value="2020">2020</option>
				</select>
			</div>
			<button type="submit" class="btn btn-primary" name="generate_chart">Generate Chart</button>
		</form>
		<?php
// Connect to database
$server = "localhost";
    $username = "root";
    $password = "dark@2020#";
    $db = "sprm";
   
    // Connect to the database
    $conn = mysqli_connect($server, $username, $password, $db);


// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Query to count number of students in each school
$sql = "SELECT COUNT(*) AS num_students,s.schoolID FROM student st
JOIN program p ON st.programID = p.programID
JOIN department d ON p.departmentID = d.departmentID
JOIN school s ON d.schoolID = s.schoolID
GROUP BY s.schoolID";

$result = mysqli_query($conn, $sql);

// Store the counts in an array
$school_counts = array();
while ($row = mysqli_fetch_assoc($result)) {
    $school_counts[$row['schoolID']] = $row['num_students'];
}

// Set data for spider chart
$data_schoolwise = array(
    array(
        "label" => "School wise",
        "data" => array(
            isset($school_counts['SETS']) ? $school_counts['SETS'] : 0,
            isset($school_counts['SLASS']) ? $school_counts['SLASS'] : 0,
            isset($school_counts['SBE']) ? $school_counts['SBE'] : 0,
            isset($school_counts['SELS']) ? $school_counts['SELS'] : 0,
            isset($school_counts['SPPH']) ? $school_counts['SPPH'] : 0,
        ),
        "backgroundColor" => "rgba(255, 99, 132, 0.2)",
        "borderColor" => "rgba(255, 99, 132, 1)",
        "borderWidth" => 2,
        "pointBackgroundColor" => "rgba(255, 99, 132, 1)",
        "pointBorderColor" => "#fff",
        "pointHoverBackgroundColor" => "#fff",
        "pointHoverBorderColor" => "rgba(255, 99, 132, 1)"
    )
);


// Close connection
mysqli_close($conn);
?>

<!-- HTML code for spider chart -->
<div class="container mt-5">
    <h3>Number of Students Enrolled in Each School</h3>
    <canvas id="spider-chart"></canvas>
</div>

<!-- JavaScript code for spider chart -->
<script>
    var ctx = document.getElementById('spider-chart').getContext('2d');
    var chart = new Chart(ctx, {
        type: 'radar',
        data: {
            labels: ['SETS', 'SLASS', 'SBE', 'SELS', 'SPPH'],
            datasets: <?php echo json_encode($data_schoolwise); ?>
        },
        options: {
            animation: {
                duration: 2000,
                easing: 'easeInOutQuart'
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
