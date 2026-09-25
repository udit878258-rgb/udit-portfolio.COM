<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<title>Udit Patel | Logistics & Warehouse Operations</title>

<meta name="description"
content="Udit Patel - Assistant Manager | Logistics | Warehouse Operations | Supply Chain">

<style>
/* =========================================================
   PREMIUM VARIABLES
========================================================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    scroll-behavior:smooth;
}

:root{
    --bg:#03060b;
    --bg2:#07101b;
    --text:#f5f8ff;
    --muted:#8996aa;
    --blue:#00a8ff;
    --cyan:#00eaff;
    --green:#00ff9d;
    --red:#ff3158;
    --yellow:#ffd166;
    --glass:rgba(255,255,255,.055);
    --glass2:rgba(255,255,255,.085);
    --border:rgba(255,255,255,.12);
    --shadow:0 30px 90px rgba(0,0,0,.55);
}

body.light{
    --bg:#edf3f8;
    --bg2:#ffffff;
    --text:#101722;
    --muted:#607086;
    --glass:rgba(255,255,255,.65);
    --glass2:#fff;
    --border:rgba(0,0,0,.1);
    --shadow:0 25px 70px rgba(20,50,80,.15);
}

body{
    font-family:Inter,Arial,Helvetica,sans-serif;
    background:
        radial-gradient(circle at 15% 10%,rgba(0,168,255,.14),transparent 25%),
        radial-gradient(circle at 90% 30%,rgba(255,49,88,.10),transparent 25%),
        radial-gradient(circle at 50% 90%,rgba(0,255,157,.07),transparent 30%),
        var(--bg);
    color:var(--text);
    overflow-x:hidden;
}

/* =========================================================
   BACKGROUND
========================================================= */

.grid-bg{
    position:fixed;
    inset:0;
    pointer-events:none;
    z-index:-10;
    opacity:.23;
    background-image:
        linear-gradient(rgba(255,255,255,.035) 1px,transparent 1px),
        linear-gradient(90deg,rgba(255,255,255,.035) 1px,transparent 1px);
    background-size:45px 45px;
    mask-image:linear-gradient(to bottom,black,transparent 90%);
}

.noise{
    position:fixed;
    inset:0;
    z-index:-9;
    pointer-events:none;
    opacity:.025;
    background-image:url("data:image/svg+xml,%3Csvg viewBox='0 0 180 180' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)' opacity='.6'/%3E%3C/svg%3E");
}

.orb{
    position:fixed;
    width:280px;
    height:280px;
    border-radius:50%;
    filter:blur(80px);
    opacity:.13;
    z-index:-8;
    pointer-events:none;
    animation:orb 12s infinite alternate ease-in-out;
}

.orb.one{
    background:var(--blue);
    left:-120px;
    top:20%;
}

.orb.two{
    background:var(--red);
    right:-130px;
    top:45%;
    animation-delay:3s;
}

.orb.three{
    background:var(--green);
    left:40%;
    bottom:-150px;
    animation-delay:5s;
}

@keyframes orb{
    to{
        transform:translate(90px,-70px) scale(1.2);
    }
}

/* =========================================================
   LOADER
========================================================= */

#loader{
    position:fixed;
    inset:0;
    z-index:99999;
    background:#020409;
    display:flex;
    justify-content:center;
    align-items:center;
    transition:.8s;
}

.loader-content{
    text-align:center;
}

.loader-logo{
    font-size:52px;
    font-weight:1000;
    letter-spacing:8px;
    background:linear-gradient(90deg,var(--blue),var(--cyan),var(--green));
    -webkit-background-clip:text;
    color:transparent;
}

.loader-bar{
    width:240px;
    height:4px;
    background:#151b25;
    margin:20px auto;
    border-radius:20px;
    overflow:hidden;
}

.loader-bar span{
    display:block;
    width:0;
    height:100%;
    background:linear-gradient(90deg,var(--blue),var(--green));
    animation:load 1.8s forwards;
}

@keyframes load{
    to{width:100%}
}

/* =========================================================
   NAVBAR
========================================================= */

nav{
    position:fixed;
    top:0;
    left:0;
    right:0;
    z-index:1000;
    padding:15px 5%;
    background:rgba(3,6,11,.58);
    backdrop-filter:blur(22px);
    border-bottom:1px solid var(--border);
}

body.light nav{
    background:rgba(255,255,255,.72);
}

.nav{
    max-width:1250px;
    margin:auto;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    text-decoration:none;
    color:var(--text);
    font-weight:1000;
    font-size:23px;
    letter-spacing:1px;
}

.logo span{
    color:var(--cyan);
}

.links{
    display:flex;
    gap:25px;
}

.links a{
    color:var(--muted);
    text-decoration:none;
    font-size:13px;
    font-weight:700;
    transition:.3s;
}

.links a:hover{
    color:var(--cyan);
}

.nav-actions{
    display:flex;
    gap:8px;
}

.icon-btn{
    width:40px;
    height:40px;
    border:1px solid var(--border);
    border-radius:12px;
    background:var(--glass);
    color:var(--text);
    cursor:pointer;
}

.menu{
    display:none;
    font-size:23px;
}

/* =========================================================
   COMMON
========================================================= */

.container{
    width:min(1200px,90%);
    margin:auto;
}

section{
    padding:105px 0;
}

.heading{
    text-align:center;
    margin-bottom:55px;
}

.heading small{
    color:var(--cyan);
    letter-spacing:4px;
    text-transform:uppercase;
    font-weight:900;
}

.heading h2{
    font-size:clamp(32px,5vw,55px);
    margin:10px 0;
}

.heading p{
    color:var(--muted);
    max-width:700px;
    margin:auto;
}

.glass{
    background:var(--glass);
    border:1px solid var(--border);
    backdrop-filter:blur(20px);
    box-shadow:var(--shadow);
}

/* =========================================================
   HERO
========================================================= */

.hero{
    min-height:100vh;
    padding-top:130px;
    display:flex;
    align-items:center;
    position:relative;
}

.hero-grid{
    display:grid;
    grid-template-columns:1.05fr .95fr;
    gap:55px;
    align-items:center;
}

.status{
    display:inline-flex;
    align-items:center;
    gap:9px;
    padding:9px 15px;
    border:1px solid rgba(0,255,157,.25);
    border-radius:50px;
    color:var(--green);
    background:rgba(0,255,157,.05);
    font-size:11px;
    font-weight:900;
    letter-spacing:1px;
}

.status i{
    width:8px;
    height:8px;
    border-radius:50%;
    background:var(--green);
    box-shadow:0 0 16px var(--green);
    animation:pulse 1.4s infinite;
}

@keyframes pulse{
    50%{
        transform:scale(1.5);
        opacity:.5;
    }
}

.hero h1{
    font-size:clamp(55px,8vw,100px);
    line-height:.88;
    letter-spacing:-6px;
    margin:28px 0;
}

.gradient{
    background:linear-gradient(
        100deg,
        var(--blue),
        var(--cyan),
        var(--green)
    );
    -webkit-background-clip:text;
    color:transparent;
}

.role{
    font-size:21px;
    color:var(--muted);
    min-height:34px;
}

.cursor{
    color:var(--green);
    animation:blink .7s infinite;
}

@keyframes blink{
    50%{opacity:0}
}

.hero-text{
    max-width:650px;
    color:var(--muted);
    margin-top:20px;
}

.buttons{
    display:flex;
    flex-wrap:wrap;
    gap:12px;
    margin-top:28px;
}

.btn{
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:8px;
    padding:14px 21px;
    border-radius:13px;
    border:1px solid var(--border);
    background:var(--glass);
    color:var(--text);
    text-decoration:none;
    font-weight:900;
    font-size:13px;
    transition:.35s;
    position:relative;
    overflow:hidden;
}

.btn:hover{
    transform:translateY(-5px);
    box-shadow:0 15px 40px rgba(0,168,255,.18);
}

.primary{
    border:0;
    background:linear-gradient(100deg,#007bff,#00d9ff);
    color:white;
}

.green{
    border:0;
    background:linear-gradient(100deg,#00a66c,#00ff9d);
    color:#001b10;
}

.red{
    border:0;
    background:linear-gradient(100deg,#e6003d,#ff5d7c);
    color:white;
}

/* =========================================================
   3D WAREHOUSE
========================================================= */

.scene-wrap{
    perspective:1100px;
    position:relative;
}

.warehouse{
    width:100%;
    height:500px;
    position:relative;
    transform-style:preserve-3d;
    transform:rotateX(5deg) rotateY(-7deg);
    transition:transform .15s ease-out;
}

.scene-glow{
    position:absolute;
    inset:20% 5%;
    background:var(--blue);
    filter:blur(90px);
    opacity:.12;
    border-radius:50%;
}

.floor{
    position:absolute;
    left:3%;
    right:3%;
    bottom:30px;
    height:270px;
    transform:rotateX(68deg) translateZ(-80px);
    transform-origin:bottom;
    background:
        linear-gradient(rgba(0,229,255,.10) 1px,transparent 1px),
        linear-gradient(90deg,rgba(0,229,255,.10) 1px,transparent 1px),
        linear-gradient(145deg,#101a28,#050a12);
    background-size:45px 45px;
    border:1px solid rgba(0,229,255,.18);
    box-shadow:0 0 60px rgba(0,168,255,.08);
}

/* warehouse back wall */

.back-wall{
    position:absolute;
    left:7%;
    right:7%;
    top:45px;
    height:275px;
    border:2px solid rgba(255,255,255,.08);
    background:
        linear-gradient(90deg,
            transparent 49%,
            rgba(255,255,255,.04) 50%,
            transparent 51%
        ),
        linear-gradient(#0b1420,#07101a);
    transform:translateZ(-90px);
}

/* roof beams */

.beam{
    position:absolute;
    height:10px;
    background:linear-gradient(90deg,#172a3c,var(--blue),#172a3c);
    box-shadow:0 0 20px rgba(0,168,255,.2);
    transform-style:preserve-3d;
}

.beam.b1{
    left:5%;
    right:5%;
    top:35px;
    transform:rotateZ(-1deg);
}

.beam.b2{
    left:10%;
    right:10%;
    top:115px;
}

.beam.b3{
    left:15%;
    right:15%;
    top:195px;
}

/* shelves */

.shelf{
    position:absolute;
    width:125px;
    height:160px;
    bottom:110px;
    transform-style:preserve-3d;
}

.shelf.s1{left:8%}
.shelf.s2{left:34%}
.shelf.s3{right:9%}

.shelf-side{
    position:absolute;
    width:7px;
    height:160px;
    background:#27394b;
}

.shelf-side.left{left:0}
.shelf-side.right{right:0}

.shelf-level{
    position:absolute;
    left:0;
    right:0;
    height:7px;
    background:#34495d;
}

.shelf-level.l1{top:0}
.shelf-level.l2{top:52px}
.shelf-level.l3{top:105px}
.shelf-level.l4{bottom:0}

/* boxes */

.box{
    position:absolute;
    width:30px;
    height:30px;
    background:linear-gradient(135deg,#b66a27,#e59b48);
    border:1px solid rgba(255,255,255,.25);
    box-shadow:5px 7px 12px rgba(0,0,0,.35);
    animation:boxFloat 3s infinite ease-in-out;
}

.box::after{
    content:"";
    position:absolute;
    left:50%;
    top:0;
    width:2px;
    height:100%;
    background:rgba(90,40,10,.35);
}

.bx1{left:18px;top:20px}
.bx2{left:58px;top:20px;animation-delay:.4s}
.bx3{left:35px;top:72px;animation-delay:.8s}
.bx4{left:78px;top:72px;animation-delay:1.1s}
.bx5{left:20px;top:125px;animation-delay:1.5s}

@keyframes boxFloat{
    50%{transform:translateY(-5px)}
}

/* warehouse lights */

.light{
    position:absolute;
    width:95px;
    height:9px;
    border-radius:20px;
    background:#eaffff;
    box-shadow:
        0 0 15px var(--cyan),
        0 0 45px var(--cyan);
    top:80px;
    animation:lightPulse 2s infinite alternate;
}

.light.l1{left:22%}
.light.l2{left:45%;animation-delay:.5s}
.light.l3{right:22%;animation-delay:1s}

@keyframes lightPulse{
    from{opacity:.55}
    to{opacity:1}
}

/* loading dock */

.dock{
    position:absolute;
    left:38%;
    bottom:95px;
    width:190px;
    height:145px;
    background:#0a111b;
    border:2px solid #24384d;
    transform:translateZ(20px);
}

.dock-door{
    position:absolute;
    left:28px;
    right:28px;
    top:20px;
    bottom:20px;
    background:
        repeating-linear-gradient(
            90deg,
            #172432 0,
            #172432 8px,
            #0b1119 9px,
            #0b1119 14px
        );
    border:2px solid #31495e;
}

.dock-sign{
    position:absolute;
    top:-27px;
    left:45px;
    padding:4px 15px;
    font-size:9px;
    letter-spacing:2px;
    color:#00130c;
    background:var(--green);
    font-weight:1000;
}

/* =========================================================
   TRUCKS
========================================================= */

.truck{
    position:absolute;
    bottom:60px;
    left:-250px;
    width:210px;
    height:75px;
    z-index:20;
    animation:truckMove 8s linear infinite;
}

.truck:nth-child(2){
    animation-delay:4s;
}

@keyframes truckMove{
    0%{
        left:-260px;
    }
    45%{
        left:calc(50% - 105px);
    }
    58%{
        left:calc(50% - 105px);
    }
    100%{
        left:110%;
    }
}

.truck-body{
    position:absolute;
    left:0;
    bottom:15px;
    width:145px;
    height:55px;
    border-radius:7px;
    background:linear-gradient(145deg,#00a8ff,#0055a5);
    box-shadow:0 10px 20px rgba(0,0,0,.4);
}

.truck-cab{
    position:absolute;
    right:0;
    bottom:15px;
    width:65px;
    height:45px;
    background:linear-gradient(145deg,#00d9ff,#0074a7);
    clip-path:polygon(18% 0,100% 0,100% 100%,0 100%,0 35%);
}

.truck-window{
    position:absolute;
    right:7px;
    top:8px;
    width:35px;
    height:17px;
    background:#06111d;
    border:1px solid rgba(255,255,255,.4);
}

.wheel{
    position:absolute;
    bottom:0;
    width:27px;
    height:27px;
    border-radius:50%;
    background:#080a0e;
    border:5px solid #38424e;
    box-shadow:0 0 0 3px #111;
}

.wheel.w1{left:25px}
.wheel.w2{right:23px}

.headlight{
    position:absolute;
    right:2px;
    bottom:35px;
    width:6px;
    height:8px;
    background:#fff;
    box-shadow:0 0 20px #fff;
}

/* =========================================================
   MOVING BOXES / CONVEYOR
========================================================= */

.conveyor{
    position:absolute;
    left:12%;
    right:12%;
    bottom:53px;
    height:12px;
    background:#273747;
    border-radius:20px;
    box-shadow:0 5px 15px rgba(0,0,0,.5);
    z-index:25;
}

.conveyor::before{
    content:"";
    position:absolute;
    inset:2px;
    background:
        repeating-linear-gradient(
            90deg,
            #59697a 0 8px,
            transparent 8px 20px
        );
    animation:conveyorMove .6s linear infinite;
}

@keyframes conveyorMove{
    to{
        background-position:20px 0;
    }
}

.ship-box{
    position:absolute;
    width:27px;
    height:27px;
    bottom:70px;
    z-index:26;
    border-radius:4px;
    background:linear-gradient(135deg,#d68b38,#f0b866);
    box-shadow:0 5px 15px rgba(0,0,0,.4);
    animation:shipMove 5s linear infinite;
}

.ship-box::after{
    content:"";
    position:absolute;
    width:2px;
    height:100%;
    left:50%;
    background:rgba(90,40,10,.35);
}

.ship-box.x1{animation-delay:0s}
.ship-box.x2{animation-delay:1.2s}
.ship-box.x3{animation-delay:2.4s}
.ship-box.x4{animation-delay:3.6s}

@keyframes shipMove{
    0%{
        left:13%;
        opacity:0;
    }
    8%{opacity:1}
    92%{opacity:1}
    100%{
        left:84%;
        opacity:0;
    }
}

/* =========================================================
   FLOATING DATA HUD
========================================================= */

.hud{
    position:absolute;
    right:-15px;
    top:80px;
    width:150px;
    padding:16px;
    border:1px solid rgba(0,229,255,.25);
    border-radius:15px;
    background:rgba(4,13,23,.72);
    backdrop-filter:blur(15px);
    box-shadow:0 15px 50px rgba(0,0,0,.4);
    z-index:50;
    animation:hudFloat 4s infinite ease-in-out;
}

@keyframes hudFloat{
    50%{transform:translateY(-12px)}
}

.hud small{
    color:var(--muted);
    font-size:9px;
}

.hud strong{
    display:block;
    color:var(--cyan);
    font-size:22px;
    margin-top:3px;
}

.hud-line{
    height:4px;
    background:#172536;
    border-radius:10px;
    overflow:hidden;
    margin-top:8px;
}

.hud-line span{
    display:block;
    width:78%;
    height:100%;
    background:linear-gradient(90deg,var(--blue),var(--green));
}

/* =========================================================
   STATS
========================================================= */

.stats{
    margin-top:-25px;
    position:relative;
    z-index:100;
}

.stat-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:14px;
}

.stat{
    padding:25px;
    border-radius:22px;
    text-align:center;
    background:var(--glass);
    border:1px solid var(--border);
    backdrop-filter:blur(20px);
    transition:.3s;
}

.stat:hover{
    transform:translateY(-8px);
    border-color:rgba(0,229,255,.3);
}

.stat h3{
    font-size:35px;
    color:var(--cyan);
}

.stat p{
    color:var(--muted);
    font-size:12px;
}

/* =========================================================
   DASHBOARD
========================================================= */

.dashboard{
    display:grid;
    grid-template-columns:1.2fr .8fr;
    gap:20px;
}

.dash{
    padding:28px;
    border-radius:25px;
    background:var(--glass);
    border:1px solid var(--border);
    backdrop-filter:blur(25px);
    box-shadow:var(--shadow);
    position:relative;
    overflow:hidden;
}

.dash::before{
    content:"";
    position:absolute;
    width:220px;
    height:220px;
    background:var(--blue);
    opacity:.05;
    filter:blur(70px);
    right:-80px;
    top:-80px;
}

.dash-head{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:25px;
}

.live{
    color:var(--green);
    font-size:10px;
    font-weight:900;
}

.chart{
    height:180px;
    display:flex;
    align-items:end;
    gap:12px;
    padding-top:20px;
}

.chart-bar{
    flex:1;
    height:var(--h);
    border-radius:8px 8px 2px 2px;
    background:linear-gradient(to top,var(--blue),var(--green));
    box-shadow:0 0 20px rgba(0,168,255,.13);
    animation:chartGrow 1.5s ease-out;
    transform-origin:bottom;
}

@keyframes chartGrow{
    from{transform:scaleY(0)}
    to{transform:scaleY(1)}
}

.chart-label{
    display:flex;
    justify-content:space-between;
    color:var(--muted);
    font-size:10px;
}

.mini-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:14px;
}

.mini-card{
    padding:22px;
    border-radius:18px;
    background:rgba(255,255,255,.035);
    border:1px solid var(--border);
}

.mini-card strong{
    display:block;
    color:var(--cyan);
    font-size:27px;
}

.mini-card span{
    color:var(--muted);
    font-size:11px;
}

/* =========================================================
   CARDS
========================================================= */

.cards{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.card{
    padding:28px;
    border-radius:23px;
    background:var(--glass);
    border:1px solid var(--border);
    backdrop-filter:blur(20px);
    transition:.4s;
}

.card:hover{
    transform:translateY(-9px) rotateX(2deg);
    box-shadow:var(--shadow);
    border-color:rgba(0,229,255,.3);
}

.card-icon{
    width:58px;
    height:58px;
    border-radius:16px;
    display:flex;
    align-items:center;
    justify-content:center;
    background:rgba(0,168,255,.1);
    color:var(--cyan);
    font-size:25px;
    margin-bottom:20px;
}

.card p{
    color:var(--muted);
    font-size:14px;
}

/* =========================================================
   SKILLS
========================================================= */

.skills{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:20px;
}

.skill-card{
    padding:30px;
    border-radius:25px;
    background:var(--glass);
    border:1px solid var(--border);
    backdrop-filter:blur(20px);
}

.skill{
    margin:20px 0;
}

.skill-top{
    display:flex;
    justify-content:space-between;
    margin-bottom:8px;
    font-size:13px;
}

.skill-top span:last-child{
    color:var(--cyan);
}

.skill-track{
    height:8px;
    background:rgba(255,255,255,.08);
    border-radius:20px;
    overflow:hidden;
}

.skill-track span{
    display:block;
    height:100%;
    width:0;
    background:linear-gradient(90deg,var(--blue),var(--cyan),var(--green));
    border-radius:20px;
    transition:1.5s;
}

/* =========================================================
   TIMELINE
========================================================= */

.timeline{
    max-width:900px;
    margin:auto;
    position:relative;
}

.timeline::before{
    content:"";
    position:absolute;
    left:50%;
    top:0;
    bottom:0;
    width:2px;
    background:linear-gradient(var(--blue),var(--green),var(--red));
}

.t-item{
    width:50%;
    padding:15px 35px;
    position:relative;
}

.t-item:nth-child(even){
    margin-left:50%;
}

.t-dot{
    position:absolute;
    top:27px;
    width:14px;
    height:14px;
    border-radius:50%;
    background:var(--green);
    box-shadow:0 0 20px var(--green);
}

.t-item:nth-child(odd) .t-dot{
    right:-7px;
}

.t-item:nth-child(even) .t-dot{
    left:-7px;
}

.t-card{
    padding:25px;
    border-radius:22px;
    background:var(--glass);
    border:1px solid var(--border);
}

.t-date{
    color:var(--cyan);
    font-size:11px;
    font-weight:900;
}

.t-card h3{
    margin:8px 0;
}

.t-card h4{
    color:var(--muted);
    font-size:13px;
}

.t-card ul{
    margin:12px 0 0 17px;
    color:var(--muted);
    font-size:13px;
}

/* =========================================================
   EDUCATION
========================================================= */

.edu-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
}

.edu{
    text-align:center;
    padding:25px;
    border-radius:22px;
    background:var(--glass);
    border:1px solid var(--border);
}

.edu-icon{
    font-size:30px;
    margin-bottom:10px;
}

.edu p{
    color:var(--muted);
    font-size:12px;
    margin-top:8px;
}

/* =========================================================
   CONTACT
========================================================= */

.contact{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:20px;
}

.contact-box{
    padding:30px;
    border-radius:25px;
    background:var(--glass);
    border:1px solid var(--border);
}

.contact-row{
    display:flex;
    gap:15px;
    align-items:center;
    margin:22px 0;
}

.contact-icon{
    width:45px;
    height:45px;
    display:flex;
    justify-content:center;
    align-items:center;
    border-radius:13px;
    background:rgba(0,168,255,.1);
}

.contact-row small{
    display:block;
    color:var(--muted);
}

.contact-row a{
    color:var(--text);
    text-decoration:none;
    font-weight:800;
}

input,textarea{
    width:100%;
    padding:14px;
    border-radius:13px;
    border:1px solid var(--border);
    background:rgba(255,255,255,.035);
    color:var(--text);
    margin-bottom:13px;
    outline:none;
    font-family:inherit;
}

textarea{
    min-height:130px;
    resize:vertical;
}

/* =========================================================
   FOOTER
========================================================= */

footer{
    padding:35px 0;
    border-top:1px solid var(--border);
    text-align:center;
    color:var(--muted);
    font-size:12px;
}

/* =========================================================
   FLOATING BUTTONS
========================================================= */

.whatsapp{
    position:fixed;
    right:22px;
    bottom:22px;
    width:58px;
    height:58px;
    border-radius:50%;
    background:#25d366;
    color:white;
    display:flex;
    justify-content:center;
    align-items:center;
    text-decoration:none;
    font-size:25px;
    box-shadow:0 10px 35px rgba(37,211,102,.3);
    z-index:500;
}

.top{
    position:fixed;
    right:25px;
    bottom:92px;
    width:42px;
    height:42px;
    border-radius:50%;
    border:1px solid var(--border);
    background:var(--glass);
    color:var(--text);
    cursor:pointer;
    z-index:500;
}

/* =========================================================
   REVEAL
========================================================= */

.reveal{
    opacity:0;
    transform:translateY(35px);
    transition:1s;
}

.reveal.show{
    opacity:1;
    transform:translateY(0);
}

/* =========================================================
   MOBILE
========================================================= */

@media(max-width:950px){

    .links{
        display:none;
        position:absolute;
        top:70px;
        left:5%;
        right:5%;
        padding:20px;
        border-radius:20px;
        background:rgba(3,6,11,.96);
        border:1px solid var(--border);
        flex-direction:column;
    }

    body.light .links{
        background:#fff;
    }

    .links.open{
        display:flex;
    }

    .menu{
        display:block;
    }

    .hero-grid{
        grid-template-columns:1fr;
        text-align:center;
    }

    .hero-text{
        margin-left:auto;
        margin-right:auto;
    }

    .buttons{
        justify-content:center;
    }

    .scene-wrap{
        margin-top:30px;
    }

    .warehouse{
        height:420px;
        transform:scale(.88) rotateX(5deg);
    }

    .dashboard,
    .skills,
    .contact{
        grid-template-columns:1fr;
    }

    .cards{
        grid-template-columns:1fr 1fr;
    }

    .stat-grid{
        grid-template-columns:1fr 1fr;
    }

    .edu-grid{
        grid-template-columns:1fr 1fr;
    }

}

@media(max-width:600px){

    section{
        padding:80px 0;
    }

    .hero h1{
        font-size:58px;
    }

    .buttons .btn{
        width:100%;
    }

    .cards{
        grid-template-columns:1fr;
    }

    .stat-grid{
        grid-template-columns:1fr 1fr;
    }

    .edu-grid{
        grid-template-columns:1fr;
    }

    .warehouse{
        height:350px;
        transform:scale(.63) rotateX(5deg);
        transform-origin:center;
        margin:-40px 0;
    }

    .hud{
        right:-20px;
    }

    .timeline::before{
        left:8px;
    }

    .t-item,
    .t-item:nth-child(even){
        width:100%;
        margin-left:0;
        padding-left:35px;
    }

    .t-item:nth-child(odd) .t-dot,
    .t-item:nth-child(even) .t-dot{
        left:1px;
        right:auto;
    }

}
</style>
</head>

<body>

<div id="loader">
    <div class="loader-content">
        <div class="loader-logo">UDIT</div>
        <div class="loader-bar"><span></span></div>
        <small style="color:#7e8999">
            Initializing Logistics Portfolio...
        </small>
    </div>
</div>

<div class="grid-bg"></div>
<div class="noise"></div>
<div class="orb one"></div>
<div class="orb two"></div>
<div class="orb three"></div>


<!-- ======================================================
     NAVBAR
====================================================== -->

<nav>

<div class="nav">

<a href="#home" class="logo">
    UDIT<span>.</span>
</a>

<div class="links" id="links">
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#operations">Operations</a>
    <a href="#skills">Skills</a>
    <a href="#career">Career</a>
    <a href="#contact">Contact</a>
</div>

<div class="nav-actions">

<button class="icon-btn" id="theme">
    ☀
</button>

<button class="icon-btn menu" id="menu">
    ☰
</button>

</div>

</div>

</nav>


<!-- ======================================================
     HERO
====================================================== -->

<section class="hero" id="home">

<div class="container hero-grid">

<div class="reveal">

<div class="status">
    <i></i>
    LOGISTICS OPERATIONS PROFESSIONAL
</div>

<h1>
    Udit<br>
    <span class="gradient">Patel</span>
</h1>

<div class="role">
    <span id="typing"></span>
    <span class="cursor">|</span>
</div>

<p class="hero-text">
    Assistant Manager with experience in logistics, warehouse
    operations, supply chain, inventory management, team leadership,
    reporting and operational processes.
</p>

<div class="buttons">

<a href="Udit-Patel-CV.pdf"
   download
   class="btn primary">
    📄 Download CV
</a>

<a href="https://wa.me/919236053108"
   target="_blank"
   class="btn green">
    💬 WhatsApp
</a>

<a href="mailto:udit878258@gmail.com"
   class="btn">
    ✉ Email
</a>

<a href="YOUR_LINKEDIN_UR"
   class="btn red"
   onclick="https://www.linkedin.com/in/udit-patel-265332331/">
    in LinkedIn
</a>

</div>

</div>


<!-- ======================================================
     3D WAREHOUSE SCENE
====================================================== -->

<div class="scene-wrap reveal" id="scene">

<div class="warehouse" id="warehouse">

<div class="scene-glow"></div>

<div class="back-wall"></div>

<div class="beam b1"></div>
<div class="beam b2"></div>
<div class="beam b3"></div>

<div class="light l1"></div>
<div class="light l2"></div>
<div class="light l3"></div>


<!-- SHELF 1 -->

<div class="shelf s1">

<div class="shelf-side left"></div>
<div class="shelf-side right"></div>

<div class="shelf-level l1"></div>
<div class="shelf-level l2"></div>
<div class="shelf-level l3"></div>
<div class="shelf-level l4"></div>

<div class="box bx1"></div>
<div class="box bx2"></div>
<div class="box bx3"></div>
<div class="box bx4"></div>
<div class="box bx5"></div>

</div>


<!-- SHELF 2 -->

<div class="shelf s2">

<div class="shelf-side left"></div>
<div class="shelf-side right"></div>

<div class="shelf-level l1"></div>
<div class="shelf-level l2"></div>
<div class="shelf-level l3"></div>
<div class="shelf-level l4"></div>

<div class="box bx1"></div>
<div class="box bx2"></div>
<div class="box bx3"></div>
<div class="box bx4"></div>
<div class="box bx5"></div>

</div>


<!-- SHELF 3 -->

<div class="shelf s3">

<div class="shelf-side left"></div>
<div class="shelf-side right"></div>

<div class="shelf-level l1"></div>
<div class="shelf-level l2"></div>
<div class="shelf-level l3"></div>
<div class="shelf-level l4"></div>

<div class="box bx1"></div>
<div class="box bx2"></div>
<div class="box bx3"></div>
<div class="box bx4"></div>
<div class="box bx5"></div>

</div>


<!-- DOCK -->

<div class="dock">

<div class="dock-sign">
    DISPATCH
</div>

<div class="dock-door"></div>

</div>


<!-- FLOOR -->

<div class="floor"></div>


<!-- CONVEYOR -->

<div class="conveyor"></div>

<div class="ship-box x1"></div>
<div class="ship-box x2"></div>
<div class="ship-box x3"></div>
<div class="ship-box x4"></div>


<!-- TRUCK 1 -->

<div class="truck">

<div class="truck-body"></div>

<div class="truck-cab">
    <div class="truck-window"></div>
</div>

<div class="wheel w1"></div>
<div class="wheel w2"></div>

<div class="headlight"></div>

</div>


<!-- TRUCK 2 -->

<div class="truck">

<div class="truck-body"
     style="background:linear-gradient(145deg,#ff3158,#8e0024)">
</div>

<div class="truck-cab"
     style="background:linear-gradient(145deg,#ff657f,#a9002c)">
    <div class="truck-window"></div>
</div>

<div class="wheel w1"></div>
<div class="wheel w2"></div>

<div class="headlight"></div>

</div>


<!-- HUD -->

<div class="hud">

<small>LIVE OPERATIONS</small>

<strong>ACTIVE</strong>

<div class="hud-line">
    <span></span>
</div>

<small style="display:block;margin-top:10px">
    Warehouse Flow
</small>

</div>

</div>

</div>

</div>

</section>


<!-- ======================================================
     STATS
====================================================== -->

<div class="container stats reveal">

<div class="stat-grid">

<div class="stat">
    <h3>4+</h3>
    <p>Years Experience</p>
</div>

<div class="stat">
    <h3>150+</h3>
    <p>Workforce Managed</p>
</div>

<div class="stat">
    <h3>3</h3>
    <p>Major Roles</p>
</div>

<div class="stat">
    <h3>B2B/B2C</h3>
    <p>Operations Exposure</p>
</div>

</div>

</div>


<!-- ======================================================
     ABOUT
====================================================== -->

<section id="about">

<div class="container">

<div class="heading reveal">

<small>PROFILE</small>

<h2>Built Around Operations</h2>

<p>
    Experience across e-commerce logistics, warehousing,
    inventory, distribution and team management.
</p>

</div>


<div class="cards">

<div class="card reveal">

<div class="card-icon">🚚</div>

<h3>Logistics</h3>

<p>
    Transportation, distribution, first mile, last mile,
    HUB and sort center operations.
</p>

</div>


<div class="card reveal">

<div class="card-icon">📦</div>

<h3>Warehouse</h3>

<p>
    Inventory management, stock accuracy, inbound,
    outbound, reconciliation and dispatch.
</p>

</div>


<div class="card reveal">

<div class="card-icon">👥</div>

<h3>Leadership</h3>

<p>
    Team management, workforce planning, motivation,
    reporting and operational coordination.
</p>

</div>

</div>

</div>

</section>


<!-- ======================================================
     GLASS DASHBOARD
====================================================== -->

<section id="operations">

<div class="container">

<div class="heading reveal">

<small>OPERATIONS</small>

<h2>Glass Operations Dashboard</h2>

<p>
    A visual representation of core operational exposure.
</p>

</div>


<div class="dashboard">


<div class="dash reveal">

<div class="dash-head">

<h3>Operational Flow</h3>

<span class="live">
    ● LIVE
</span>

</div>


<div class="chart">

<div class="chart-bar" style="--h:45%"></div>
<div class="chart-bar" style="--h:65%"></div>
<div class="chart-bar" style="--h:52%"></div>
<div class="chart-bar" style="--h:82%"></div>
<div class="chart-bar" style="--h:72%"></div>
<div class="chart-bar" style="--h:92%"></div>
<div class="chart-bar" style="--h:78%"></div>
<div class="chart-bar" style="--h:96%"></div>

</div>

<div class="chart-label">
    <span>Process</span>
    <span>Operational Exposure</span>
</div>

</div>


<div class="dash reveal">

<div class="dash-head">

<h3>Experience Matrix</h3>

<span class="live">
    ACTIVE
</span>

</div>


<div class="mini-grid">

<div class="mini-card">
    <strong>150+</strong>
    <span>Workforce Managed</span>
</div>

<div class="mini-card">
    <strong>B2B</strong>
    <span>Operations</span>
</div>

<div class="mini-card">
    <strong>B2C</strong>
    <span>Customer Operations</span>
</div>

<div class="mini-card">
    <strong>MIS</strong>
    <span>Reports & Dashboards</span>
</div>

</div>

</div>

</div>

</div>

</section>


<!-- ======================================================
     SKILLS
====================================================== -->

<section id="skills">

<div class="container">

<div class="heading reveal">

<small>EXPERTISE</small>

<h2>Professional Skills</h2>

<p>
    Core capabilities used across logistics and warehouse operations.
</p>

</div>


<div class="skills">


<div class="skill-card reveal">

<h3>Operations</h3>

<div class="skill">
<div class="skill-top">
<span>Warehouse Operations</span>
<span>94%</span>
</div>

<div class="skill-track">
<span data-width="94%"></span>
</div>
</div>


<div class="skill">
<div class="skill-top">
<span>Logistics Management</span>
<span>92%</span>
</div>

<div class="skill-track">
<span data-width="92%"></span>
</div>
</div>


<div class="skill">
<div class="skill-top">
<span>Supply Chain</span>
<span>90%</span>
</div>

<div class="skill-track">
<span data-width="90%"></span>
</div>
</div>


<div class="skill">
<div class="skill-top">
<span>Inventory Management</span>
<span>88%</span>
</div>

<div class="skill-track">
<span data-width="88%"></span>
</div>
</div>

</div>


<div class="skill-card reveal">

<h3>Management</h3>

<div class="skill">
<div class="skill-top">
<span>Team Leadership</span>
<span>93%</span>
</div>

<div class="skill-track">
<span data-width="93%"></span>
</div>
</div>


<div class="skill">
<div class="skill-top">
<span>B2B / B2C Operations</span>
<span>90%</span>
</div>

<div class="skill-track">
<span data-width="90%"></span>
</div>
</div>


<div class="skill">
<div class="skill-top">
<span>MS Excel / Office</span>
<span>88%</span>
</div>

<div class="skill-track">
<span data-width="88%"></span>
</div>
</div>


<div class="skill">
<div class="skill-top">
<span>Reporting / MIS</span>
<span>90%</span>
</div>

<div class="skill-track">
<span data-width="90%"></span>
</div>
</div>

</div>

</div>

</div>

</section>


<!-- ======================================================
     CAREER
====================================================== -->

<section id="career">

<div class="container">

<div class="heading reveal">

<small>CAREER</small>

<h2>Professional Journey</h2>

<p>
    Experience across logistics, e-commerce and warehouse operations.
</p>

</div>


<div class="timeline">


<div class="t-item reveal">

<span class="t-dot"></span>

<div class="t-card">

<div class="t-date">
    10 FEB 2026 — PRESENT
</div>

<h3>Assistant Manager</h3>

<h4>
    Community Innovations — Meesho Short/Sort Center
</h4>

<ul>
<li>Customer delight</li>
<li>Pilferage / missing loss control</li>
<li>People management</li>
<li>Business & customer metrics</li>
<li>Stock audit & reconciliation</li>
<li>Dashboard & reporting</li>
<li>Shipment ageing & dispatch</li>
</ul>

</div>

</div>


<div class="t-item reveal">

<span class="t-dot"></span>

<div class="t-card">

<div class="t-date">
    NOV 2024 — NOV 2026
</div>

<h3>Shift In-Charge</h3>

<h4>
    Meesho — Optimizing Resources Pvt
</h4>

<ul>
<li>First Mile / Last Mile</li>
<li>HUB / Sort Center operations</li>
<li>Inbound / Outbound</li>
<li>B2B POD records</li>
<li>Team leadership</li>
<li>150 workforce exposure</li>
</ul>

</div>

</div>


<div class="t-item reveal">

<span class="t-dot"></span>

<div class="t-card">

<div class="t-date">
    AUG 2022 — JUL 2023
</div>

<h3>Supervisor</h3>

<h4>
    Reliance Trends Limited — Lucknow
</h4>

<ul>
<li>Transportation planning</li>
<li>Warehousing & distribution</li>
<li>Inventory management</li>
<li>Supplier / vendor coordination</li>
<li>Delivery issue resolution</li>
</ul>

</div>

</div>

</div>

</div>

</section>


<!-- ======================================================
     EDUCATION
====================================================== -->

<section>

<div class="container">

<div class="heading reveal">

<small>QUALIFICATION</small>

<h2>Education</h2>

</div>


<div class="edu-grid">

<div class="edu reveal">

<div class="edu-icon">🎓</div>

<h3>B.A.</h3>

<p>
Chhatrapati Shahu Ji Maharaj University, Kanpur
</p>

</div>


<div class="edu reveal">

<div class="edu-icon">📚</div>

<h3>Intermediate</h3>

<p>
U.P. Board<br>
1st Division
</p>

</div>


<div class="edu reveal">

<div class="edu-icon">📖</div>

<h3>High School</h3>

<p>
U.P. Board<br>
1st Division
</p>

</div>


<div class="edu reveal">

<div class="edu-icon">💻</div>

<h3>O'Level</h3>

<p>
IIT Lucknow, U.P.
</p>

</div>

</div>

</div>

</section>


<!-- ======================================================
     CONTACT
====================================================== -->

<section id="contact">

<div class="container">

<div class="heading reveal">

<small>CONTACT</small>

<h2>Let's Connect</h2>

<p>
    Open for professional opportunities and logistics discussions.
</p>

</div>


<div class="contact">


<div class="contact-box reveal">

<h3>Contact Details</h3>


<div class="contact-row">

<div class="contact-icon">✉</div>

<div>

<small>Email</small>

<a href="mailto:udit878258@gmail.com">
udit878258@gmail.com
</a>

</div>

</div>


<div class="contact-row">

<div class="contact-icon">📱</div>

<div>

<small>Phone</small>

<a href="tel:+919236053108">
+91 9236053108
</a>

</div>

</div>


<div class="contact-row">

<div class="contact-icon">📍</div>

<div>

<small>Professional Base</small>

<strong>Agra, Uttar Pradesh</strong>

</div>

</div>

</div>


<div class="contact-box reveal">

<h3>Send Message</h3>

<input
id="name"
type="text"
placeholder="Your Name"
>

<input
id="email"
type="email"
placeholder="Your Email"
>

<textarea
id="message"
placeholder="Your Message"
></textarea>

<button
class="btn primary"
style="width:100%;cursor:pointer"
onclick="sendWhatsApp()">

💬 Send via WhatsApp

</button>

</div>

</div>

</div>

</section>


<footer>

<div class="container">

<strong>UDIT PATEL</strong>

<p>
Logistics • Warehouse Operations • Supply Chain • Team Management
</p>

<p style="margin-top:10px">
© <span id="year"></span> Udit Patel
</p>

</div>

</footer>


<a
class="whatsapp"
href="https://wa.me/919236053108"
target="_blank">
☎
</a>

<button
class="top"
onclick="window.scrollTo({top:0,behavior:'smooth'})">
↑
</button>


<script>

/* =========================================================
   LOADER
========================================================= */

window.addEventListener("load",()=>{

    setTimeout(()=>{

        const loader=document.getElementById("loader");

        loader.style.opacity="0";

        setTimeout(()=>{
            loader.style.display="none";
        },800);

    },1300);

});


/* =========================================================
   MOBILE MENU
========================================================= */

const menu=document.getElementById("menu");
const links=document.getElementById("links");

menu.onclick=()=>{
    links.classList.toggle("open");
};

document.querySelectorAll(".links a").forEach(a=>{
    a.onclick=()=>{
        links.classList.remove("open");
    };
});


/* =========================================================
   DARK / LIGHT MODE
========================================================= */

const theme=document.getElementById("theme");

if(localStorage.getItem("theme")==="light"){

    document.body.classList.add("light");
    theme.textContent="🌙";

}

theme.onclick=()=>{

    document.body.classList.toggle("light");

    if(document.body.classList.contains("light")){

        localStorage.setItem("theme","light");
        theme.textContent="🌙";

    }else{

        localStorage.setItem("theme","dark");
        theme.textContent="☀";

    }

};


/* =========================================================
   TYPING EFFECT
========================================================= */

const roles=[
    "Assistant Manager",
    "Logistics Operations Professional",
    "Warehouse Operations Professional",
    "Supply Chain Professional",
    "Team Management Professional"
];

let roleIndex=0;
let charIndex=0;
let deleting=false;

function typing(){

    const el=document.getElementById("typing");
    const text=roles[roleIndex];

    if(!deleting){

        el.textContent=text.substring(0,charIndex+1);
        charIndex++;

        if(charIndex===text.length){

            deleting=true;

            setTimeout(typing,1400);

            return;
        }

    }else{

        el.textContent=text.substring(0,charIndex-1);
        charIndex--;

        if(charIndex===0){

            deleting=false;

            roleIndex++;

            if(roleIndex>=roles.length){
                roleIndex=0;
            }

        }

    }

    setTimeout(
        typing,
        deleting ? 45 : 75
    );

}

typing();


/* =========================================================
   MOUSE FOLLOW 3D EFFECT
========================================================= */

const scene=document.getElementById("scene");
const warehouse=document.getElementById("warehouse");

document.addEventListener("mousemove",(e)=>{

    if(window.innerWidth<900) return;

    const x=(e.clientX/window.innerWidth-.5);
    const y=(e.clientY/window.innerHeight-.5);

    warehouse.style.transform=
        `rotateX(${5-y*10}deg)
         rotateY(${-7+x*14}deg)
         translateZ(5px)`;

});


/* =========================================================
   RESET 3D ON MOUSE LEAVE
========================================================= */

document.addEventListener("mouseleave",()=>{

    warehouse.style.transform=
        "rotateX(5deg) rotateY(-7deg)";

});


/* =========================================================
   SCROLL REVEAL
========================================================= */

const revealItems=document.querySelectorAll(".reveal");

function reveal(){

    revealItems.forEach(item=>{

        const position=item.getBoundingClientRect().top;

        if(position < window.innerHeight-80){

            item.classList.add("show");

        }

    });

}

window.addEventListener("scroll",reveal);

reveal();


/* =========================================================
   SKILL BARS
========================================================= */

let skillsDone=false;

function skillsAnimation(){

    if(skillsDone) return;

    const section=document.getElementById("skills");

    if(section.getBoundingClientRect().top < window.innerHeight-100){

        skillsDone=true;

        document.querySelectorAll("[data-width]").forEach(bar=>{

            setTimeout(()=>{

                bar.style.width=
                    bar.getAttribute("data-width");

            },200);

        });

    }

}

window.addEventListener("scroll",skillsAnimation);


/* =========================================================
   LINKEDIN
========================================================= */

function linkedin(e){

    e.preventDefault();

    alert(
        "YOUR_LINKEDIN_URL ko apne actual LinkedIn profile link se replace karo."
    );

}


/* =========================================================
   WHATSAPP CONTACT FORM
========================================================= */

function sendWhatsApp(){

    const name=
        document.getElementById("name").value.trim();

    const email=
        document.getElementById("email").value.trim();

    const message=
        document.getElementById("message").value.trim();

    if(!name || !message){

        alert(
            "Please enter your name and message."
        );

        return;
    }

    const text=
        "Hello Udit,%0A%0A"+
        "Name: "+encodeURIComponent(name)+"%0A"+
        "Email: "+encodeURIComponent(email)+"%0A%0A"+
        "Message:%0A"+
        encodeURIComponent(message);

    window.open(
        "https://wa.me/919236053108?text="+text,
        "_blank"
    );

}


/* =========================================================
   YEAR
========================================================= */

document.getElementById("year").textContent=
    new Date().getFullYear();

</script>

</body>
</html>
