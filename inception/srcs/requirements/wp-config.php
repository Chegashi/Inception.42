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
define( 'DB_NAME', 'mochegri' );

/** MySQL database username */
define( 'DB_USER', 'demouser' );

/** MySQL database password */
define( 'DB_PASSWORD', 'database_password' );

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
define('AUTH_KEY',         'l*!Csm(8HFhyQ<?d!TW6 PWs>`puEjt9a%1Kb}_:8FT,xFu=Mm)!C:ps)9quIQN.');
define('SECURE_AUTH_KEY',  'azk,P+@E.C6U);}SMv*1Ji_)Cn-5,|<-)qXqN>n9H+i;N*n_jqj%iL~w#)lha3w6');
define('LOGGED_IN_KEY',    '}bh!dFs)N(%W||V|y{9p/r05.fesV#]t1G5%:,Tm.J3&+pmL@8xx*c&:#zut6Y-k');
define('NONCE_KEY',        'QCa3g|@w?}KY;hG%jj~{o3GPQZr-XR|>rbIT_ww8aV+eX=JUKe|KKS2f$j=CyEW=');
define('AUTH_SALT',        'F.kOUP #V4#Cp5p8)g,,Kn5j(ES4T++eZ}qHEk>o-#4g)tIN:&!km8T&zggLsJK}');
define('SECURE_AUTH_SALT', ')h>LpO2H,8e}|(vC.w9d6 a+*M2+Qeqs:MZ113 n,eQL;FXr,J^HSGC& ;v)Cb<}');
define('LOGGED_IN_SALT',   'A_ZhZ(6Tqj`GO?B-[2n<_{QN2 h&0k]noIBbY!OB+g/-w%+GKu6^E1! k8}n*m{m');
define('NONCE_SALT',       'G5!(9E?-1?0AC;Cr1J!.gt^-Z8R^W91RiL[*}}W/#=#t|@ejjfgg20rc^]:-[G{U');
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
