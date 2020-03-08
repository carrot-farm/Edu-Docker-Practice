FROM ubuntu:18.04

MAINTAINER suhyun kim <chohoki@gmail.com>

# 설치시 사용자 에게 묻거나 하는것을 방지하기 위한 환경변수 설정
ENV DEBIAN_FRONTEND=noninteractive

# 스크립트 실행
# apt-get 업데이트 -> 아파치 설치 -> 공통 레포지토리 설치 -> php 레포지토리 다운로드 -> apt-get 반영 -> php5.6설치
RUN apt-get update && \ 
	apt-get install -y apache2 && \
	apt-get install -y software-properties-common && \
	add-apt-repository ppa:ondrej/php && \
	apt-get update && \
	apt-get install -y php5.6

# MySQL 연동
RUN apt-get install -y php5.6-mysql

# 포트 지정
EXPOSE 80

# 컨테이너가 바로 종료되는 것을 방지
CMD ["apachectl", "-D", "FOREGROUND"]

