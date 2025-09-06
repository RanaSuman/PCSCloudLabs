<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.dao.pojo.OnGoingEvents"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ongoing Events - CSS Button Modal Working</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .content-wrapper {
            margin-left: 220px;
            padding: 20px;
        }
        input[type="checkbox"] {
            display: none;
        }
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.5);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }
        input[type="checkbox"]:checked ~ .modal-overlay {
            display: flex;
        }
        .modal-content {
            background: white;
            padding: 20px;
            border-radius: 8px;
            width: 100%;
            max-width: 500px;
        }
        .modal-header, .modal-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .close-btn {
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
        }
        .modal-body {
            margin-top: 10px;
        }
        .btn-modal {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <jsp:include page="adminSidebar.jsp" />

    <div class="content-wrapper">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2>Ongoing Events</h2>

            <!-- Add Event Checkbox, Label, and Modal together -->
            <input type="checkbox" id="add-event-checkbox">
            <label for="add-event-checkbox" class="btn btn-primary btn-modal">+ Add Event</label>

            <div class="modal-overlay">
                <label for="add-event-checkbox" class="modal-overlay"></label>
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>Add New Event</h5>
                        <label for="add-event-checkbox" class="close-btn">&times;</label>
                    </div>
                    <div class="modal-body">
                        <form action="AddOnGoingEventServlet" method="post" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label for="addImage" class="form-label">Image</label>
                                <input type="file" name="image" id="addImage" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="addTitle" class="form-label">Title</label>
                                <input type="text" name="title" id="addTitle" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="addTime" class="form-label">Time</label>
                                <input type="text" name="time" id="addTime" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="addStartDate" class="form-label">Start Date</label>
                                <input type="date" name="startDate" id="addStartDate" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="addEndDate" class="form-label">End Date</label>
                                <input type="date" name="endDate" id="addEndDate" class="form-control" required>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Save Event</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-4">
            <%
                List<OnGoingEvents> events = (List<OnGoingEvents>) request.getAttribute("ongoinglist");
                if (events != null && !events.isEmpty()) {
                    for (OnGoingEvents ev : events) {
            %>
            <div class="col-md-4">
                <div class="card h-100 shadow-sm">
                    <img src="<%=request.getContextPath() + "/" + ev.getImage()%>" class="card-img-top" alt="Event Image" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h5 class="card-title"><%=ev.getTitle()%></h5>
                        <p class="card-text mb-1"><strong>Time:</strong> <%=ev.getTime()%></p>
                        <p class="card-text mb-1"><strong>Start:</strong> <%=ev.getStartDate()%></p>
                        <p class="card-text"><strong>End:</strong> <%=ev.getEndDate()%></p>
                        <div class="d-flex justify-content-between mt-3">
                            <!-- Edit Event Checkbox, Label, and Modal -->
                            <input type="checkbox" id="edit-event-checkbox-<%=ev.getId()%>">
                            <label for="edit-event-checkbox-<%=ev.getId()%>" class="btn btn-sm btn-warning btn-modal">Edit</label>

                            <form action="DeleteOnGoingEventServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this event?');">
                                <input type="hidden" name="id" value="<%=ev.getId()%>">
                                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                            </form>

                            <div class="modal-overlay">
                                <label for="edit-event-checkbox-<%=ev.getId()%>" class="modal-overlay"></label>
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5>Edit Event</h5>
                                        <label for="edit-event-checkbox-<%=ev.getId()%>" class="close-btn">&times;</label>
                                    </div>
                                    <div class="modal-body">
                                        <form action="UpdateOnGoingEventServlet" method="post" enctype="multipart/form-data">
                                            <input type="hidden" name="id" value="<%=ev.getId()%>">
                                            <div class="mb-3">
                                                <label for="image<%=ev.getId()%>" class="form-label">Image (optional)</label>
                                                <input type="file" name="image" id="image<%=ev.getId()%>" class="form-control">
                                            </div>
                                            <div class="mb-3">
                                                <label for="title<%=ev.getId()%>" class="form-label">Title</label>
                                                <input type="text" name="title" id="title<%=ev.getId()%>" class="form-control" value="<%=ev.getTitle()%>" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="time<%=ev.getId()%>" class="form-label">Time</label>
                                                <input type="text" name="time" id="time<%=ev.getId()%>" class="form-control" value="<%=ev.getTime()%>" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="startDate<%=ev.getId()%>" class="form-label">Start Date</label>
                                                <input type="date" name="startDate" id="startDate<%=ev.getId()%>" class="form-control" value="<%=ev.getStartDate()%>" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="endDate<%=ev.getId()%>" class="form-label">End Date</label>
                                                <input type="date" name="endDate" id="endDate<%=ev.getId()%>" class="form-control" value="<%=ev.getEndDate()%>" required>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-success">Update</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%      }
                } else { %>
            <div class="col-12">
                <div class="alert alert-info text-center">No ongoing events found.</div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
