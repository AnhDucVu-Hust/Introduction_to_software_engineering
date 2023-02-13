# Phần mềm quản lý dân cư và trao thưởng

## Hướng dẫn cài đặt
-   Truy cập vào link github [này](https://github.com/AnhDucVu-Hust/Introduction_to_software_engineering) để clone về.

-   Download IntelliJ (Recommend: IntelliJ IDEA Community Edition 2022.3 tại [đây](https://www.jetbrains.com/idea/download/other.html)).

- Cài JDBC - MySQL tại [đây](https://dev.mysql.com/downloads/file/?id=465644) và thêm vào project.

- Tải MySQL và restore Database (chạy file [db.sql](db.sql))
  
- Kết nối Database với IntelliJ 
	- Từ File -> Project Structure
	- Trong cửa sổ Project Structure chọn dấu cộng ở phía bên phải
    - Tại cửa sổ hiện lên , chọn đường dẫn như trong hình 
    - Chỉnh sửa tên database server, tên người dùng và mật khẩu trong file [MyConnection.java](src/main/java/main/login/MyConnection.java).

## Hướng dẫn sử dụng
- Tại cửa sổ IntelliJ chọn folder chứa Project đã clone, mở file HelloApplication.Java như trong hình. Chọn nút “Run”.

- Tại trang đăng nhập, nhập tài khoản được cấp để truy cập vào trang chủ để sử dụng.

- Ngoài ra bên mình còn nhận bảo trì phần mềm nên nếu có bugs thì liên hệ trực tiếp bên mình theo email phamduytung2002@gmail.com.