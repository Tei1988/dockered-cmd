#!/bin/sh -e

user_option() {
    case $(uname) in
        Darwin)
            printf '%s' ''
        ;;
        Linux)
            case $1 in
                docker)
                    printf '%s' "-u $(id -u):$(grep docker < /etc/group | cut -d : -f 3)"
                ;;
                *)
                    printf '%s' "-u $(id -u):$(id -g)"
            esac
        ;;
        *)
            return 255
    esac
}
