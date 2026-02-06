<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"/>
  <title>Bushra 💘</title>
  <style>
    /* MOBILE ONLY */
    @media (min-width: 768px) { body { display: none; } }

    :root {
      --bg1: #ff758c;
      --bg2: #ff7eb3;
      --accent: #ff3b6f;
    }

    html,body{
      height:100%;
      margin:0;
      font-family: Arial, Helvetica, sans-serif;
      background: linear-gradient(135deg, var(--bg1), var(--bg2));
      display:flex;
      align-items:center;
      justify-content:center;
      overflow:hidden;
      -webkit-touch-callout:none;
      user-select:none;
    }

    .card{
      background:#fff;
      width:92%;
      max-width:380px;
      border-radius:20px;
      padding:28px 20px 90px;
      box-shadow: 0 15px 40px rgba(0,0,0,0.18);
      text-align:center;
      position:relative;
      z-index: 10;
    }

    h1{ margin:0 0 10px; color:var(--accent); font-size:22px; }
    p{ margin:0 0 18px; color:#333; line-height:1.3; font-size:15px; }

    .btn{
      position:absolute;
      bottom:26px;
      padding:12px 20px;
      border-radius:24px;
      border:none;
      font-size:15px;
      cursor:pointer;
      -webkit-tap-highlight-color: transparent;
    }

    #yes{ left:18%; background:var(--accent); color:#fff; }
    #no{ right:18%; background:#e6e6e6; color:#222; }

    .shake { animation: shake 0.42s; }
    @keyframes shake {
      0% { transform: translateX(0); }
      25% { transform: translateX(-6px); }
      50% { transform: translateX(6px); }
      75% { transform: translateX(-6px); }
      100% { transform: translateX(0); }
    }

    .heart {
      position: fixed;
      top: -30px;
      font-size: 24px;
      pointer-events: none;
      z-index: 5;
      opacity: 1;
      transform: translateY(0);
      will-change: transform, opacity;
    }

    @media (max-width:360px){
      .card{ padding-bottom:110px; }
      .heart{ font-size:20px; }
    }
  </style>
</head>
<body>

  <div class="card" id="card">
    <h1>Bushra 👀💘</h1>
    <p>yo valentine vgera to dikhava h<br>mere balaka ki ma bnegi t bta 😌</p>

    <button id="yes" class="btn">Haan 😳</button>
    <button id="no" class="btn">Nahi 🙄</button>
  </div>

  <!-- REPLACE/PASTE THIS SCRIPT (WhatsApp-safe for iPhone) -->
  <script>
    const yesBtn = document.getElementById("yes");
    const noBtn = document.getElementById("no");

    noBtn.onclick = () => {
      alert("Nahi ka option hi nahi hai 😈");
    };

    yesBtn.onclick = () => {
      // hearts rain (simple)
      for (let i = 0; i < 20; i++) {
        const heart = document.createElement("div");
        heart.innerHTML = "💖";
        heart.style.position = "fixed";
        heart.style.left = Math.random() * 100 + "vw";
        heart.style.top = "-10px";
        heart.style.fontSize = "24px";
        heart.style.transition = "top 2s linear, opacity 2s";
        heart.style.opacity = "1";
        document.body.appendChild(heart);
        // let it fall
        setTimeout(() => {
          heart.style.top = "110vh";
          heart.style.opacity = "0";
        }, 100 + i * 60);
        // remove after animation
        setTimeout(() => heart.remove(), 2500 + i * 60);
      }

      // DIRECT WhatsApp open (iPhone-safe when inside user gesture)
      const msg = encodeURIComponent(
        "Haan bol diya hai 😳💖 ab valentine bhi tum hi ho 👀💍"
      );

      // immediate navigation inside click handler — works on iPhone
      window.location.href = "https://wa.me/919518003724?text=" + msg;
    };
  </script>

</body>
</html>
