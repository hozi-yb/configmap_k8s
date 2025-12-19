# Nginx 공식 이미지를 기반으로 시작합니다.
FROM nginx:latest

# 웹사이트의 정적 파일을 Nginx의 기본 웹 루트 디렉터리에 복사합니다.
# 이 예시에서는 ./my-nginx-app/ 디렉터리 내의 모든 파일이 웹사이트 파일이라고 가정합니다.
# 만약 Dockerfile과 동일한 디렉터리에 index.html 등의 파일이 있다면,
# COPY . /usr/share/nginx/html 으로 변경할 수 있습니다.
COPY . .

# 컨테이너가 시작될 때 Nginx가 기본 포트 80에서 리스닝하도록 노출합니다.
EXPOSE 80

# Nginx 서버를 시작합니다.
CMD ["nginx", "-g", "daemon off;"]