<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aether — Modern Commerce</title>
    <style>
        :root {
            --bg: #faf9f7;
            --surface: #ffffff;
            --text: #1a1a1a;
            --text-muted: #6b6b6b;
            --border: #e6e4e0;
            --accent: #1a1a1a;
            --accent-hover: #3d3d3d;
            --danger: #c0392b;
            --success: #2e7d32;
            --radius-sm: 6px;
            --radius: 10px;
            --radius-lg: 16px;
            --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.04);
            --shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 12px 40px rgba(0, 0, 0, 0.1);
            --transition: 0.2s cubic-bezier(0.4, 0, 0.2, 1);
            --font: 'Inter', system-ui, -apple-system, 'Segoe UI', sans-serif;
        }

        *,
        *::before,
        *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: var(--font);
            background: var(--bg);
            color: var(--text);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
            min-height: 100vh;
        }

        /* ── Header / Nav ──────────────────────────── */

        .header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border);
            padding: 0 24px;
            transition: var(--transition);
        }

        .header-inner {
            max-width: 1320px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 64px;
            gap: 24px;
        }

        .logo {
            font-size: 1.45rem;
            font-weight: 700;
            letter-spacing: -0.5px;
            text-decoration: none;
            color: var(--text);
            flex-shrink: 0;
        }

        .nav-links {
            display: flex;
            gap: 32px;
            list-style: none;
        }
        .nav-links a {
            text-decoration: none;
            color: var(--text-muted);
            font-size: 0.91rem;
            font-weight: 500;
            transition: color var(--transition);
            position: relative;
        }
        .nav-links a:hover,
        .nav-links a.active {
            color: var(--text);
        }
        .nav-links a.active::after {
            content: '';
            position: absolute;
            bottom: -6px;
            left: 0;
            right: 0;
            height: 2px;
            background: var(--accent);
            border-radius: 2px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 16px;
            flex-shrink: 0;
        }

        .search-wrap {
            position: relative;
        }
        .search-wrap input {
            width: 220px;
            padding: 9px 14px 9px 38px;
            border: 1px solid var(--border);
            border-radius: 24px;
            font-size: 0.88rem;
            font-family: var(--font);
            background: var(--bg);
            transition: all var(--transition);
            outline: none;
        }
        .search-wrap input:focus {
            border-color: var(--accent);
            width: 280px;
            background: var(--surface);
        }
        .search-wrap .search-icon {
            position: absolute;
            left: 13px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-muted);
            pointer-events: none;
            font-size: 0.95rem;
        }

        .icon-btn {
            background: none;
            border: none;
            cursor: pointer;
            position: relative;
            font-size: 1.3rem;
            color: var(--text);
            padding: 6px;
            border-radius: var(--radius-sm);
            transition: background var(--transition);
            line-height: 1;
        }
        .icon-btn:hover {
            background: var(--bg);
        }

        .badge {
            position: absolute;
            top: 0;
            right: -2px;
            background: var(--danger);
            color: #fff;
            font-size: 0.68rem;
            font-weight: 700;
            min-width: 18px;
            height: 18px;
            line-height: 18px;
            text-align: center;
            border-radius: 10px;
            padding: 0 5px;
            pointer-events: none;
        }

        /* ── Hero Banner ──────────────────────────── */

        .hero {
            background: linear-gradient(135deg, #f5f3ef 0%, #ede8e0 100%);
            padding: 64px 24px;
            text-align: center;
        }
        .hero h1 {
            font-size: 2.8rem;
            font-weight: 700;
            letter-spacing: -1px;
            margin-bottom: 12px;
            line-height: 1.15;
        }
        .hero p {
            color: var(--text-muted);
            font-size: 1.1rem;
            max-width: 480px;
            margin: 0 auto 28px;
        }
        .hero .btn {
            display: inline-block;
            background: var(--accent);
            color: #fff;
            padding: 13px 32px;
            border-radius: 28px;
            text-decoration: none;
            font-weight: 600;
            font-size: 0.95rem;
            transition: background var(--transition), transform var(--transition);
        }
        .hero .btn:hover {
            background: var(--accent-hover);
            transform: translateY(-1px);
        }

        /* ── Filters ──────────────────────────────── */

        .filters-bar {
            max-width: 1320px;
            margin: 0 auto;
            padding: 24px 24px 0;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            align-items: center;
        }
        .filter-chip {
            padding: 8px 18px;
            border: 1px solid var(--border);
            border-radius: 22px;
            background: var(--surface);
            font-size: 0.85rem;
            font-weight: 500;
            cursor: pointer;
            transition: all var(--transition);
            font-family: var(--font);
            color: var(--text-muted);
            white-space: nowrap;
        }
        .filter-chip:hover {
            border-color: var(--accent);
            color: var(--text);
        }
        .filter-chip.active {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }

        .sort-select {
            margin-left: auto;
            padding: 8px 14px;
            border: 1px solid var(--border);
            border-radius: 22px;
            font-size: 0.85rem;
            font-family: var(--font);
            background: var(--surface);
            color: var(--text);
            cursor: pointer;
            outline: none;
        }

        /* ── Product Grid ─────────────────────────── */

        .products-section {
            max-width: 1320px;
            margin: 0 auto;
            padding: 28px 24px 60px;
        }
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 24px;
        }

        .product-card {
            background: var(--surface);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: transform var(--transition), box-shadow var(--transition);
            cursor: pointer;
            position: relative;
            border: 1px solid transparent;
        }
        .product-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
            border-color: var(--border);
        }

        .product-card .img-wrap {
            position: relative;
            aspect-ratio: 3 / 4;
            overflow: hidden;
            background: #f0ede8;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3.5rem;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.04);
        }

        .product-card .quick-add {
            position: absolute;
            bottom: 12px;
            right: 12px;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 28px;
            padding: 8px 18px;
            font-size: 0.82rem;
            font-weight: 600;
            font-family: var(--font);
            cursor: pointer;
            opacity: 0;
            transform: translateY(8px);
            transition: all var(--transition);
            color: var(--text);
            box-shadow: var(--shadow);
        }
        .product-card:hover .quick-add {
            opacity: 1;
            transform: translateY(0);
        }
        .quick-add:hover {
            background: var(--accent);
            color: #fff;
        }

        .product-card .wishlist-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            background: var(--surface);
            border: none;
            border-radius: 50%;
            width: 34px;
            height: 34px;
            font-size: 1.1rem;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0;
            transform: translateY(-4px);
            transition: all var(--transition);
            box-shadow: var(--shadow-sm);
            color: var(--text-muted);
        }
        .product-card:hover .wishlist-btn {
            opacity: 1;
            transform: translateY(0);
        }
        .wishlist-btn.liked {
            color: #e74c3c;
            opacity: 1;
            transform: translateY(0);
        }

        .product-card .info {
            padding: 16px;
        }
        .product-card .info .brand {
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: var(--text-muted);
            margin-bottom: 4px;
        }
        .product-card .info .name {
            font-weight: 600;
            font-size: 0.95rem;
            margin-bottom: 6px;
            line-height: 1.3;
        }
        .product-card .info .row {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .product-card .info .price {
            font-weight: 700;
            font-size: 1.05rem;
        }
        .product-card .info .old-price {
            text-decoration: line-through;
            color: var(--text-muted);
            font-size: 0.82rem;
            margin-left: 8px;
            font-weight: 400;
        }
        .product-card .info .rating {
            font-size: 0.82rem;
            color: #e67e22;
        }

        /* ── Cart Drawer ──────────────────────────── */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.35);
            z-index: 200;
            opacity: 0;
            pointer-events: none;
            transition: opacity var(--transition);
        }
        .overlay.open {
            opacity: 1;
            pointer-events: auto;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: 420px;
            max-width: 92vw;
            height: 100%;
            background: var(--surface);
            z-index: 210;
            box-shadow: var(--shadow-lg);
            display: flex;
            flex-direction: column;
            transform: translateX(100%);
            transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .cart-drawer.open {
            transform: translateX(0);
        }

        .cart-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 24px;
            border-bottom: 1px solid var(--border);
        }
        .cart-header h2 {
            font-size: 1.15rem;
            font-weight: 700;
        }
        .cart-header .close-btn {
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
            padding: 4px 8px;
            border-radius: var(--radius-sm);
            color: var(--text-muted);
            transition: background var(--transition);
        }
        .cart-header .close-btn:hover {
            background: var(--bg);
        }

        .cart-body {
            flex: 1;
            overflow-y: auto;
            padding: 16px 24px;
        }
        .cart-empty {
            text-align: center;
            padding: 60px 20px;
            color: var(--text-muted);
        }
        .cart-empty .empty-icon {
            font-size: 3rem;
            margin-bottom: 12px;
        }

        .cart-item {
            display: flex;
            gap: 14px;
            padding: 16px 0;
            border-bottom: 1px solid var(--border);
            align-items: center;
        }
        .cart-item .item-img {
            width: 72px;
            height: 96px;
            border-radius: var(--radius-sm);
            background: #f0ede8;
            flex-shrink: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
        }
        .cart-item .item-details {
            flex: 1;
            min-width: 0;
        }
        .cart-item .item-details .item-name {
            font-weight: 600;
            font-size: 0.9rem;
            margin-bottom: 4px;
        }
        .cart-item .item-details .item-price {
            font-weight: 700;
            font-size: 0.95rem;
            margin-bottom: 8px;
        }
        .cart-item .qty-controls {
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .qty-controls button {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            border: 1px solid var(--border);
            background: var(--surface);
            cursor: pointer;
            font-size: 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all var(--transition);
            font-family: var(--font);
        }
        .qty-controls button:hover {
            border-color: var(--accent);
            background: var(--bg);
        }
        .qty-controls span {
            min-width: 28px;
            text-align: center;
            font-weight: 600;
            font-size: 0.9rem;
        }
        .cart-item .remove-btn {
            background: none;
            border: none;
            cursor: pointer;
            color: var(--text-muted);
            font-size: 1.1rem;
            padding: 4px;
            transition: color var(--transition);
        }
        .remove-btn:hover {
            color: var(--danger);
        }

        .cart-footer {
            border-top: 1px solid var(--border);
            padding: 20px 24px;
        }
        .cart-footer .subtotal {
            display: flex;
            justify-content: space-between;
            font-weight: 600;
            font-size: 1.05rem;
            margin-bottom: 14px;
        }
        .cart-footer .checkout-btn {
            width: 100%;
            padding: 14px;
            background: var(--accent);
            color: #fff;
            border: none;
            border-radius: 28px;
            font-size: 0.95rem;
            font-weight: 600;
            font-family: var(--font);
            cursor: pointer;
            transition: background var(--transition);
        }
        .checkout-btn:hover {
            background: var(--accent-hover);
        }
        .checkout-btn:disabled {
            opacity: 0.5;
            cursor: not-allowed;
        }

        /* ── Toast ─────────────────────────────────── */

        .toast-container {
            position: fixed;
            bottom: 28px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 300;
            display: flex;
            flex-direction: column;
            gap: 8px;
            pointer-events: none;
        }
        .toast {
            background: var(--accent);
            color: #fff;
            padding: 12px 24px;
            border-radius: 28px;
            font-size: 0.88rem;
            font-weight: 500;
            box-shadow: var(--shadow-lg);
            animation: slideUp 0.35s ease, fadeOut 0.35s ease 2s forwards;
            pointer-events: auto;
            white-space: nowrap;
        }
        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(16px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        @keyframes fadeOut {
            to {
                opacity: 0;
                transform: translateY(-8px);
            }
        }

        /* ── No Results ───────────────────────────── */

        .no-results {
            grid-column: 1 / -1;
            text-align: center;
            padding: 60px 20px;
            color: var(--text-muted);
        }
        .no-results .icon {
            font-size: 3rem;
        }

        /* ── Responsive ───────────────────────────── */

        @media (max-width: 900px) {
            .nav-links {
                display: none;
            }
            .search-wrap input {
                width: 160px;
            }
            .search-wrap input:focus {
                width: 200px;
            }
            .hero h1 {
                font-size: 2rem;
            }
            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
                gap: 14px;
            }
            .product-card .quick-add,
            .product-card .wishlist-btn {
                opacity: 1;
                transform: none;
            }
            .filters-bar {
                overflow-x: auto;
                flex-wrap: nowrap;
                padding-bottom: 8px;
                -webkit-overflow-scrolling: touch;
            }
            .sort-select {
                margin-left: 8px;
            }
        }
        @media (max-width: 480px) {
            .header-inner {
                height: 56px;
            }
            .logo {
                font-size: 1.2rem;
            }
            .search-wrap input {
                width: 120px;
                padding: 8px 12px 8px 32px;
            }
            .search-wrap input:focus {
                width: 150px;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 10px;
            }
            .product-card .info {
                padding: 10px;
            }
            .product-card .info .name {
                font-size: 0.82rem;
            }
            .product-card .info .price {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

    <!-- ═══════════ HEADER ═══════════ -->
    <header class="header">
        <div class="header-inner">
            <a href="#" class="logo">Aether</a>
            <nav>
                <ul class="nav-links">
                    <li><a href="#" class="active">Shop</a></li>
                    <li><a href="#">New In</a></li>
                    <li><a href="#">Men</a></li>
                    <li><a href="#">Women</a></li>
                    <li><a href="#">Accessories</a></li>
                </ul>
            </nav>
            <div class="header-actions">
                <div class="search-wrap">
                    <span class="search-icon">🔍</span>
                    <input type="text" id="searchInput" placeholder="Search products…" autocomplete="off">
                </div>
                <button class="icon-btn wishlist-toggle" title="Wishlist" id="wishlistToggle">♡</button>
                <button class="icon-btn" title="Cart" id="cartToggle">
                    🛒<span class="badge" id="cartBadge" style="display:none">0</span>
                </button>
            </div>
        </div>
    </header>

    <!-- ═══════════ HERO ═══════════ -->
    <section class="hero">
        <h1>Autumn Collection 2026</h1>
        <p>Thoughtfully crafted pieces for the season ahead. New arrivals dropping weekly.</p>
        <a href="#products" class="btn">Explore Collection</a>
    </section>

    <!-- ═══════════ FILTERS ═══════════ -->
    <div class="filters-bar" id="filtersBar">
        <button class="filter-chip active" data-category="all">All</button>
        <button class="filter-chip" data-category="outerwear">Outerwear</button>
        <button class="filter-chip" data-category="knitwear">Knitwear</button>
        <button class="filter-chip" data-category="footwear">Footwear</button>
        <button class="filter-chip" data-category="bags">Bags</button>
        <button class="filter-chip" data-category="accessories">Accessories</button>
        <select class="sort-select" id="sortSelect">
            <option value="default">Sort by: Featured</option>
            <option value="price-asc">Price: Low → High</option>
            <option value="price-desc">Price: High → Low</option>
            <option value="name-asc">Name: A → Z</option>
            <option value="rating-desc">Top Rated</option>
        </select>
    </div>

    <!-- ═══════════ PRODUCTS ═══════════ -->
    <section class="products-section" id="products">
        <div class="products-grid" id="productsGrid"></div>
        <div class="no-results" id="noResults" style="display:none">
            <div class="icon">🔍</div>
            <p>No products found matching your criteria.</p>
        </div>
    </section>

    <!-- ═══════════ CART DRAWER ═══════════ -->
    <div class="overlay" id="overlay"></div>
    <aside class="cart-drawer" id="cartDrawer">
        <div class="cart-header">
            <h2>Your Cart</h2>
            <button class="close-btn" id="cartClose">✕</button>
        </div>
        <div class="cart-body" id="cartBody"></div>
        <div class="cart-footer" id="cartFooter"></div>
    </aside>

    <!-- ═══════════ TOAST CONTAINER ═══════════ -->
    <div class="toast-container" id="toastContainer"></div>

    <script>
        (function() {
            /* ── PRODUCT DATA ────────────────────────── */
            const products = [
                { id: 1, name: 'Oversized Wool Coat', brand: 'Aether', category: 'outerwear', price: 249.00,
                    oldPrice: null, rating: 4.8, reviews: 124, emoji: '🧥', color: '#3a3a3a' },
                { id: 2, name: 'Cashmere Turtleneck', brand: 'Aether', category: 'knitwear', price: 168.00,
                    oldPrice: 210.00, rating: 4.7, reviews: 89, emoji: '🧶', color: '#d4c5b9' },
                { id: 3, name: 'Leather Chelsea Boots', brand: 'Aether', category: 'footwear', price: 295.00,
                    oldPrice: null, rating: 4.9, reviews: 203, emoji: '👢', color: '#5c3d2e' },
                { id: 4, name: 'Canvas Tote Bag', brand: 'Aether', category: 'bags', price: 85.00, oldPrice: null,
                    rating: 4.5, reviews: 56, emoji: '👜', color: '#d4c9b5' },
                { id: 5, name: 'Merino Beanie', brand: 'Aether', category: 'accessories', price: 42.00,
                    oldPrice: null, rating: 4.6, reviews: 178, emoji: '🎩', color: '#2c2c2c' },
                { id: 6, name: 'Relaxed Blazer', brand: 'Aether', category: 'outerwear', price: 220.00,
                    oldPrice: 280.00, rating: 4.4, reviews: 67, emoji: '🤵', color: '#1e293b' },
                { id: 7, name: 'Ribbed Cardigan', brand: 'Aether', category: 'knitwear', price: 135.00,
                    oldPrice: null, rating: 4.6, reviews: 94, emoji: '🧵', color: '#c9b99a' },
                { id: 8, name: 'Suede Loafers', brand: 'Aether', category: 'footwear', price: 185.00,
                    oldPrice: 230.00, rating: 4.3, reviews: 41, emoji: '👞', color: '#8b7355' },
                { id: 9, name: 'Leather Crossbody', brand: 'Aether', category: 'bags', price: 148.00,
                    oldPrice: null, rating: 4.8, reviews: 132, emoji: '🎒', color: '#4a3728' },
                { id: 10, name: 'Silk Scarf', brand: 'Aether', category: 'accessories', price: 68.00, oldPrice: 85.00,
                    rating: 4.7, reviews: 61, emoji: '🧣', color: '#b76e79' },
                { id: 11, name: 'Quilted Jacket', brand: 'Aether', category: 'outerwear', price: 195.00,
                    oldPrice: null, rating: 4.5, reviews: 78, emoji: '🧤', color: '#556b2f' },
                { id: 12, name: 'Alpaca Crewneck', brand: 'Aether', category: 'knitwear', price: 178.00,
                    oldPrice: 210.00, rating: 4.9, reviews: 45, emoji: '🐑', color: '#e8ddd0' },
            ];

            /* ── STATE ──────────────────────────────── */
            let cart = JSON.parse(localStorage.getItem('aether_cart') || '[]');
            let wishlist = JSON.parse(localStorage.getItem('aether_wishlist') || '[]');
            let activeCategory = 'all';
            let activeSort = 'default';
            let searchQuery = '';

            /* ── DOM REFS ───────────────────────────── */
            const $grid = document.getElementById('productsGrid');
            const $noResults = document.getElementById('noResults');
            const $cartDrawer = document.getElementById('cartDrawer');
            const $cartBody = document.getElementById('cartBody');
            const $cartFooter = document.getElementById('cartFooter');
            const $overlay = document.getElementById('overlay');
            const $cartBadge = document.getElementById('cartBadge');
            const $toastContainer = document.getElementById('toastContainer');
            const $searchInput = document.getElementById('searchInput');
            const $sortSelect = document.getElementById('sortSelect');
            const $wishlistToggle = document.getElementById('wishlistToggle');

            /* ── HELPERS ────────────────────────────── */
            function saveCart() { localStorage.setItem('aether_cart', JSON.stringify(cart)); }

            function saveWishlist() { localStorage.setItem('aether_wishlist', JSON.stringify(wishlist)); }

            function toast(msg) {
                const el = document.createElement('div');
                el.className = 'toast';
                el.textContent = msg;
                $toastContainer.appendChild(el);
                setTimeout(() => el.remove(), 2400);
            }

            function getFilteredProducts() {
                let result = [...products];
                if (activeCategory !== 'all') {
                    result = result.filter(p => p.category === activeCategory);
                }
                if (searchQuery.trim()) {
                    const q = searchQuery.toLowerCase();
                    result = result.filter(p =>
                        p.name.toLowerCase().includes(q) ||
                        p.brand.toLowerCase().includes(q) ||
                        p.category.toLowerCase().includes(q)
                    );
                }
                switch (activeSort) {
                    case 'price-asc':
                        result.sort((a, b) => a.price - b.price);
                        break;
                    case 'price-desc':
                        result.sort((a, b) => b.price - a.price);
                        break;
                    case 'name-asc':
                        result.sort((a, b) => a.name.localeCompare(b.name));
                        break;
                    case 'rating-desc':
                        result.sort((a, b) => b.rating - a.rating);
                        break;
                }
                return result;
            }

            /* ── RENDER PRODUCTS ────────────────────── */
            function renderProducts() {
                const filtered = getFilteredProducts();
                $grid.innerHTML = '';
                $noResults.style.display = filtered.length ? 'none' : 'block';

                filtered.forEach(p => {
                    const card = document.createElement('div');
                    card.className = 'product-card';
                    const isWishlisted = wishlist.includes(p.id);
                    card.innerHTML = `
                <div class="img-wrap" style="background-color:${p.color}20">
                  <span style="font-size:4rem">${p.emoji}</span>
                  <button class="wishlist-btn ${isWishlisted ? 'liked' : ''}" data-id="${p.id}" title="Wishlist">
                    ${isWishlisted ? '♥' : '♡'}
                  </button>
                  <button class="quick-add" data-id="${p.id}">+ Quick Add</button>
                </div>
                <div class="info">
                  <div class="brand">${p.brand}</div>
                  <div class="name">${p.name}</div>
                  <div class="row">
                    <span>
                      <span class="price">$${p.price.toFixed(0)}</span>
                      ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toFixed(0)}</span>` : ''}
                    </span>
                    <span class="rating">★ ${p.rating}</span>
                  </div>
                </div>`;
                    $grid.appendChild(card);
                });

                // Attach event listeners
                $grid.querySelectorAll('.quick-add').forEach(btn => {
                    btn.addEventListener('click', e => {
                        e.stopPropagation();
                        const id = parseInt(btn.dataset.id);
                        addToCart(id);
                    });
                });
                $grid.querySelectorAll('.wishlist-btn').forEach(btn => {
                    btn.addEventListener('click', e => {
                        e.stopPropagation();
                        const id = parseInt(btn.dataset.id);
                        toggleWishlist(id);
                    });
                });
            }

            /* ── ADD TO CART ────────────────────────── */
            function addToCart(productId) {
                const existing = cart.find(c => c.productId === productId);
                if (existing) {
                    existing.qty += 1;
                } else {
                    cart.push({ productId, qty: 1 });
                }
                saveCart();
                updateCartUI();
                const product = products.find(p => p.id === productId);
                toast(`${product.name} added to cart`);
            }

            function removeFromCart(productId) {
                cart = cart.filter(c => c.productId !== productId);
                saveCart();
                updateCartUI();
            }

            function updateCartQty(productId, delta) {
                const item = cart.find(c => c.productId === productId);
                if (!item) return;
                item.qty += delta;
                if (item.qty <= 0) {
                    removeFromCart(productId);
                    return;
                }
                saveCart();
                updateCartUI();
            }

            /* ── WISHLIST ───────────────────────────── */
            function toggleWishlist(productId) {
                const idx = wishlist.indexOf(productId);
                if (idx > -1) {
                    wishlist.splice(idx, 1);
                    toast('Removed from wishlist');
                } else {
                    wishlist.push(productId);
                    toast('Added to wishlist');
                }
                saveWishlist();
                renderProducts();
            }

            /* ── CART UI ────────────────────────────── */
            function updateCartUI() {
                const totalItems = cart.reduce((sum, c) => sum + c.qty, 0);
                $cartBadge.style.display = totalItems > 0 ? 'inline-block' : 'none';
                $cartBadge.textContent = totalItems;
                renderCartContents();
            }

            function renderCartContents() {
                if (cart.length === 0) {
                    $cartBody.innerHTML =
                        '<div class="cart-empty"><div class="empty-icon">🛒</div><p>Your cart is empty</p><p style="font-size:0.85rem">Start adding items to see them here.</p></div>';
                    $cartFooter.innerHTML =
                        '<div class="subtotal"><span>Subtotal</span><span>$0</span></div><button class="checkout-btn" disabled>Checkout</button>';
                    return;
                }

                let html = '';
                let subtotal = 0;
                cart.forEach(item => {
                    const p = products.find(pr => pr.id === item.productId);
                    if (!p) return;
                    const lineTotal = p.price * item.qty;
                    subtotal += lineTotal;
                    html += `
                <div class="cart-item">
                  <div class="item-img" style="background-color:${p.color}20">${p.emoji}</div>
                  <div class="item-details">
                    <div class="item-name">${p.name}</div>
                    <div class="item-price">$${lineTotal.toFixed(0)}</div>
                    <div class="qty-controls">
                      <button data-id="${p.id}" data-delta="-1">−</button>
                      <span>${item.qty}</span>
                      <button data-id="${p.id}" data-delta="1">+</button>
                    </div>
                  </div>
                  <button class="remove-btn" data-id="${p.id}" title="Remove">🗑</button>
                </div>`;
                });

                $cartBody.innerHTML = html;
                $cartFooter.innerHTML = `
              <div class="subtotal"><span>Subtotal</span><span>$${subtotal.toFixed(0)}</span></div>
              <p style="font-size:0.78rem;color:var(--text-muted);margin-bottom:12px">Shipping & taxes calculated at checkout</p>
              <button class="checkout-btn">Checkout — $${subtotal.toFixed(0)}</button>`;

                // Attach listeners
                $cartBody.querySelectorAll('.qty-controls button').forEach(btn => {
                    btn.addEventListener('click', () => {
                        const id = parseInt(btn.dataset.id);
                        const delta = parseInt(btn.dataset.delta);
                        updateCartQty(id, delta);
                    });
                });
                $cartBody.querySelectorAll('.remove-btn').forEach(btn => {
                    btn.addEventListener('click', () => {
                        const id = parseInt(btn.dataset.id);
                        removeFromCart(id);
                    });
                });
                $cartFooter.querySelector('.checkout-btn')?.addEventListener('click', () => {
                    toast('Checkout demo — order would be processed here.');
                });
            }

            /* ── DRAWER TOGGLE ──────────────────────── */
            function openCart() {
                $cartDrawer.classList.add('open');
                $overlay.classList.add('open');
                document.body.style.overflow = 'hidden';
            }

            function closeCart() {
                $cartDrawer.classList.remove('open');
                $overlay.classList.remove('open');
                document.body.style.overflow = '';
            }

            /* ── EVENT LISTENERS ────────────────────── */
            document.getElementById('cartToggle').addEventListener('click', openCart);
            document.getElementById('cartClose').addEventListener('click', closeCart);
            $overlay.addEventListener('click', closeCart);

            // Close drawer with Escape
            document.addEventListener('keydown', e => {
                if (e.key === 'Escape') closeCart();
            });

            // Filters
            document.getElementById('filtersBar').addEventListener('click', e => {
                const chip = e.target.closest('.filter-chip');
                if (!chip) return;
                document.querySelectorAll('.filter-chip').forEach(c => c.classList.remove(
                    'active'));
                chip.classList.add('active');
                activeCategory = chip.dataset.category;
                renderProducts();
            });

            // Sort
            $sortSelect.addEventListener('change', () => {
                activeSort = $sortSelect.value;
                renderProducts();
            });

            // Search with debounce
            let searchTimeout;
            $searchInput.addEventListener('input', () => {
                clearTimeout(searchTimeout);
                searchTimeout = setTimeout(() => {
                    searchQuery = $searchInput.value;
                    renderProducts();
                }, 200);
            });

            // Wishlist toggle button in header
            $wishlistToggle.addEventListener('click', () => {
                if (wishlist.length === 0) {
                    toast('Your wishlist is empty');
                    return;
                }
                activeCategory = 'all';
                searchQuery = '';
                $searchInput.value = '';
                document.querySelectorAll('.filter-chip').forEach(c => c.classList.remove('active'));
                document.querySelector('.filter-chip[data-category="all"]')?.classList.add('active');
                // Filter to show only wishlisted
                const wishlisted = products.filter(p => wishlist.includes(p.id));
                $grid.innerHTML = '';
                if (wishlisted.length === 0) {
                    $noResults.style.display = 'block';
                    $noResults.querySelector('p').textContent = 'Your wishlist is empty.';
                } else {
                    $noResults.style.display = 'none';
                    activeCategory = '__wishlist__';
                    renderWishlistProducts(wishlisted);
                }
                $wishlistToggle.textContent = '♥';
                setTimeout(() => { $wishlistToggle.textContent = '♡'; }, 1200);
            });

            function renderWishlistProducts(wishlisted) {
                $grid.innerHTML = '';
                wishlisted.forEach(p => {
                    const card = document.createElement('div');
                    card.className = 'product-card';
                    card.innerHTML = `
                <div class="img-wrap" style="background-color:${p.color}20">
                  <span style="font-size:4rem">${p.emoji}</span>
                  <button class="wishlist-btn liked" data-id="${p.id}">♥</button>
                  <button class="quick-add" data-id="${p.id}">+ Quick Add</button>
                </div>
                <div class="info">
                  <div class="brand">${p.brand}</div>
                  <div class="name">${p.name}</div>
                  <div class="row">
                    <span class="price">$${p.price.toFixed(0)}</span>
                    <span class="rating">★ ${p.rating}</span>
                  </div>
                </div>`;
                    $grid.appendChild(card);
                });
                $grid.querySelectorAll('.quick-add').forEach(btn => {
                    btn.addEventListener('click', e => {
                        e.stopPropagation();
                        addToCart(parseInt(btn.dataset.id));
                    });
                });
                $grid.querySelectorAll('.wishlist-btn').forEach(btn => {
                    btn.addEventListener('click', e => {
                        e.stopPropagation();
                        toggleWishlist(parseInt(btn.dataset.id));
                        // Re-render wishlist view
                        const updated = products.filter(p => wishlist.includes(p.id));
                        if (updated.length === 0) {
                            activeCategory = 'all';
                            renderProducts();
                            $noResults.style.display = 'none';
                        } else {
                            renderWishlistProducts(updated);
                        }
                    });
                });
            }

            /* ── INIT ────────────────────────────────── */
            renderProducts();
            updateCartUI();
        })();
    </script>
</body>
</html>
