#!/bin/bash

PHONEBOOK_ENTRIES="bash_phonebook_entries"


if [ "$#" -lt 1 ]; then
    exit 1

elif [ "$1" = "new" ]; then
    # YOUR CODE HERE #
    echo "$2 $3" >> $PHONEBOOK_ENTRIES

elif [ "$1" = "list" ]; then
    if [ ! -e $PHONEBOOK_ENTRIES ] || [ ! -s $PHONEBOOK_ENTRIES ]; then
        echo "phonebook is empty"
    else
        # YOUR CODE HERE #
        cat $PHONEBOOK_ENTRIES
    fi

elif [ "$1" = "lookup" ]; then
    # YOUR CODE HERE #
    grep -i "$2" $PHONEBOOK_ENTRIES

elif [ "$1" = "remove" ]; then
    # YOUR CODE HERE #
    grep -v "$2" $PHONEBOOK_ENTRIES > temp

elif [ "$1" = "clear" ]; then
    # YOUR CODE HERE #
    rm $PHONEBOOK_ENTRIES

else
     # YOUR CODE HERE #
    echo "Invalid command"
fi
