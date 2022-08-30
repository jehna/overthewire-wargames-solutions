#!/bin/sh
PASSWORD="bandit0"
LEVELS=$(ls level*.sh | sed -e "s/^level//" -e "s/.sh//" | sort --human-numeric-sort)
for LEVEL in $LEVELS; do
    echo "$PASSWORD" | pbcopy
    echo "Level $LEVEL password is '$PASSWORD' and it's copied to your clipboard"
    echo "SSH'ing to the server, paste the password when prompted..."
    PASSWORD=$(echo "PASSWORD=\"$PASSWORD\"" | cat - level"$LEVEL".sh | ssh "ssh://bandit$LEVEL@bandit.labs.overthewire.org:2220" -q | tail -n1)
done

echo "Final password is '$PASSWORD', and it's copied to your clipboard"
echo "$PASSWORD" | pbcopy
ssh "ssh://bandit$((LEVEL+1))@bandit.labs.overthewire.org:2220"
