-- lua/pragma.lua

local function get_guard()
    local path = vim.api.nvim_buf_get_name(0):gsub("\\", "/")
    local cwd = vim.fn.getcwd():gsub("\\", "/")

    if path:sub(1, #cwd) == cwd then
        path = path:sub(#cwd + 2)
    end

    path = path:gsub("[^%w]", "_"):gsub("_+", "_")
    path = path:gsub("^_+", ""):gsub("_+$", "")

    return "__" .. path:upper() .. "__"
end

local function pragma()
    local buf = vim.api.nvim_get_current_buf()
    local filename = vim.api.nvim_buf_get_name(buf)
    local ext = filename:match("%.([%w]+)$")

    if ext ~= "h" and ext ~= "hpp" then
        vim.notify(":Pragma only works in .h/.hpp files", vim.log.levels.ERROR)
        return
    end

    local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)

    if ext == "hpp" then
        local new_lines = {
            "#pragma once",
            "",
        }

        vim.list_extend(new_lines, lines)
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, new_lines)
        vim.api.nvim_win_set_cursor(0, { 3, 0 })

        return
    end

    local guard = get_guard()

    local new_lines = {
        "#ifdef __cplusplus",
        "#pragma once",
        "#else",
        "#ifndef " .. guard,
        "#define " .. guard,
        "",
    }

    vim.list_extend(new_lines, lines)

    vim.list_extend(new_lines, {
        "",
        "#endif",
        "#endif",
    })

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, new_lines)

    -- Cursor goes to the first line of the original file.
    vim.api.nvim_win_set_cursor(0, { 7, 0 })
end

vim.api.nvim_create_user_command("Pragma", pragma, {
    desc = "Add C/C++ header protection",
})
