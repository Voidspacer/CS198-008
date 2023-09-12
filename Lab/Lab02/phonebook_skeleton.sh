#!/bin/bash

PHONEBOOK_ENTRIES="bash_phonebook_entries"


if [ "$#" -lt 1 ]; then
    exit 1

elif [ "$1" = "new" ]; then
    # YOUR CODE HERE #
    add_entry $2 $3

elif [ "$1" = "list" ]; then
    if [ ! -e $PHONEBOOK_ENTRIES ] || [ ! -s $PHONEBOOK_ENTRIES ]; then
        echo "phonebook is empty"
    else
        # YOUR CODE HERE #
        list_entries
    fi

elif [ "$1" = "lookup" ]; then
    # YOUR CODE HERE #
    list_entries $2

elif [ "$1" = "remove" ]; then
    # YOUR CODE HERE #
    remove_entry $2

elif [ "$1" = "clear" ]; then
    # YOUR CODE HERE #
    remove_all_entries

else
     # YOUR CODE HERE #
    echo "Invalid command"
fi
