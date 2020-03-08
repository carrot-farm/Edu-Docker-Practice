<?php 
    
    $conn = mysqli_connect(
        '15.164.93.92',
        'test',
        'password',
        'TEST',
        '9876'
    );

    if(mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: ".mysqli_connect_error();
    }
    
    $sql = "SELECT VERSION()"; // 쿼리문
    $result = mysqli_query($conn, $sql); // 쿼리 실행
    $row = mysqli_fetch_array($result); // 결과를 배열로 반환
    print_r($row["VERSION()"]); // 출력
?>
