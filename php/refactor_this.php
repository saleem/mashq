<?php
$files = scandir('./');         // scan current directory
foreach($files as $file) {
  if(endsWith($file, ".php")) { // find php files, one at a time
      unlink($file);            // "refactor" the file
  }    
}
function endsWith($fileName, $ext) {
    return substr($fileName, -strlen($ext))===$ext;
}
?>