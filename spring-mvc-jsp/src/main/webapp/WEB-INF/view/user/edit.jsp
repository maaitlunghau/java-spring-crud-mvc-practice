<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Update User</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
                crossorigin="anonymous">
        </head>

        <body>
            <div style="padding: 15px; margin-top: 15px">
                <div style="width: 600px; margin: 0 auto;">
                    <h3>Update User with ID: ${id}</h3>
                    <hr />

                    <form:form method="post" action="${pageContext.request.contextPath}/user/edit"
                        modelAttribute="user">

                        <form:hidden path="id" />

                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <form:input type="text" class="form-control" path="name" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <form:input type="text" class="form-control" path="email" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Age</label>
                            <form:input type="text" class="form-control" path="age" />
                        </div>

                        <div>
                            <button class="btn btn-warning" type="submit">
                                Save
                            </button>
                        </div>

                    </form:form>
                </div>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
                crossorigin="anonymous"></script>
        </body>

        </html>