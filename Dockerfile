# Python 3.9을 기반으로 하는 이미지를 사용
FROM python:3.9-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일 복사
COPY requirements.txt .

# 필요한 라이브러리 설치
RUN pip install -r requirements.txt

# 애플리케이션 파일 복사
COPY . .

# 애플리케이션 실행
CMD ["python", "app.py"]
