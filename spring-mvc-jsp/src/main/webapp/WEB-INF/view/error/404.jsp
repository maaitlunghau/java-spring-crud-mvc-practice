<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>404 - Không Tìm Thấy Trang</title>
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
                display: flex;
                align-items: center;
                justify-content: center;
                min-height: 100vh;
                padding: 24px;
            }

            .container {
                text-align: center;
                max-width: 480px;
                width: 100%;
            }

            .error-code {
                font-size: 120px;
                font-weight: 800;
                line-height: 1;
                background: linear-gradient(135deg, #3b82f6 0%, #1d4ed8 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                margin-bottom: 16px;
                letter-spacing: -4px;
            }

            .error-title {
                font-size: 24px;
                font-weight: 600;
                color: #ffffff;
                margin-bottom: 12px;
            }

            .error-message {
                font-size: 16px;
                color: #9ca3af;
                line-height: 1.6;
                margin-bottom: 32px;
            }

            .btn-home {
                display: inline-block;
                background-color: #ffffff;
                color: #0b0f19;
                text-decoration: none;
                padding: 12px 28px;
                font-size: 15px;
                font-weight: 500;
                border-radius: 9999px;
                transition: all 0.2s ease-in-out;
                box-shadow: 0 4px 12px rgba(255, 255, 255, 0.1);
            }

            .btn-home:hover {
                background-color: #e5e7eb;
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(255, 255, 255, 0.15);
            }

            .btn-home:active {
                transform: translateY(0);
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="error-code">404</div>
            <h1 class="error-title">Trang không tồn tại</h1>
            <p class="error-message">Đường dẫn bạn truy cập có thể đã bị xóa, thay đổi tên hoặc tạm thời không khả dụng.
            </p>
            <a href="${pageContext.request.contextPath}/" class="btn-home">Quay về trang chủ</a>
        </div>
    </body>

    </html>