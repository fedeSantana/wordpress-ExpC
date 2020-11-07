<?php




/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'wordpress');

/** MySQL database password */
define('DB_PASSWORD', 'wordpress');

/** MySQL hostname */
define('DB_HOST', 'mysql:3306');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '};O9WZsUZYoh_Es?ODsfX>,uYSKr kkAod-@LUxf7viH.8oXbc0l(;|=Qz??3DRn');
define('SECURE_AUTH_KEY',  '@4go). &+n^SAQG9Y;C9:T<<jTi,?ms58*i+:+Qj`w,bCyq4n&J-DV Z[<H)i0.0');
define('LOGGED_IN_KEY',    'tRcd}a-0vE^{lC2}-u|XR!WKv|Q1I^0iP4 IA~yoq/ewo3Jwz5EFfJH|pv.u[{bv');
define('NONCE_KEY',        'G+=8W k@v+YFp]Ny2M@IcI-P_o=Q2lK%KObzB+n8[|zLT=ekh]Q=}4/g?^|wRQ8r');
define('AUTH_SALT',        'f+`LJixpe}W+cv~=K .H+Uo3z%#|5Thr_kfk(NFH@308d)[=REm|lv;9rP<3TyP|');
define('SECURE_AUTH_SALT', ',8@1b!.TE+_)|dIC>>Wq6-}~*xc@px$dC)~l>r0YxTH3<#-G$3KT-,;izF5+Xaes');
define('LOGGED_IN_SALT',   'Kc%*u~8fSB#cPg,n1EuvE?++-9a:BtZ H-X~~Cd.*4 g2cif-aHKsK}M?JegD6X:');
define('NONCE_SALT',       '8Rb<Pvluk]2.>:&jQj`dAp9Y;_)j&<5@O3, ;,<^o}|k!2kk89oJj7V}6%~LNL)a');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);
define('CONCATENATE_SCRIPTS', false);
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
