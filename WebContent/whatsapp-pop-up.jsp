<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        background: #10b94e;
        color: #fff;
        border: none;
        width: 60px;
        height: 50px;
        font-size: 22px;
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        z-index: 1500;
        border-top-left-radius: 25px;
        border-bottom-left-radius: 25px;
        text-decoration: none;
      }

      /* overlay (dark background) */
      .popup-overlay {
        position: fixed;
        top: 0;
        left: 0;
        /* top:0; right:0; bottom:0; left:0; */
        display: none;
        /* hidden by default */
        align-items: center;
        justify-content: center;
        background: rgba(0, 0, 0, 0.5);
        width: 100%;
        height: 100%;
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
        border-radius: 5px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.25);
        padding: 22px;
        text-align: center;
      }


      /* Close "X" button */
      .whatsapp-popup .close-icon {
        position: absolute;
        top: 10px;
        right: 15px;
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

      /* .whatsapp-popup span {
        color: #028b34;

        font-size: 18px;
        font-weight: 700;
      } */

      .blur-text {
        padding-inline: 2rem;
        display: inline-block;
        font-size: 1rem;
        font-weight: bold;
      }

      .blur-text span {
        color: #028b34;
        display: inline-block;
        opacity: 0;
        transform: translateY(-20px);
        /* for "top" direction */
        filter: blur(4px);
        animation: blurIn 0.8s forwards;
        animation-delay: var(--delay);
      }

      @keyframes blurIn {
        0% {
          opacity: 0;
          transform: translateY(-20px);
          filter: blur(4px);
        }

        100% {
          opacity: 1;
          transform: translateY(0);
          filter: blur(0);
        }
      }

      .whatsapp-popup p {
        font-size: 14px;
        margin-top: 20px;
        line-height: 1.4;
      }

      /* .join-btn {
        background: #028b34;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 14px;
        font-weight: 700;
        margin-top: 20px;
      } */

      .join-btn {
        position: relative;
        overflow: hidden;
        background: #028b34;
        color: #fff;
        padding: 7px 20px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 14px;
        font-weight: 700;
        margin-top: 20px;
        transition: background 0.3s ease;
      }

      /* Shine effect */
      .join-btn::before {
        content: "";
        position: absolute;
        top: -50%;
        left: -50%;
        width: 200%;
        height: 300%;
        background: linear-gradient(
          -30deg,
          rgba(255, 255, 255, 0.4) 0%,
          transparent 60%
        );
        transform: rotate(25deg) translateX(-100%);
        transition: transform 0.8s ease-in-out;
        pointer-events: none;
        z-index: 1;
      }

      /* On hover, animate glare */
      .join-btn:hover::before {
        transform: rotate(25deg) translateX(100%);
      }

      /* Optional: darken background on hover */
      .join-btn:hover {
        background: #015c22;
      }

    </style>
  </head>

  <body>

    <!-- Floating Button -->
    <a class="whatsapp-btn" id="whatsappBtn" href="https://chat.whatsapp.com/Hh89hx0nZ9O5AZBs0Q1Ghr" target="_blank"
      rel="noopener">
      <i class="fab fa-whatsapp"></i>
    </a>

    <!-- Popup Overlay -->
    <div class="popup-overlay" id="popupOverlay">
      <div class="whatsapp-popup">
        <div class="close-icon" id="popupClose">&times;</div>
        <div class="blur-text">
          <span style="--delay:0ms">Join</span>
          <span style="--delay:150ms">our</span>
          <span style="--delay:300ms">WhatsApp</span>
          <span style="--delay:450ms">Community</span>
        </div>
        <p>Stay updated with the latest news, updates, and discussions.</p>
        <button type="button" class="join-btn" id="popupJoinBtn">Join Now!</button>
      </div>
    </div>

    <script>
      const overlay = document.getElementById('popupOverlay');
      const closeBtn = document.getElementById('popupClose');
      const joinBtn = document.getElementById('popupJoinBtn');

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