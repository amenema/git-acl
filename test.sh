#!/bin/sh
str=$(git log  --oneline --decorate -1)
echo ${str}
str=${str##*->}
str=${str%%)*}
current=${str%%,*}
father=${str##*,}
fatherHash=$(git log --pretty=format:"%P" -1)
currentHash=$(git log --pretty=format:"%T" -1)
commiter=$(git log --pretty=format:"%cn" -1)
echo ${str}
echo 'father: ' ${father}
echo 'current: ' ${current}
echo 'fatherHash' ${fatherHash}
echo 'currentHash' ${currentHash}
echo 'commiter' ${commiter}
