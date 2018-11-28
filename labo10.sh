#Prendre un seul argument
arg=$1
printed=false

if [ "$#" -ne 1 ]; then
  echo "Un seul argument" >&2
  exit 1
fi

found=$(echo $arg | grep "^-[0-9]")
if ! [[ -z $found ]]; then
    echo "fail"
fi
#if  [ $i -lt 0 ]; then
#    echo "Entier positif svp" >&2
#    exit 1
#fi

#whilevar=true
#count
#while $whiletrue; do
    #faire des choses jusqu'à
    #if
    #count=$(($count + 1))
    # whilevar=false
    #end
#done

for i in `seq 1 $arg`; do
    if [ $(( $i % 3 )) -eq 0 ]; then
      echo "bar"
      printed=true
    fi

    if [ $(( $i % 4 )) -eq 0 ]; then
      echo "foo"
      printed=true
    fi

    if [ $(( $i % 12 )) -eq 0 ]; then
      echo "foobar"
      printed=true
    fi

    if ! [ -z $printed ]; then
      echo $i
    fi
done
#Afficher l'argument
  #Si nombre 3 -> bar
  #Si nombre 4 -> foo
  #Si nombre 12 -> foobar

