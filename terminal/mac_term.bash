#!/bin/bash

function title() {
    title_string=$1
    echo -n -e "\033]0;$title_string\007"
}
