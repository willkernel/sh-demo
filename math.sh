a=5
b=100
c=$(expr $b / $a)
d=$[$b/$a]
echo "c: $c"
echo "d: $d"
e=$(echo "scale=4;$a / 3"| bc)
echo "e: $e"

f=$(bc << EOF
scale=4
a1=($a * $b)
a1 / 3
EOF
)
echo "f: $f"
exit 100
