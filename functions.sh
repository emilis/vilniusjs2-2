BOLD='\033[1;29m'
RESET='\033[00m'


printline() {

    if [ -z "$1" -a -z "$2" ];
    then
        w=$(tput cols);
        c="-";
    elif [ -z "$2" ];
    then
        w=$(tput cols);
        c="$1";
    else
        w="$1";
        c="$2";
    fi

    printf "%${w}s" | tr " " "$c"
}

center() {

    title="$1"
    let width=(${#title}+$(tput cols))/2
    printf "%${width}s\n" "$title"
}

title() {
    title="$1"
    let bwidth=($(tput cols)-${#title}-4)/2
    title="[ $BOLD$1$RESET ]";
    echo -e "$(printline $bwidth '=')$title$(printline $bwidth '=')";

}

hr() {
    
    echo `printline`
    #printf "%$(tput cols)s\n" | tr " " "-"
}

slide() {

    read -p ""

    if [ -z "$1" ];
    then    hr;
    else    title "$1";
    fi
    echo
}

prompt() {

    echo -ne "$BOLD\$ $1$RESET"
    read -p ""
}

runcmd() {

    hr
    prompt "$1"
    echo -E $($1)
}

runsh() {

    hr
    prompt  "$1"
    bash -c "$1"
    read -p ""
}

demo() {

    runsh   "cat $1"
    runsh   "./$@"
}

point() {
    echo -e "$BOLD* $1$RESET"
    read -p ""
}

diff() {
    runsh "git diff $1 $2"
}

view() {
    runsh "view $1"
}
