# list the directory structure
function tree {
    find ${1:-.} -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"
}
