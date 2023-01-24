#!/usr/bin/env sh

# urlify_string.sh
# A POSIX shell compatible function to convert a string to be usable in a url.
# Copyright (c) 2023 Justin Teague
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# 
##############################################################################

# shellcheck disable=SC1001,SC2086
urlify_string() {
    _string="$1"

    # Disable globbing to make the word-splitting below safe.
    set -f

    # Store the current value of 'IFS' so we
    # can restore it later.
    old_ifs=$IFS

    ###########################################################
    # %
    ###########################################################
    # Settting '%' to be first to convert, so that it doesn't
    # get confused by the following conversions.

    _urlify=""
    IFS=\%
    set -- $_string
    while [ "$#" -gt 1 ]; do  # >1 to print the last character
        _urlify="${_urlify}$(printf '%s%%25' "$1")"
        shift
    done
    _string="${_urlify}${1}"

    ###########################################################
    # space
    ###########################################################
    _urlify=""
    IFS=' '
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
    IFS=\#
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

    # Restore the original value of IFS
    IFS=$old_ifs

    # Re-enable globbing. 
    set +f # 

    # Return the modified string.
    printf '%s\n' "$_string"
}
