# 1. 사용할 베이스 이미지
FROM openjdk:17-jdk-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. jar 파일을 컨테이너 안으로 복사
COPY build/libs/Moijo_backend-0.0.1-SNAPSHOT.jar app.jar

# 4. 실행할 명령어 설정
ENTRYPOINT ["java", "-jar", "app.jar"]
