<?php
require('include.inc.php');
session_destroy();
unset($_SESSION['username']);
$logged = false;
header('Location: index.php');