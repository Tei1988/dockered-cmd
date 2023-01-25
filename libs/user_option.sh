#!/bin/sh -e

arch_option() {
    case $(arch) in
        arm64)
            printf '%s' '--platform=linux/amd64'
        ;;
        *)
        ;;
    esac
}

user_option() {
    case $1 in
        docker)
            printf '%s' "-u $(id -u):$(grep docker < /etc/group | cut -d : -f 3)"
        ;;
        *)
            printf '%s' "-u $(id -u):$(id -g)"
    esac
}

tty_option() {
    if tty -s; then
        echo '-t'
    fi 
}

