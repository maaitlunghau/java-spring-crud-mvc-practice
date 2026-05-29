<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Manage User</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
                crossorigin="anonymous">
        </head>

        <body>
            <div style="padding: 15px;">
                <div style="margin: 15px 0px; display: flex; justify-content: space-between; align-items: center;">
                    <h3>Table Users</h3>
                    <a href="${pageContext.request.contextPath}/user/create" class="btn btn-primary">Create Users</a>
                </div>

                <c:if test="${not empty users}">
                    <table class="table table-bordered table-hover" style="text-align: center;">
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Age</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <th>${user.id}</th>
                                    <td>${user.name}</td>
                                    <td>${user.email}</td>
                                    <td>${user.age}</td>
                                    <td style="display: flex; gap: 15px; justify-content: center;">
                                        <a href="${pageContext.request.contextPath}/user/edit/${user.id}"
                                            class="btn btn-warning">
                                            Update
                                        </a>
                                        <form method="post"
                                            action="${pageContext.request.contextPath}/user/delete/${user.id}"
                                            onsubmit="return confirm('Are you sure you want to delete this user?')">
                                            <button class="btn btn-danger" type="submit">
                                                Delete
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:if>

                <c:if test="${empty users}">
                    <div style="text-align: center; margin-top: 50px;">
                        <h5>No Users Found!</h5>
                        <p>
                            Currently, there are no users available. Please click the "Create Users" button to add new
                            users to the system.
                        </p>
                    </div>
                </c:if>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
                crossorigin="anonymous"></script>
        </body>

        </html>