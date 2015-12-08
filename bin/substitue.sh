if [ -z "$1" -o -z "$2" ]; then
    echo "Usage: substitue FROM_STRING TO_STRING [OPTION]..."
    echo
    echo "Replace all occurances of FROM_STRING (a sed-compatible regular"
    echo "expression) with TO_STRING in all files for which ack-grep matches"
    echo "FROM_STRING."
    echo
    echo "Any additional options are passed directly to ack-grep (e.g.,"
    echo " --type=html would only run the substitution on html files)." 
    return 1
fi
# Escape forward slashes for sed
FROM_STRING=${1/\//\\/}
TO_STRING=${2/\//\\/}
shift 2
ack-grep -l --print0 "$@" "$FROM_STRING" | xargs -0 -n 1 sed -i -e "s/$FROM_STRING/$TO_STRING/g"
