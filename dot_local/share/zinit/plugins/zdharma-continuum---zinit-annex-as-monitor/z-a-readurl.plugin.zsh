# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

# Copyright (c) 2019-2020 Sebastian Gniazdowski
# License MIT

# According to the Zsh Plugin Standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload -Uz za-readurl-preinit-handler

# An empty stub to fill the help handler fields
→za-readurl-help-null-handler() { :; }

@zinit-register-annex "zinit-annex-readurl" \
    hook:preinit-10 \
    za-readurl-preinit-handler \
    →za-readurl-help-null-handler \
    "dlink''|.readurl''" # The ice conflict with dl'' from zinit-annex-patch-dl is being handled
                       # in the other annex

# vim:ft=zsh:tw=80:sw=4:sts=4:et
