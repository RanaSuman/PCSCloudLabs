<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WhatsApp Popup</title>

<style>
/* Floating WhatsApp button */
.whatsapp-btn {
  position: fixed;
  top: 40%;
  right: 0;
  background: #25D366;
  color: #fff;
  border: none;
  width: 60px;
  height: 50px;
  font-size: 22px;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
  box-shadow: 0 4px 8px rgba(0,0,0,0.2);
  z-index: 1500;
  border-top-left-radius: 25px;
  border-bottom-left-radius: 25px;
  text-decoration: none;
}

/* overlay (dark background) */
.popup-overlay {
  position: fixed;
  top:0;
  left:0; /* top:0; right:0; bottom:0; left:0; */
  display: none;           /* hidden by default */
  align-items: center;
  justify-content: center;
  background: rgba(0,0,0,0.5);
  width:100%;
  height:100%;
  z-index: 2000;
}

/* when visible */
.popup-overlay.show {
  display: flex;
}

/* popup box */
.whatsapp-popup {
 position: relative;
  width: 400px;
  max-width: calc(100% - 40px);
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 8px 24px rgba(0,0,0,0.25);
  padding: 22px;
  text-align: center;
}


/* Close "X" button */
.whatsapp-popup .close-icon {
  position: absolute;
  top: 10px;
  right: 12px;
  font-size: 20px;
  color: #666;
  cursor: pointer;
}

/* animation keyframes */
@keyframes popupScale {
  0% {
    opacity: 0;
    transform: scale(0.7);
  }
  60% {
    opacity: 1;
    transform: scale(1.05);
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}

/* animate when overlay is shown */
.popup-overlay.show .whatsapp-popup {
  animation: popupScale 0.4s ease forwards;
}

.whatsapp-popup h2 {
  color: #25D366;
  margin-bottom: 10px;
}

.join-btn {
  background: #25D366;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  font-size: 14px;
  font-weight: 700;
  margin-top: 20px;
}
</style>
</head>
<body>

<!-- Floating Button -->
<a class="whatsapp-btn" id="whatsappBtn"
   href="https://chat.whatsapp.com/Hh89hx0nZ9O5AZBs0Q1Ghr" target="_blank" rel="noopener">
   <i class="fab fa-whatsapp"></i>
</a>

<!-- Popup Overlay -->
<div class="popup-overlay" id="popupOverlay">
  <div class="whatsapp-popup">
    <span class="close-icon" id="popupClose">&times;</span>
    <h2>Join our WhatsApp Community</h2>
    <p>Stay updated with the latest news, updates, and discussions.</p>
    <button type="button" class="join-btn" id="popupJoinBtn">Join Now!</button>
  </div>
</div>

<script>
  const overlay = document.getElementById('popupOverlay');
  const closeBtn = document.getElementById('popupClose');
  const joinBtn  = document.getElementById('popupJoinBtn');

  // Show popup after page load
  window.addEventListener('load', () => {
    setTimeout(() => {
      overlay.style.display = 'flex';
      overlay.classList.add('show');
    }, 1000);
  });

  // Close popup
  closeBtn.addEventListener('click', () => {
    overlay.style.display = 'none';
    overlay.classList.remove('show');
  });

  // Join button
  joinBtn.addEventListener('click', () => {
    window.open('https://chat.whatsapp.com/Hh89hx0nZ9O5AZBs0Q1Ghr', '_blank', 'noopener');
  });

  // Optional: close when clicking outside popup
  overlay.addEventListener('click', (e) => {
    if (e.target === overlay) {
      overlay.style.display = 'none';
      overlay.classList.remove('show');
    }
  });
</script>

</body>
</html>
