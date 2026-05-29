<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>500 - Lỗi Máy Chủ Hệ Thống</title>
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
                max-width: 520px;
                width: 100%;
            }

            .error-code {
                font-size: 120px;
                font-weight: 800;
                line-height: 1;
                background: linear-gradient(135deg, #ef4444 0%, #b91c1c 100%);
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

            .actions {
                display: flex;
                gap: 12px;
                justify-content: center;
            }

            .btn {
                display: inline-block;
                text-decoration: none;
                padding: 12px 24px;
                font-size: 15px;
                font-weight: 500;
                border-radius: 12px;
                transition: all 0.2s ease-in-out;
            }

            .btn-primary {
                background-color: #ef4444;
                color: #ffffff;
                box-shadow: 0 4px 12px rgba(239, 68, 68, 0.2);
            }

            .btn-primary:hover {
                background-color: #dc2626;
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(239, 68, 68, 0.3);
            }

            .btn-secondary {
                background-color: #1f2937;
                color: #d1d5db;
                border: 1px solid #374151;
            }

            .btn-secondary:hover {
                background-color: #374151;
                color: #ffffff;
                transform: translateY(-2px);
            }

            .btn:active {
                transform: translateY(0);
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="error-code">500</div>
            <h1 class="error-title">Lỗi hệ thống bất ngờ</h1>
            <p class="error-message">Đã có lỗi xảy ra từ phía máy chủ (Internal Server Error). Chúng tôi đang cố gắng
                khắc phục sự cố này nhanh nhất có thể.</p>
            <div class="actions">
                <a href="${pageContext.request.contextPath}/" class="btn btn-secondary">Quay về trang chủ</a>
                <a href="javascript:location.reload()" class="btn btn-primary">Tải lại trang</a>
            </div>
        </div>
    </body>

    </html>