<?php
require_once('include.inc.php');
redirectifnotadmin();
if (!$logged || empty($vars['repo'])) {
  redirect('/');
} else {
  $repo = $vars['repo'];
}
$res = gitrepoinfo('delete', $repo);
redirect('repo-list');
