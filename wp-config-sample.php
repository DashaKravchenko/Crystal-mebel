<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'crystalmebel' );

/** MySQL database username */
define( 'DB_USER', 'crystalmebel' );

/** MySQL database password */
define( 'DB_PASSWORD', 'qazmlp23061991' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'rf@~x/#0^#vXL$7N?U|+%|O`L6r+:8yUEX]Z;h%BT<3gUt,#FBlk)NV:F[-R)IGR');
define('SECURE_AUTH_KEY',  '5=, K90 Am-*Mce-tvZ*vkOV-41r2*iF@1&%2m-[X#:$~bDF7<?ds.m#4$C`D-|-');
define('LOGGED_IN_KEY',    'SSc8?S<90+U1q]D492I,4%Xi/,7N/pF&FrH=@17[Q{-|!.&gq7NkP6ey<A-,3|li');
define('NONCE_KEY',        'Tj#cU,Ew:#*&riv%rc$[7i4B%a5]3vL-?k[+3-wTdsUR+8#Oo92NNDD$|.V]J`Mp');
define('AUTH_SALT',        'I|<{GH|jI94#y2^:h,,|=v0t~19S:W~](*3bD?[hCVxCw)Nx) r:V|;?KF4@2u[o');
define('SECURE_AUTH_SALT', 'fS{/P/-#0l=~>hm-{ {(R|R~a8My+:wQ4;nm06f45&^/#%^F]FPo{K$C/P{bU&FD');
define('LOGGED_IN_SALT',   '}W8!d_2SGNXc2+?f;fXaDy/ :9Af-`gwbB;v.-io|pSFG:TXYlqVpvb,*Gr2oS$p');
define('NONCE_SALT',       'kiX#*bBjhXMNPKVuWSZFG|WU;[3/x9di=UU]sHnv+^h#6oe.Awz<D*Y~Cq)n:@MR');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
