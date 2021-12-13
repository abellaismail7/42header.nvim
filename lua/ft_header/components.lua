-- --------------------------------------------------------------------------- -
--                                                                             -
--                                                      :::      ::::::::      -
--   components.lua                                   :+:      :+:    :+:      -
--                                                  +:+ +:+         +:+        -
--   By: bella marvin@42.fr                       +#+  +:+       +#+           -
--                                              +#+#+#+#+#+   +#+              -
--   Created: 2021/12/13 00:01:31 by bella           #+#    #+#                -
--   Updated: 2021/12/13 00:01:31 by bella          ###   ########.fr          -
--                                                                             -
-- --------------------------------------------------------------------------- -

local M = {}
local util      = require("ft_header.util")
local config    = require("ft_header.config")

function M.ft_logo()
    for i = 0,7
    do
        util.ft_set_text(i+1, 48, config.ft_ascii_art[i]);
    end
end

function M.ft_filename()
    local file = vim.fn.expand('%:t')
    util.ft_set_text(3, config.margin, file);
end

function M.ft_user(user)
    util.ft_set_text(5, config.margin, "By: " .. user.name .. " " .. user.mail);
end

function M.ft_date(login)
    local date = vim.fn.strftime("%Y/%m/%d %H:%M:%S by " .. login)
    util.ft_set_text(7, config.margin, "Created: " .. date);
    util.ft_set_text(8, config.margin, "Updated: " .. date);
end

function M.ft_box(ops)
    local box_arr = {}

    for i = 0,10
    do
        table.insert(box_arr, util.makeline(ops, config.width, i == 0 or i == 10))
    end
    table.insert(box_arr, "")
    util.prepend_lines(box_arr)
end

function M.ft_update(ops, login)
    local line = util.getline(9)
    local index = string.find(line, "Updated")
    if index ~= config.margin + 1
        then
        return
    end
    local date = vim.fn.strftime("%Y/%m/%d %H:%M:%S by " .. login)
    util.ft_set_text(8, util.makeline(ops, config.width, false))
    util.ft_set_text(8, config.margin, "Updated: " .. date)
end

return M
