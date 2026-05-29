<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Spring Boot MVC - JSP Practice</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
        <style>
            * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }

            body {
                font-family: 'Inter', sans-serif;
                background-color: #0b0f19;
                color: #f3f4f6;
                line-height: 1.6;
                padding: 40px 24px;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }

            .wrapper {
                max-width: 800px;
                width: 100%;
            }

            /* Header Section */
            header {
                text-align: center;
                margin-bottom: 48px;
            }

            .badge {
                display: inline-block;
                background-color: rgba(59, 130, 246, 0.1);
                color: #3b82f6;
                font-size: 13px;
                font-weight: 600;
                padding: 6px 16px;
                border-radius: 9999px;
                margin-bottom: 16px;
                border: 1px solid rgba(59, 130, 246, 0.2);
            }

            h1 {
                font-size: 36px;
                font-weight: 700;
                color: #ffffff;
                letter-spacing: -1px;
                margin-bottom: 16px;
            }

            .lead-text {
                font-size: 18px;
                color: #9ca3af;
                max-width: 600px;
                margin: 0 auto;
            }

            /* Card Architecture Box */
            .tech-box {
                background-color: #111827;
                border: 1px solid #1f2937;
                border-radius: 16px;
                padding: 24px;
                margin-bottom: 32px;
                display: flex;
                gap: 24px;
                align-items: center;
            }

            .tech-icon {
                font-size: 32px;
                background: linear-gradient(135deg, #10b981 0%, #059669 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                font-weight: 800;
            }

            .tech-info h3 {
                color: #ffffff;
                font-size: 16px;
                margin-bottom: 4px;
            }

            .tech-info p {
                color: #9ca3af;
                font-size: 14px;
            }

            /* Feature Grid */
            .features-title {
                font-size: 20px;
                color: #ffffff;
                margin-bottom: 16px;
                font-weight: 600;
            }

            .grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
                gap: 16px;
                margin-bottom: 48px;
            }

            .card {
                background-color: #111827;
                border: 1px solid #1f2937;
                border-radius: 12px;
                padding: 20px;
                transition: transform 0.2s, border-color 0.2s;
            }

            .card:hover {
                transform: translateY(-2px);
                border-color: #374151;
            }

            .card-icon {
                color: #3b82f6;
                font-weight: 700;
                margin-bottom: 8px;
            }

            .card h4 {
                color: #ffffff;
                font-size: 16px;
                margin-bottom: 6px;
            }

            .card p {
                color: #9ca3af;
                font-size: 13px;
            }

            /* CTA Section */
            .cta-section {
                text-align: center;
            }

            .btn-primary {
                display: inline-block;
                background-color: #ffffff;
                color: #0b0f19;
                text-decoration: none;
                padding: 14px 36px;
                font-size: 16px;
                font-weight: 600;
                border-radius: 9999px;
                transition: all 0.2s ease-in-out;
                box-shadow: 0 4px 12px rgba(255, 255, 255, 0.05);
            }

            .btn-primary:hover {
                background-color: #e5e7eb;
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(255, 255, 255, 0.15);
            }

            .btn-primary:active {
                transform: translateY(0);
            }
        </style>
    </head>

    <body>

        <div class="wrapper">
            <header>
                <span class="badge">Spring Boot MVC Lab</span>
                <h1>Dự Án Luyện Tập CRUD Người Dùng</h1>
                <p class="lead-text">Hệ thống quản lý thông tin thành viên mô phỏng toàn diện luồng dữ liệu kiến trúc
                    MVC sử
                    dụng công cụ hiển thị giao diện JSP View Engine.</p>
            </header>

            <div class="tech-box">
                <div class="tech-icon">MOCK</div>
                <div class="tech-info">
                    <h3>Trạng thái dữ liệu: In-Memory Data Store</h3>
                    <p>Ứng dụng vận hành logic CRUD thông qua tầng Service kết hợp với cấu trúc Java Collections và
                        Stream
                        API, cô lập hoàn toàn tầng xử lý giao diện trước khi tích hợp hệ quản trị cơ sở dữ liệu.</p>
                </div>
            </div>

            <h3 class="features-title">Các phân hệ chức năng thực hành</h3>
            <div class="grid">
                <div class="card">
                    <div class="card-icon">01 / READ</div>
                    <h4>Xem Danh Sách</h4>
                    <p>Nạp dữ liệu từ Service, truyền qua Model và duyệt hiển thị động mượt mà bằng JSTL Standard Tag
                        Library.</p>
                </div>
                <div class="card">
                    <div class="card-icon">02 / CREATE</div>
                    <h4>Thêm Thành Viên</h4>
                    <p>Sử dụng cơ chế Data Binding tự động binding dữ liệu an toàn ánh xạ trực tiếp vào Java Object.</p>
                </div>
                <div class="card">
                    <div class="card-icon">03 / UPDATE</div>
                    <h4>Cập Nhật Dữ Liệu</h4>
                    <p>Truy xuất chính xác thông tin dựa vào biến đường dẫn @PathVariable và cập nhật trạng thái.</p>
                </div>
                <div class="card">
                    <div class="card-icon">04 / DELETE</div>
                    <h4>Xóa Bản Ghi</h4>
                    <p>Thao tác xóa phần tử an toàn, định hướng luồng xử lý và tối ưu điều hướng người dùng.</p>
                </div>
            </div>

            <div class="cta-section">
                <a href="${pageContext.request.contextPath}/user" class="btn-primary">Bắt đầu trải nghiệm ứng dụng</a>
            </div>
        </div>

    </body>

    </html>