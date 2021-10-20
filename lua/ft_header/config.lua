local M = {}

local styles = {
        c = {
            start = "/*", s_end = "*/", fill = "*"
        },
        html = {
            start = "<!--", s_end = "-->", fill = "*"
        },
        js = {
            start = "//", s_end = "//", fill = "*"
        },
        text = {
            start = "%", s_end = "%", fill = "*"
        },
        ml = {
            start = "%", s_end = "%", fill = "*"
        },
        vim = {
            start = "\"", s_end = "\"", fill = "*"
        },
        el = {
            start = ";", s_end = ";", fill = "*"
        },
        lua = {
            start = "--", s_end = "-", fill = "-"
        }
    }

return {
    margin = 5,
    width = 80,
    styles = styles,

    lang_styles = {
        c       = styles.c,
        cpp     = styles.c,
        h       = styles.c,
        hh      = styles.c,
        cc      = styles.c,
        hpp     = styles.c,

        html    = styles.html,
        htm     = styles.html,
        xml     = styles.html,

        js      = styles.js,

        tex     = styles.tex,

        ml      = styles.html,
        mli     = styles.html,
        mll     = styles.html,
        mly     = styles.html,

        vim     = styles.vim,
        el      = styles.el,
        lua     = styles.lua,
    },

    ft_ascii_art = {
        "        :::      ::::::::",
        "      :+:      :+:    :+:",
        "    +:+ +:+         +:+  ",
        "  +#+  +:+       +#+     ",
        "+#+#+#+#+#+   +#+        ",
        "     #+#    #+#          ",
        "    ###   ########.fr    ",
    }
}
