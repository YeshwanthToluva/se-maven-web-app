<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arch Linux Lore</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Courier New', monospace;
            background-color: #000000;
            color: #ffffff;
            overflow-x: hidden;
            line-height: 1.6;
            position: relative;
        }
        /* Arch Logo SVG - Official Crystal Style, Animated */
        .logo {
            text-align: center;
            padding: 20px;
            position: relative;
            z-index: 10;
        }
        .arch-logo {
            width: 200px;
            height: 200px;
            animation: rotateAndGlow 4s ease-in-out infinite alternate;
            filter: drop-shadow(0 0 20px #0099ff);
        }
        @keyframes rotateAndGlow {
            0% { 
                transform: rotateY(0deg) scale(1);
                filter: drop-shadow(0 0 10px #0099ff);
            }
            100% { 
                transform: rotateY(180deg) scale(1.05);
                filter: drop-shadow(0 0 30px #0099ff) hue-rotate(180deg);
            }
        }
        .arch-logo path {
            fill: #ffffff;
            stroke: #0099ff;
            stroke-width: 2;
            animation: pulsePath 2s ease-in-out infinite alternate;
        }
        @keyframes pulsePath {
            0% { opacity: 0.8; stroke-width: 2; }
            100% { opacity: 1; stroke-width: 4; }
        }
        /* Dynamic Terminal Background */
        .terminal-bg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            opacity: 0.15;
            z-index: -1;
            font-family: 'Courier New', monospace;
            font-size: 12px;
            line-height: 1;
            overflow: hidden;
            background: repeating-linear-gradient(
                0deg,
                #000000 0px,
                #000000 2px,
                #001100 2px,
                #001100 4px
            );
        }
        .terminal-lines {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 200%;
            animation: terminalScroll 30s linear infinite;
        }
        .terminal-line {
            height: 20px;
            border-bottom: 1px solid rgba(0, 153, 255, 0.1);
            position: relative;
            overflow: hidden;
            white-space: nowrap;
        }
        .terminal-text {
            position: absolute;
            left: 10px;
            color: #00ff00;
            animation: typeAndFade 3s steps(40) infinite;
            opacity: 0.6;
        }
        @keyframes terminalScroll {
            0% { transform: translateY(0); }
            100% { transform: translateY(-50%); }
        }
        @keyframes typeAndFade {
            0% { width: 0; opacity: 1; }
            80% { width: 100%; opacity: 1; }
            100% { width: 100%; opacity: 0; }
        }
        /* Enhanced Floating Particles - Binary Code Style */
        .particles {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 1;
        }
        .particle {
            position: absolute;
            font-size: 12px;
            color: #0099ff;
            opacity: 0.7;
            animation: binaryFloat 8s linear infinite;
            text-shadow: 0 0 5px #0099ff;
        }
        @keyframes binaryFloat {
            0% { 
                transform: translateY(100vh) rotate(0deg); 
                opacity: 0; 
            }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { 
                transform: translateY(-100px) rotate(360deg); 
                opacity: 0; 
            }
        }
        /* Hero Section with Parallax */
        .hero {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            background: radial-gradient(ellipse at center, rgba(0, 153, 255, 0.05) 0%, #000000 70%);
            position: relative;
            z-index: 5;
        }
        .hero h1 {
            font-size: 3rem;
            animation: glitch 2s ease-in-out infinite alternate;
            opacity: 0;
            animation-fill-mode: forwards;
            animation-delay: 0.5s;
            text-shadow: 0 0 10px #0099ff;
        }
        .hero p {
            font-size: 1.2rem;
            max-width: 600px;
            margin-top: 20px;
            animation: fadeInUp 1s ease-out 1s forwards;
            opacity: 0;
            text-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
        }
        @keyframes glitch {
            0% { 
                transform: translate(0); 
                clip-path: inset(0 0 0 0); 
            }
            20% { 
                transform: translate(-2px, 2px); 
                clip-path: inset(1px 0 0 0); 
            }
            40% { 
                transform: translate(2px, -2px); 
                clip-path: inset(0 1px 0 0); 
            }
            60% { 
                transform: translate(-2px, -2px); 
                clip-path: inset(0 0 1px 0); 
            }
            80% { 
                transform: translate(2px, 2px); 
                clip-path: inset(0 0 0 1px); 
            }
            100% { 
                transform: translate(0); 
                clip-path: inset(0 0 0 0); 
            }
        }
        @keyframes slideInDown {
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes fadeInUp {
            to { opacity: 1; transform: translateY(0); }
        }
        /* Content Sections with Enhanced Animations */
        .content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 50px 20px;
            position: relative;
            z-index: 5;
        }
        .section {
            margin-bottom: 50px;
            opacity: 0;
            transform: translateY(50px) scale(0.95);
            transition: all 0.8s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }
        .section.visible {
            opacity: 1;
            transform: translateY(0) scale(1);
        }
        .section h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            position: relative;
            overflow: hidden;
            white-space: nowrap;
            border-right: 3px solid #0099ff;
            animation: typewriter 2s steps(40) forwards, scanline 3s linear infinite;
        }
        .section h2::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(0, 153, 255, 0.1), transparent);
            animation: scan 2s linear infinite;
        }
        @keyframes typewriter {
            from { width: 0; }
            to { width: 100%; }
        }
        @keyframes scan {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100%); }
        }
        @keyframes scanline {
            0%, 100% { box-shadow: inset 0 0 0 #0099ff; }
            50% { box-shadow: inset 0 0 20px #0099ff; }
        }
        .section p, .section ul {
            font-size: 1.1rem;
            margin-bottom: 15px;
            backdrop-filter: blur(10px);
            background: rgba(0, 0, 0, 0.3);
            padding: 15px;
            border-left: 3px solid #0099ff;
            border-radius: 0 5px 5px 0;
            transition: all 0.3s ease;
        }
        .section p:hover, .section ul:hover {
            background: rgba(0, 0, 0, 0.5);
            transform: translateX(10px);
            box-shadow: 0 5px 15px rgba(0, 153, 255, 0.2);
        }
        .section ul {
            list-style: none;
            padding-left: 0;
        }
        .section li {
            padding: 10px 0;
            position: relative;
            animation: bounceIn 0.6s ease forwards;
            transition: color 0.3s ease;
        }
        .section li:hover {
            color: #0099ff;
        }
        .section li:before {
            content: 'λ';
            color: #0099ff;
            margin-right: 10px;
            display: inline-block;
            animation: pulse 1s infinite;
            font-weight: bold;
        }
        @keyframes bounceIn {
            0% { opacity: 0; transform: scale(0.3) translateX(-50px); }
            50% { opacity: 1; transform: scale(1.05) translateX(10px); }
            100% { transform: scale(1) translateX(0); }
        }
        @keyframes pulse {
            0%, 100% { transform: scale(1); opacity: 1; }
            50% { transform: scale(1.2); opacity: 0.7; }
        }
        /* Scroll Trigger and Parallax */
        .fade-in {
            opacity: 0;
            transition: opacity 0.6s ease;
        }
        .fade-in.visible {
            opacity: 1;
        }
        /* Responsive */
        @media (max-width: 768px) {
            .arch-logo { width: 150px; height: 150px; }
            .hero h1 { font-size: 2rem; }
            .terminal-text { font-size: 10px; }
        }
    </style>
</head>
<body>
    <!-- Terminal Scrolling Background -->
    <div class="terminal-bg">
        <div class="terminal-lines" id="terminalLines"></div>
    </div>
    
    <!-- Binary Particles -->
    <div class="particles" id="particles"></div>
    
    <!-- Arch Logo SVG -->
    <header class="logo">
        <svg class="arch-logo" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
            <!-- Official Arch Linux Crystal Logo Path (Simplified Vector Representation) -->
            <path d="M100 10 L190 90 L100 170 L10 90 Z M100 30 L170 90 L100 150 L30 90 Z" />
            <!-- Additional details for crystal effect -->
            <path d="M100 50 L150 90 L100 130 L50 90 Z" fill="none" stroke="#0099ff" stroke-width="3" opacity="0.6" />
            <circle cx="100" cy="90" r="5" fill="#0099ff" opacity="0.8">
                <animate attributeName="r" values="5;8;5" dur="2s" repeatCount="indefinite" />
            </circle>
        </svg>
    </header>

    <section class="hero">
        <h1 style="animation-delay: 0s;">Welcome to the Arch Linux Lore</h1>
        <p>Discover the minimalist, rolling-release distribution that empowers users with simplicity, modernity, and complete control. Inspired by elegance and built for the enlightened.</p>
    </section>

    <div class="content">
        <section class="section fade-in" id="history">
            <h2 style="animation-delay: 0.5s;">Origins of Arch</h2>
            <p>In early 2001, Judd Vinet, a Canadian programmer and guitarist, envisioned a lightweight Linux distribution that combined the simplicity of CRUX, Slackware, and BSD with modern package management.</p>
            <p>The first release, Arch Linux 0.1, arrived on March 11, 2002, targeting 32-bit x86 architecture and introducing Pacman, a revolutionary package manager for seamless dependency resolution and updates.</p>
        </section>

        <section class="section fade-in" id="evolution">
            <h2 style="animation-delay: 1s;">Evolution and Milestones</h2>
            <ul>
                <li style="animation-delay: 1.2s;">2006: Expanded to x86-64 architecture, broadening hardware support.</li>
                <li style="animation-delay: 1.4s;">2007: Judd Vinet handed leadership to Aaron Griffin due to time constraints.</li>
                <li style="animation-delay: 1.6s;">2012: Adopted systemd as the default init system, replacing the traditional SysV-style for improved performance.</li>
                <li style="animation-delay: 1.8s;">2017: Discontinued i686 (32-bit) support, focusing on modern 64-bit systems; community derivative Arch Linux 32 emerged for legacy hardware.</li>
                <li style="animation-delay: 2s;">2020: Aaron Griffin transferred control to Levente Polyak, introducing a 2-year term for project leadership.</li>
                <li style="animation-delay: 2.2s;">2021: Added a guided installation script to ease the setup process for new users.</li>
                <li style="animation-delay: 2.4s;">2024: Valve partnered with developers to enhance build infrastructure and secure signing.</li>
                <li style="animation-delay: 2.6s;">2025: Faced a DDoS attack on August 14, temporarily disrupting services but highlighting the community's resilience.</li>
            </ul>
        </section>

        <section class="section fade-in" id="principles">
            <h2 style="animation-delay: 1.5s;">Core Principles</h2>
            <p>Arch Linux adheres to five key tenets: simplicity in design, modernity in software, pragmatism in approach, user centrality in control, and versatility for customization.</p>
            <p>It's a rolling-release distro, delivering bleeding-edge updates without versioned releases, ensuring users always have the latest features while maintaining stability through community-driven testing.</p>
            <p>The Arch Wiki serves as an unparalleled resource, providing detailed, user-contributed guides that embody the DIY ethos and foster a knowledgeable community.</p>
        </section>

        <section class="section fade-in" id="legacy">
            <h2 style="animation-delay: 2s;">Legacy and Impact</h2>
            <p>From its humble beginnings as a niche project, Arch has grown into one of the most influential distributions, inspiring derivatives like Manjaro and educating users on Linux internals.</p>
            <p>Volunteers drive development without monetization, keeping Arch free and open-source, with a vibrant community that thrives on forums, the AUR (Arch User Repository), and collaborative problem-solving.</p>
            <p>Today, Arch represents the pinnacle of user empowerment, where "I use Arch, btw" is more than a meme—it's a badge of customization and expertise.</p>
        </section>
    </div>

    <script>
        // Generate Binary Code Particles
        function createParticles() {
            const particlesContainer = document.getElementById('particles');
            const binaryChars = ['0', '1', '01', '10', 'Arch', 'Pacman', 'AUR'];
            for (let i = 0; i < 100; i++) {
                const particle = document.createElement('div');
                particle.className = 'particle';
                particle.textContent = binaryChars[Math.floor(Math.random() * binaryChars.length)];
                particle.style.left = Math.random() * 100 + '%';
                particle.style.fontSize = (Math.random() * 8 + 8) + 'px';
                particle.style.animationDelay = Math.random() * 8 + 's';
                particle.style.animationDuration = (Math.random() * 4 + 6) + 's';
                particlesContainer.appendChild(particle);
            }
        }
        createParticles();

        // Generate Terminal Lines
        function createTerminalLines() {
            const linesContainer = document.getElementById('terminalLines');
            const commands = [
                'pacman -Syu',
                'yay -S --needed base-devel git',
                'sudo systemctl enable --now sshd',
                'lsblk | grep nvme',
                'neofetch --config /etc/neofetch.conf',
                'htop -u $(whoami)',
                'journalctl -f -u NetworkManager',
                'archinstall --advanced',
                'mkinitcpimg -P',
                'grub-mkconfig -o /boot/grub/grub.cfg'
            ];
            for (let i = 0; i < 100; i++) {  // Generate more lines for scrolling
                const line = document.createElement('div');
                line.className = 'terminal-line';
                const text = document.createElement('div');
                text.className = 'terminal-text';
                text.textContent = '$ ' + commands[Math.floor(Math.random() * commands.length)] + ' ' + Array.from({length: Math.floor(Math.random() * 20) + 10}, () => String.fromCharCode(97 + Math.floor(Math.random() * 26))).join('');
                text.style.animationDelay = (Math.random() * 3) + 's';
                line.appendChild(text);
                linesContainer.appendChild(line);
            }
        }
        createTerminalLines();

        // Enhanced Intersection Observer for Animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -100px 0px'
        };
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                    // Trigger typewriter after delay
                    const h2 = entry.target.querySelector('h2');
                    if (h2) {
                        h2.style.animationPlayState = 'running';
                    }
                }
            });
        }, observerOptions);

        document.querySelectorAll('.section').forEach(section => {
            observer.observe(section);
        });

        // Hero Animations on Load
        window.addEventListener('load', () => {
            document.querySelector('.hero h1').style.opacity = '1';
            document.querySelector('.hero h1').style.transform = 'translateY(0)';
            setTimeout(() => {
                document.querySelector('.hero p').style.opacity = '1';
                document.querySelector('.hero p').style.transform = 'translateY(0)';
            }, 500);
        });

        // Parallax Effect on Mouse Move
        document.addEventListener('mousemove', (e) => {
            const particles = document.querySelectorAll('.particle');
            particles.forEach(particle => {
                const speed = 0.02;
                const x = (window.innerWidth - e.pageX * speed) / 100;
                const y = (window.innerHeight - e.pageY * speed) / 100;
                particle.style.transform += ` translate(${x}px, ${y}px)`;
            });
        });

        // Initialize typewriter animations
        document.querySelectorAll('.section h2').forEach(h2 => {
            h2.style.width = '0';
            h2.style.animationPlayState = 'paused';
        });
    </script>
</body>
</html>
