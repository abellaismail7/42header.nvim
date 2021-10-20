local M = {}
local util = require("ft_header.util")
local def_config = require("ft_header.config")

local function ft_create_header(ops)
    local comps = require("ft_header.components")

    local user = util.get_user()
    comps.ft_box(ops)
    comps.ft_logo()
    comps.ft_filename()
    comps.ft_user(user)
    comps.ft_date(user.name)
end

function M.Ftheader()
    local ext = vim.fn.expand("%:e")
    local ops = def_config.lang_styles[ext]
    ft_create_header(ops)
end

function M.Ftupdate()
    local comps = require("ft_header.components")
    local ext = vim.fn.expand("%:e")
    local ops = def_config.lang_styles[ext]
    local user = util.get_user()
    comps.ft_update(ops, user.name)
end

function M.setup(config)
    if type(config) ~= table
    then
        util.show_error("setup function requires table")
    end
    def_config.styles = util.merge_tbls(def_config.styles, config.styles)
    def_config.lang_styles = util.merge_tbls(def_config.lang_styles, config.lang_styles)

    def_config.margin = config.margin or def_config.margin
    def_config.width = config.width or def_config.width
    def_config.ft_ascii_art = config.ft_ascii_art or def_config.ft_ascii_art
end

return M

