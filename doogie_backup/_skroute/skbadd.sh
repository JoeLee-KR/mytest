#
# SKB Office Net: Static Route Add
#
SKBGW="10.240.74.1"

#
# get Proxy IP list:
#  curl http://12.4.11.218/skb.pac
#

while read line; do 
  check=${line:0:1}
  # echo $check

  if [[ $check != "#" ]] && [[ -n $check ]]; then
    #echo $line
    sudo route add -net $line $SKBGW
  fi
done < skroutelist
