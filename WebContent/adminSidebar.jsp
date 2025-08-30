<!-- Font Awesome CDN -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
	rel="stylesheet">

<!-- Sidebar -->
<div class="admin-sidebar">
	<h3>
		<i class="fa-solid fa-gear"></i> Admin Panel
	</h3>
	<ul>
		<li><a href="admindashboard.jsp"><i
				class="fa-solid fa-chart-line"></i> Dashboard</a></li>
		<li><a href="unscheduledDemosServlet"><i
				class="fa-regular fa-clock"></i> Unscheduled Demos</a></li>
		<li><a href="alldemosServlet"><i
				class="fa-solid fa-folder-open"></i> All Demos</a></li>
		<li><a href="#" onclick="showLogoutModal(event)"> <i
				class="fa-solid fa-right-from-bracket"></i> Logout
		</a></li>
	</ul>
</div>

<!-- Logout Modal -->
<div id="logoutModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h3>Confirm Logout</h3>
            <span class="close-btn" onclick="closeLogoutModal()">&times;</span>
        </div>
        <div class="modal-body">
            <p>Are you sure you want to logout from your account?</p>
        </div>
        <div class="modal-footer">
            <button class="btn-cancel" onclick="closeLogoutModal()">Cancel</button>
            <form method="post" action="logout.jsp" style="display:inline;">
                <button type="submit" class="btn-logout">Logout</button>
            </form>
        </div>
    </div>
</div>

<!-- Styles -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap')
	;

body {
	margin: 0;
	font-family: 'Inter', sans-serif;
}

.admin-sidebar {
	width: 220px;
	height: 100vh;
	background: linear-gradient(180deg, #007bff, #0056b3);
	color: white;
	padding-top: 40px;
	position: fixed;
	top: 0;
	left: 0;
	box-shadow: 3px 0 12px rgba(0, 0, 0, 0.15);
	display: flex;
	flex-direction: column;
	transition: width 0.3s ease;
}

.admin-sidebar h3 {
	text-align: center;
	margin-bottom: 40px;
	font-size: 22px;
	font-weight: 700;
	letter-spacing: 1px;
}

.admin-sidebar ul {
	list-style: none;
	padding: 0;
	margin: 0;
	flex: 1;
}

.admin-sidebar li {
	margin: 10px 0;
}

.admin-sidebar a {
	color: white;
	text-decoration: none;
	display: flex;
	align-items: center;
	gap: 10px;
	padding: 14px 20px;
	font-size: 15px;
	font-weight: 500;
	border-radius: 8px;
	transition: all 0.3s ease;
	position: relative;
}

/* Hover effect */
.admin-sidebar a:hover {
	background: rgba(255, 255, 255, 0.15);
	transform: translateX(4px);
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
}

/* Active (selected) effect */
.admin-sidebar a.active {
	background: rgba(255, 255, 255, 0.25);
	font-weight: 600;
	transform: none;
}

.admin-sidebar a.active::before {
	content: "";
	position: absolute;
	left: 0;
	top: 0;
	height: 100%;
	width: 5px;
	background: #ffcc00; /* highlight color */
	border-radius: 0 4px 4px 0;
}

/* Modal overlay */
.modal {
    display: none;
    position: fixed;
    z-index: 1000;
    left: 0; top: 0;
    width: 100%; height: 100%;
    background-color: rgba(0, 0, 0, 0.6);
    justify-content: center;
    align-items: center;
    animation: fadeOverlay 0.3s ease;
}

/* Modal content */
.modal-content {
    background: linear-gradient(145deg, #ffffff, #f1f5f9);
    border-radius: 12px;
    width: 90%;
    max-width: 400px;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
    animation: slideDown 0.3s ease;
    position: relative;
    padding: 30px 25px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
}

/* Header with close button */
.modal-header {
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 15px;
}

.modal-header h3 {
    margin: 0;
    color: #333;
    font-size: 22px;
    font-weight: 600;
}

.close-btn {
    font-size: 24px;
    font-weight: bold;
    cursor: pointer;
    color: #aaa;
    transition: color 0.2s ease;
}

.close-btn:hover {
    color: #333;
}

/* Modal body */
.modal-body p {
    font-size: 16px;
    color: #555;
    margin: 10px 0;
}

/* Footer buttons */
.modal-footer {
    width: 100%;
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 15px;
}

.modal-footer button {
    padding: 12px 75px;
    font-size: 15px;
    border-radius: 6px;
    border: none;
    cursor: pointer;
    transition: all 0.3s ease;
    font-weight: 500;
}

/* Cancel button */
.btn-cancel {
    background-color: #e0e0e0;
    color: #333;
}

.btn-cancel:hover {
    background-color: #d4d4d4;
}

/* Logout button */
.btn-logout {
    background-color: #007bff;
    color: #fff;
}

.btn-logout:hover {
    background-color: #0056b3;
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

/* Animations */
@keyframes slideDown {
    from { opacity: 0; transform: translateY(-30px); }
    to { opacity: 1; transform: translateY(0); }
}

@keyframes fadeOverlay {
    from { opacity: 0; }
    to { opacity: 1; }
}

/* Responsive adjustments */
@media (max-width: 480px) {
    .modal-content {
        padding: 25px 15px;
    }
    .modal-footer {
        flex-direction: column;
        gap: 10px;
    }
    .modal-footer button {
        width: 100%;
    }
}

</style>

<script>
	function showLogoutModal(event) {
	    event.preventDefault();
	    document.getElementById('logoutModal').style.display = 'flex';
	}
	function closeLogoutModal() {
	    document.getElementById('logoutModal').style.display = 'none';
	}
	window.onclick = function(event) {
	    const modal = document.getElementById('logoutModal');
	    if(event.target === modal) closeLogoutModal();
	}

	const currentPath = window.location.pathname; // e.g. "/project/admindashboard.jsp"
	document.querySelectorAll(".admin-sidebar a").forEach(link => {
	  if (currentPath.includes(link.getAttribute("href"))) {
	    link.classList.add("active");
	  }
	});
</script>
