<?php

//
// Command line tool for installing mycncart
// Author: Vineet Naik <vineet.naik@kodeplay.com> <naikvin@gmail.com>
//
// (Currently tested on linux only)
//
// Usage:
//
//   cd install
//   php cli_install.php install --db_hostname localhost \
//                               --db_username root \
//                               --db_password pass \
//                               --db_database mycncart \
//                               --db_driver mysqli \
//                               --username admin \
//                               --password admin \
//                               --email youremail@example.com \
//                               --http_server http://localhost/mycncart
//

ini_set('display_errors', 1);
error_reporting(E_ALL);

// DIR
define('DIR_APPLICATION', str_replace('\\', '/', realpath(dirname(__FILE__))) . '/');
define('DIR_SYSTEM', str_replace('\\', '/', realpath(dirname(__FILE__) . '/../')) . '/system/');
define('DIR_MYCNCART', str_replace('\\', '/', realpath(DIR_APPLICATION . '../')) . '/');
define('DIR_DATABASE', DIR_SYSTEM . 'database/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/template/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_MODIFICATION', DIR_SYSTEM . 'modification/');

// Startup
require_once(DIR_SYSTEM . 'startup.php');

// Registry
$registry = new Registry();

// Loader
$loader = new Loader($registry);
$registry->set('load', $loader);


function handleError($errno, $errstr, $errfile, $errline, array $errcontext) {
	// error was suppressed with the @-operator
	if (0 === error_reporting()) {
		return false;
	}
	throw new ErrorException($errstr, 0, $errno, $errfile, $errline);
}

set_error_handler('handleError');


function usage() {
	echo "Usage:\n";
	echo "======\n";
	echo "\n";
	$options = implode(" ", array(
		'--db_hostname', 'localhost',
		'--db_username', 'root',
		'--db_password', 'pass',
		'--db_database', 'mycncart',
		'--db_driver', 'mysqli',
		'--username', 'admin',
		'--password', 'admin',
		'--email', 'youremail@example.com',
		'--http_server', 'http://localhost/mycncart'
	));
	echo 'php cli_install.php install ' . $options . "\n\n";
}


function get_options($argv) {
	$defaults = array(
		'db_hostname' => 'localhost',
		'db_database' => 'mycncart',
		'db_prefix' => 'mcc_',
		'db_driver' => 'mysqli',
		'username' => 'admin',
	);

	$options = array();
	$total = count($argv);
	for ($i=0; $i < $total; $i=$i+2) {
		$is_flag = preg_match('/^--(.*)$/', $argv[$i], $match);
		if (!$is_flag) {
			throw new Exception($argv[$i] . ' found in command line args instead of a valid option name starting with \'--\'');
		}
		$options[$match[1]] = $argv[$i+1];
	}
	return array_merge($defaults, $options);
}


function valid($options) {
	$required = array(
		'db_hostname',
		'db_username',
		'db_password',
		'db_database',
		'db_prefix',
		'username',
		'password',
		'email',
		'http_server',
	);
	$missing = array();
	foreach ($required as $r) {
		if (!array_key_exists($r, $options)) {
			$missing[] = $r;
		}
	}
	if (!preg_match('#/$#', $options['http_server'])) {
		$options['http_server'] = $options['http_server'] . '/';
	}
	$valid = count($missing) === 0;
	return array($valid, $missing);
}


function install($options) {
	$check = check_requirements();
	if ($check[0]) {
		setup_db($options);
		write_config_files($options);
		dir_permissions();
	} else {
		echo 'FAILED! Pre-installation check failed: ' . $check[1] . "\n\n";
		exit(1);
	}
}


function check_requirements() {
	$error = null;
	if (phpversion() < '5.0') {
		$error = '警告: 需要至少PHP5.3 版本！';
	}

	if (!ini_get('file_uploads')) {
		$error = '警告: 需要服务器允许文件上传(file_uploads)！';
	}

	if (ini_get('session.auto_start')) {
		$error = '警告: MyCnCart 在 session.auto_start 启用状态下无法工作， 请联系服务器方面解决！';
	}

	if (!extension_loaded('mysqli')) {
		$error = '警告: 需要启用 MySQLi 扩展， 请联系服务器方面解决！';
	}

	if (!extension_loaded('gd')) {
		$error = '警告: 需要启用 GD 扩展， 请联系服务器方面解决！';
	}

	if (!extension_loaded('curl')) {
		$error = '警告: 需要启用 CURL 扩展， 请联系服务器方面解决！';
	}

	if (!function_exists('mcrypt_encrypt')) {
		$error = '警告: 需要启用 mCrypt 扩展， 请联系服务器方面解决！';
	}

	if (!extension_loaded('zlib')) {
		$error = '警告: 需要启用 ZLIB 扩展， 请联系服务器方面解决！';
	}

	return array($error === null, $error);
}


function setup_db($dbdata) {
	global $loader, $registry;
	$loader->model('install');
	$model = $registry->get('model_install');
	$model->database($dbdata);
}


function write_config_files($options) {
	$output  = '<?php' . "\n";
	$output .= '// HTTP' . "\n";
	$output .= 'define(\'HTTP_SERVER\', \'' . $options['http_server'] . '\');' . "\n";
	$output .= 'define(\'HTTP_IMAGE\', \'' . $options['http_server'] . 'image/\');' . "\n";
	$output .= 'define(\'HTTP_ADMIN\', \'' . $options['http_server'] . 'admin/\');' . "\n\n";

	$output .= '// HTTPS' . "\n";
	$output .= 'define(\'HTTPS_SERVER\', \'' . $options['http_server'] . '\');' . "\n";
	$output .= 'define(\'HTTPS_IMAGE\', \'' . $options['http_server'] . 'image/\');' . "\n\n";

	$output .= '// DIR' . "\n";
	$output .= 'define(\'DIR_APPLICATION\', \'' . DIR_MYCNCART . 'catalog/\');' . "\n";
	$output .= 'define(\'DIR_SYSTEM\', \'' . DIR_MYCNCART . 'system/\');' . "\n";
	$output .= 'define(\'DIR_DATABASE\', \'' . DIR_MYCNCART . 'system/database/\');' . "\n";
	$output .= 'define(\'DIR_LANGUAGE\', \'' . DIR_MYCNCART . 'catalog/language/\');' . "\n";
	$output .= 'define(\'DIR_TEMPLATE\', \'' . DIR_MYCNCART . 'catalog/view/theme/\');' . "\n";
	$output .= 'define(\'DIR_CONFIG\', \'' . DIR_MYCNCART . 'system/config/\');' . "\n";
	$output .= 'define(\'DIR_IMAGE\', \'' . DIR_MYCNCART . 'image/\');' . "\n";
	$output .= 'define(\'DIR_CACHE\', \'' . DIR_MYCNCART . 'system/cache/\');' . "\n";
	$output .= 'define(\'DIR_DOWNLOAD\', \'' . DIR_MYCNCART . 'system/download/\');' . "\n";
	$output .= 'define(\'DIR_UPLOAD\', \'' . DIR_MYCNCART . 'system/upload/\');' . "\n";
	$output .= 'define(\'DIR_MODIFICATION\', \'' . DIR_MYCNCART . 'system/modification/\');' . "\n";
	$output .= 'define(\'DIR_LOGS\', \'' . DIR_MYCNCART . 'system/logs/\');' . "\n\n";

	$output .= '// DB' . "\n";
	$output .= 'define(\'DB_DRIVER\', \'' . addslashes($options['db_driver']) . '\');' . "\n";
	$output .= 'define(\'DB_HOSTNAME\', \'' . addslashes($options['db_hostname']) . '\');' . "\n";
	$output .= 'define(\'DB_USERNAME\', \'' . addslashes($options['db_username']) . '\');' . "\n";
	$output .= 'define(\'DB_PASSWORD\', \'' . addslashes($options['db_password']) . '\');' . "\n";
	$output .= 'define(\'DB_DATABASE\', \'' . addslashes($options['db_database']) . '\');' . "\n";
	$output .= 'define(\'DB_PREFIX\', \'' . addslashes($options['db_prefix']) . '\');' . "\n";
	$output .= '?>';

	$file = fopen(DIR_MYCNCART . 'config.php', 'w');

	fwrite($file, $output);

	fclose($file);

	$output  = '<?php' . "\n";
	$output .= '// HTTP' . "\n";
	$output .= 'define(\'HTTP_SERVER\', \'' . $options['http_server'] . 'admin/\');' . "\n";
	$output .= 'define(\'HTTP_CATALOG\', \'' . $options['http_server'] . '\');' . "\n";
	$output .= 'define(\'HTTP_IMAGE\', \'' . $options['http_server'] . 'image/\');' . "\n\n";

	$output .= '// HTTPS' . "\n";
	$output .= 'define(\'HTTPS_SERVER\', \'' . $options['http_server'] . 'admin/\');' . "\n";
	$output .= 'define(\'HTTPS_CATALOG\', \'' . $options['http_server'] . '\');' . "\n";
	$output .= 'define(\'HTTPS_IMAGE\', \'' . $options['http_server'] . 'image/\');' . "\n\n";

	$output .= '// DIR' . "\n";
	$output .= 'define(\'DIR_APPLICATION\', \'' . DIR_MYCNCART . 'admin/\');' . "\n";
	$output .= 'define(\'DIR_SYSTEM\', \'' . DIR_MYCNCART . 'system/\');' . "\n";
	$output .= 'define(\'DIR_DATABASE\', \'' . DIR_MYCNCART . 'system/database/\');' . "\n";
	$output .= 'define(\'DIR_LANGUAGE\', \'' . DIR_MYCNCART . 'admin/language/\');' . "\n";
	$output .= 'define(\'DIR_TEMPLATE\', \'' . DIR_MYCNCART . 'admin/view/template/\');' . "\n";
	$output .= 'define(\'DIR_CONFIG\', \'' . DIR_MYCNCART . 'system/config/\');' . "\n";
	$output .= 'define(\'DIR_IMAGE\', \'' . DIR_MYCNCART . 'image/\');' . "\n";
	$output .= 'define(\'DIR_CACHE\', \'' . DIR_MYCNCART . 'system/cache/\');' . "\n";
	$output .= 'define(\'DIR_DOWNLOAD\', \'' . DIR_MYCNCART . 'system/download/\');' . "\n";
	$output .= 'define(\'DIR_UPLOAD\', \'' . DIR_MYCNCART . 'system/upload/\');' . "\n";
	$output .= 'define(\'DIR_LOGS\', \'' . DIR_MYCNCART . 'system/logs/\');' . "\n";
	$output .= 'define(\'DIR_MODIFICATION\', \'' . DIR_MYCNCART . 'system/modification/\');' . "\n";
	$output .= 'define(\'DIR_CATALOG\', \'' . DIR_MYCNCART . 'catalog/\');' . "\n\n";

	$output .= '// DB' . "\n";
	$output .= 'define(\'DB_DRIVER\', \'' . addslashes($options['db_driver']) . '\');' . "\n";
	$output .= 'define(\'DB_HOSTNAME\', \'' . addslashes($options['db_hostname']) . '\');' . "\n";
	$output .= 'define(\'DB_USERNAME\', \'' . addslashes($options['db_username']) . '\');' . "\n";
	$output .= 'define(\'DB_PASSWORD\', \'' . addslashes($options['db_password']) . '\');' . "\n";
	$output .= 'define(\'DB_DATABASE\', \'' . addslashes($options['db_database']) . '\');' . "\n";
	$output .= 'define(\'DB_PREFIX\', \'' . addslashes($options['db_prefix']) . '\');' . "\n";
	$output .= '?>';

	$file = fopen(DIR_MYCNCART . 'admin/config.php', 'w');

	fwrite($file, $output);

	fclose($file);
}


function dir_permissions() {
	$dirs = array(
		DIR_MYCNCART . 'image/',
		DIR_MYCNCART . 'system/download/',
		DIR_SYSTEM . 'cache/',
		DIR_SYSTEM . 'logs/',
	);
	exec('chmod o+w -R ' . implode(' ', $dirs));
}


$argv = $_SERVER['argv'];
$script = array_shift($argv);
$subcommand = array_shift($argv);


switch ($subcommand) {

case "install":
	try {
		$options = get_options($argv);
		define('HTTP_MYCNCART', $options['http_server']);
		$valid = valid($options);
		if (!$valid[0]) {
			echo "失败! 以下输入项填写无效： ";
			echo implode(', ', $valid[1]) . "\n\n";
			exit(1);
		}
		install($options);
		echo "成功! MyCnCart 成功安装于您的服务器\n";
		echo "网站前台页面链接: " . $options['http_server'] . "\n";
		echo "网站后台管理链接: " . $options['http_server'] . "admin/\n\n";
	} catch (ErrorException $e) {
		echo '失败!: ' . $e->getMessage() . "\n";
		exit(1);
	}
	break;
case "usage":
default:
	echo usage();
}
