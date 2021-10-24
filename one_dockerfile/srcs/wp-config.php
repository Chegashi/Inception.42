<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
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
define( 'DB_NAME', 'mochegri' );

/** MySQL database username */
define( 'DB_USER', 'mochgeri_u' );

/** MySQL database password */
define( 'DB_PASSWORD', 'database_password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'm:&MI&^_]r.v}[M+-up5Z+KjaqvO@U _yp%,G+a0jmp>p]d!:H_m$9l@|:Oh+1Q' );
define( 'SECURE_AUTH_KEY',  'b8Qz,=lL@6>gZDP|L2kAW!T>N1F!3}6yx2;x39$:w5RIm=NeJUKe?YEfMj:|IxC.' );
define( 'LOGGED_IN_KEY',    '{UX?yhnE]:pg-)fWQQ>^!+ >J}#7;J]8lTX4B-v,o{@hT[6A~bUq<I?-F%I{TbLm' );
define( 'NONCE_KEY',        '$4v ~.j-8ByDK;d@kd9boE}_`qrPN D|g ,uZ|@=z+F2;c`rcr;xz7aAuc-cHk.^' );
define( 'AUTH_SALT',        'diM-|/?-%D+X6zxFfW+|*Ln;@+-byn:Z-stz<|0,a3^ecA&w+SX`Cm|}ae@k|-~k' );
define( 'SECURE_AUTH_SALT', ';-v,aOnn}fu.fqxC,.#?wBe|@H.:o*#w[c}ggCNX|W(;0ivW3;IOsK]=v~t)m{**' );
define( 'LOGGED_IN_SALT',   'QmEBV3K`>E0e1?>a!DeT7-&@2*!n,fTBlqpI%2}<V*[Ko|;flK~~{nfzvv$pD?I5' );
define( 'NONCE_SALT',       'G!9{.c,Y?x:Tbb1)@E-#<Q?GX-UZ_D|%BkP>oq1|>w(/?5,S;DIg9,m`yTWT5N-{' );

/**#@-*/

/**
 * WordPress database table prefix.
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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
