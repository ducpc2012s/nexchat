# Hướng dẫn cho AI Assistant làm việc với mã nguồn NexChat

Tài liệu này xác định các quy tắc và hướng dẫn cho AI Assistant khi làm việc với mã nguồn NexChat để đảm bảo hiệu quả, chính xác và tránh các vấn đề phổ biến.

## Quy tắc chung

1. **Giới hạn số lượng mã**: KHÔNG tạo ra quá 500 dòng mã trong một phản hồi để tránh quá tải token và gây ảo giác.

2. **Trọng tâm vào các file quan trọng**: Tập trung chỉnh sửa các file chính sau:
   - `g4f/gui/client/index.html` - Giao diện người dùng HTML
   - `g4f/gui/client/static/css/style.css` - Phong cách CSS
   - `g4f/gui/client/static/img/` - Thư mục chứa hình ảnh

3. **Phân chia mã**: Khi cần trình bày mã dài, hãy chia thành các phần nhỏ hơn, tập trung vào các thành phần chức năng cụ thể.

4. **Bảo tồn cấu trúc**: Không thay đổi cấu trúc mã nguồn cốt lõi hoặc xóa các phần quan trọng có thể phá vỡ chức năng.

## Quy tắc cụ thể cho NexChat

### HTML (index.html)

1. **Giữ nguyên cấu trúc HTML**: Không thay đổi cấu trúc DOM cơ bản, chỉ sửa đổi nội dung, lớp CSS và ID khi thực sự cần thiết.

2. **Bảo toàn ID và class quan trọng**: Không thay đổi các ID và class được sử dụng trong JavaScript:
   - `chatBody`, `userInput`, `sendButton`, `model`, `provider`
   - Các button với chức năng đặc biệt như: `cancelButton`, `regenerateButton`

3. **Chỉ sửa đổi văn bản và hình ảnh** để thay đổi thương hiệu, không thay đổi logic.

### CSS (style.css)

1. **Ưu tiên sửa biến CSS**: Tập trung thay đổi các biến CSS trong `:root` cho việc tùy chỉnh giao diện:
   ```css
   :root {
       --accent: #YOUR_COLOR;
       --colour-1: #YOUR_COLOR;
       /* etc */
   }
   ```

2. **Không xóa các lớp CSS quan trọng**: Chỉ sửa đổi thuộc tính, không xóa các lớp hoàn toàn.

3. **Thêm lớp mới thay vì ghi đè**: Khi cần thêm kiểu mới, tạo lớp mới thay vì sửa đổi lớp hiện có.

### JavaScript

1. **Không sửa đổi logic JavaScript**: Tránh thay đổi các file JS trừ khi thực sự cần thiết. 

2. **Không đổi tên biến hoặc hàm**: Giữ nguyên tất cả tên biến và hàm trong JavaScript.

3. **Thận trọng với sự kiện**: Không thay đổi các trình xử lý sự kiện hoặc listeners.

### Docker

1. **Bảo tồn cấu trúc Dockerfile**: Chỉ thay đổi biến môi trường hoặc hình ảnh nền nếu cần.

2. **Không thay đổi cổng mạng**: Giữ nguyên cổng đã cấu hình (8080, 1337, 7900).

## Quy trình làm việc hiệu quả

1. **Phân tích trước khi sửa đổi**: Luôn phân tích và hiểu mã hiện có trước khi đề xuất thay đổi.

2. **Thay đổi từng bước nhỏ**: Đề xuất thay đổi nhỏ theo từng bước thay vì một lần đại tu lớn.

3. **Tạo danh sách kiểm tra**: Liệt kê các thay đổi theo thứ tự ưu tiên với các bước cụ thể.

4. **Tập trung vào tính thẩm mỹ**: Ưu tiên thay đổi thẩm mỹ trước khi đề xuất các thay đổi chức năng.

5. **Kiểm tra tương thích**: Đảm bảo các thay đổi tương thích với cả phiên bản web và Docker.

## Xử lý lỗi

1. **Cung cấp hướng dẫn gỡ lỗi**: Khi đề xuất thay đổi, hãy bao gồm cách kiểm tra và gỡ lỗi.

2. **Biết khi nào phải dừng lại**: Nếu một thay đổi quá phức tạp hoặc rủi ro, hãy đề xuất giải pháp đơn giản hơn.

3. **Sao lưu đề xuất**: Đề xuất tạo bản sao lưu trước khi thực hiện các thay đổi lớn.

## Tài nguyên tham khảo

- Tham khảo cấu trúc file trong `planning.md`
- Tạo các bản xem trước trực quan khi đề xuất thay đổi giao diện
- Sử dụng các công cụ trực quan để giúp lựa chọn bảng màu và font chữ

Bằng cách tuân thủ các hướng dẫn này, AI Assistant có thể hỗ trợ hiệu quả trong việc tùy chỉnh ứng dụng NexChat mà không gây ra các lỗi phổ biến hoặc quá tải token.
