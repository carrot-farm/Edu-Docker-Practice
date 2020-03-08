# Edu-Docker-Practice

## 개요
* 도커 hub와 연동 연습.

## 설치방법
<pre>
cd ~
git clone https://github.com/carrot-farm/Edu-Docker-Practice
cd Edu-Docker-Practice
</pre>

## 실행방법
<pre>
# docker hub login
docker login

# 이미지 받아오기
docker pull carrotfarm/edu-test-php
docker run -d -p 80:80 -v /hoem/ec2-user/Docker-Practice/Project:/var/www/html

</pre>
