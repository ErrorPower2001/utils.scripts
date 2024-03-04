# One line command
# $item = $($buckets = Get-ChildItem -Path C:\Users\pcx\scoop\buckets\; "$($buckets[$(Get-Random -Minimum 1 -Maximum $buckets.Length)])\bucket\" | Get-ChildItem); scoop info "$($item[$(Get-Random -Minimum 1 -Maximum $item.Length)].BaseName)"

# Script commands
#
# Get all buckets
$all_buckets = Get-ChildItem -Path "$HOME\scoop\buckets\"
# Get a random bucket
$bucket = "$( $all_buckets[ $( Get-Random -Minimum 1 -Maximum $all_buckets.Length ) ].FullName )"
# Get all items
$all_items = Get-ChildItem -Path "$bucket\bucket\"
# Get a random item
$item = "$( $all_items[ $( Get-Random -Minimum 1 -Maximum $all_items.Length ) ].BaseName )"
scoop info "$item"
