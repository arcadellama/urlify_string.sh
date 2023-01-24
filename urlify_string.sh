#!/usr/bin/env sh

# POSIX shell compatible function to convert a string to be usable in a url.

# shellcheck disable=SC1001,SC2086
urlify_string() {
    _string="$1"
    set -f
    old_ifs=$IFS


    ###########################################################
    # space
    ###########################################################
    _urlify=""
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%20' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # "#"
    ###########################################################
    _urlify=""
    IFS=\'
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%23' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # $
    ###########################################################
    _urlify=""
    IFS=\$
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%24' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # %
    ###########################################################
    _urlify=""
    IFS=\%
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%25' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # &
    ###########################################################
    _urlify=""
    IFS=\&
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%26' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # @
    ###########################################################
    _urlify=""
    IFS=\@
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%40' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # `
    ###########################################################
    _urlify=""
    IFS=\`
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%60' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # /
    ###########################################################
    _urlify=""
    IFS=\/
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%2F' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # :
    ###########################################################
    _urlify=""
    IFS=\:
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%3A' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # ;
    ###########################################################
    _urlify=""
    IFS=\;
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%3B' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # <
    ###########################################################
    _urlify=""
    IFS=\<
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%3C' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # =
    ###########################################################
    _urlify=""
    IFS=\=
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%3D' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # >
    ###########################################################
    _urlify=""
    IFS=\>
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%3E' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # ?
    ###########################################################
    _urlify=""
    IFS=\?
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%3F' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # [
    ###########################################################
    _urlify=""
    IFS=\[
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%5B' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # \
    ###########################################################
    _urlify=""
    IFS=\\
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%5C' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # ]
    ###########################################################
    _urlify=""
    IFS=\]
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%5D' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # ^
    ###########################################################
    _urlify=""
    IFS=\^
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%5E' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # {
    ###########################################################
    _urlify=""
    IFS=\{
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%7B' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # |
    ###########################################################
    _urlify=""
    IFS=\|
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%7C' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # }
    ###########################################################
    _urlify=""
    IFS=\}
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%7D' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # ~
    ###########################################################
    _urlify=""
    IFS=\~
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%7E' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # "
    ###########################################################
    _urlify=""
    IFS=\"
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%22' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # '
    ###########################################################
    _urlify=""
    IFS=\'
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%27' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # +
    ###########################################################
    _urlify=""
    IFS=\+
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%2B' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # ,
    ###########################################################
    _urlify=""
    IFS=\,
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%2C' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    ###########################################################

    # cleanup
    IFS=$old_ifs
    set +f

    # return the string
    printf '%s\n' "$_string"
}
