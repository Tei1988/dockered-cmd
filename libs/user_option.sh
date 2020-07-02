suser_option() {
    case $(uname) in
        Darwin)
            USER_OPTION=""
        ;;
        Linux)
            USER_OPTION="-u $(id -u):$(cat /etc/group | grep docker | awk -F ':' '{print \$3}')"
        ;;
        *)
            echo "Unsupported OS."
    esac
}
