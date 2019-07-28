#/bin/bash

if [ $# != 1 ]; then
    echo "usage: $0 <# of cpu threads>"
    echo run \`killall yes\` to stop.
    exit 1
fi

for i in `seq 1 $1`
do
    yes > /dev/null & 
done
