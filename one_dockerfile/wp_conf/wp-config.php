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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mochegri' );

/** MySQL database username */
define( 'DB_USER', 'demouser' );

/** MySQL database password */
define( 'DB_PASSWORD', '123456@' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost/mochegri' );

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
define('AUTH_KEY',         'I<685P|mS85+B.~7BL_.*2k*:X9X} jw)?RG#(U+(LbE4&9|0lfKr-qNT0p^%7F2');
define('SECURE_AUTH_KEY',  '3tBT+:e}z9=t[GVQIMNA&=p|whX5,x&;*2Sz{Jq:y,UO`+~9(dWL kY@CV0;[-tu');
define('LOGGED_IN_KEY',    '3D(:/YO3B0<G0*McsJ>XnP-c4NWD7?Mq:gQ;ZF?IdrO@=fAc7u7)x2oW=m:62n:S');
define('NONCE_KEY',        'AiA;IaWg._K){cPf7eX>jC=/WZRoIZU?lgQ0Kc2X6+2r9Fd!=W@J}+$aFI.eS|kG');
define('AUTH_SALT',        'a|/1i*?U%bM$hJ#i~>-O.N9!)<,x:;B}B|I^F!.F#LsgxkCk{XLzB_^L-b6BfYDS');
define('SECURE_AUTH_SALT', '&9CiALZ=|jg$rq%/aF+}wVr>a(NEon+3K1,F[XU%8a!7vt9Ec<P<<|i+qB~7DI|d');
define('LOGGED_IN_SALT',   'eP2RSrpH=x3j-59z,l<cw94ghPvVeXFOM].[v!=f-j|?[v}.{.CKVe{TJr|9P>iB');
define('NONCE_SALT',       'YTb=  m8? syvS.Ib&-~+5G!r_nDEa~5*t/#q$ avh}]mp64]ibcQ-#UaPJv/#:<');


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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );