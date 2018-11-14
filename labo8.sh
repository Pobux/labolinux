grep -e '@' textlab.txt -A1 | tr -d "\n" | sed "s/--/\n/g"

