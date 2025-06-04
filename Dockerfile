# Sử dụng Tomcat 10.1.31 với JDK 11
FROM tomcat:10.1.31-jdk17

# Xoá ứng dụng mặc định (nếu cần)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR của bạn vào thư mục webapps (đặt tên là ROOT.war để truy cập không cần tên app)
COPY target/Project_LT_Web-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Mặc định Tomcat lắng nghe ở port 8080
EXPOSE 8080
