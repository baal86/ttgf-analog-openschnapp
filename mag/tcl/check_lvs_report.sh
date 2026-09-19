report="$1"

propOk=1
match=0
port=1

if grep -q "match uniquely" "$report"; then
    match=1
fi

if grep -q "Property errors were found" "$report"; then
    propOk=0
fi

if grep -q "failed pin matching" "$report"; then
    match=0
fi

if grep -q "Final result: Netlists do not match" "$report"; then
    match=0
fi

if grep -q "port errors" "$report"; then
    port=0
fi

if grep -q "Final result: Circuits match uniquely\." "$report"; then
    match=1
fi

if [ "$match" -eq 1 ] && [ "$propOk" -eq 1 ] && [ "$port" -eq 1 ]; then
    echo "LVS OK"
    exit 0
else
    echo "LVS FAIL: match=$match properties=$propOk port=$port"
    exit 1
fi