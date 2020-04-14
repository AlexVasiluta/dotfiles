# ix command

ix() {
    local opts
    local OPTIND
    [ -f "$HOME/.netrc" ] && opts='-n'
    while getopts ":hd:i:n:" x; do
        case $x in
            h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
            i) opts="$opts -X PUT"; local id="$OPTARG";;
            n) opts="$opts -F read:1=$OPTARG";;
        esac
    done
	shift $(($OPTIND - 1))
	[ -t 0 ] && {
        local filename="$1"
		echo "Uploading $filename"
		shift
        [ "$filename" ] && {
           #  curl $opts -F f:1=@"$filename" $* ix.io/$id
			curl $opts -F f:1=@"$filename" $* "$IXURL"
#            curl $opts -F f:1=@"$filename" $* https://wiki.siluta.ro/
            return
        }
        echo "^C to cancel, ^D to send."
    }
	curl $opts -F f:1='<-' $* "$IXURL"
}


