local M = {}
local api = vim.api

function M.ft_set_text(line, col, text)
    if type(text) == "string"
        then
        api.nvim_buf_set_text(0, line, col, line, col + string.len(text) , {text})
    else
        print(text)
    end
end

function M.get_user()
    return {
        name = os.getenv("USER") or "marvin",
        mail = os.getenv("USER_MAIL") or "marvin@42.fr"
    }
end


function M.makeline(ops, width, is_fill)
    local res   = ops.start
    local endlen = string.len(ops.s_end)
    local stlen = string.len(ops.start)
    local fill = " "
    if is_fill
        then
        fill = ops.fill
    end

    for _ = stlen,width - endlen
    do
        res = res .. fill
    end

    return res .. ops.s_end
end

function M.getline(index)
    return api.nvim_buf_get_lines(0, index - 1, index, false)[1]
end

function M.prepend_lines(lines)
    api.nvim_buf_set_lines(0, 0, 0, false, lines)
end

function M.merge_tbls(t1, t2)
    for k,v in pairs(t2)
    do
        if t1[k] ~= nil
        then
            t1[k] = v
        end
    end
    return t1;
end

function M.show_error(msg)
    vim.cmd("echohl Error")
    print(msg)
    vim.cmd("echohl clear")
end

return M
