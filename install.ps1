function link_to_home {
  process {
    if (-not (test-path $_)) {
      return
    }
    
    $link = join-path (convert-path ~/) (split-path $_ -leaf)
    $target = resolve-path $_

    # Delete existing link
    del $link -recurse -force -errorAction silentlyContinue
    
    
    # Create a hard link for file
    if (test-path $_ -pathType leaf) {
      cmd.exe /c mklink /h $link $target
    }
    
    # Create a junction point for directory
    if (test-path $_ -pathType container) {
      cmd.exe /c mklink /j $link $target
    }
  }
}

dir -exclude install.*,readme.* | link_to_home
