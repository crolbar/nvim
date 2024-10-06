local M = {}
local lib = require('nvim-tree.lib');

local function has_git_changes(git_status)
    if git_status and git_status.dir then
        if git_status.dir.indirect then
            for _, status in ipairs(git_status.dir.indirect) do
                if status:find("M") or status:find("A") or status:find("D") or status:find("?") then
                    return true
                end
            end
        end

        if git_status.dir.direct then
            for _, status in ipairs(git_status.dir.direct) do
                if status:find("M") or status:find("A") or status:find("D") or status:find("?") then
                    return true
                end
            end
        end
    end
    return false
end

local function open_git_modified_dirs(node)
    if node.type == "directory" then
        if has_git_changes(node.git_status) then
            lib.expand_or_collapse(node)
        end

        if node and node.nodes then
            for _, child in ipairs(node.nodes) do
                open_git_modified_dirs(child)
            end
        end
    end
end

function M.toggle_at_cursor()
    open_git_modified_dirs(lib.get_node_at_cursor());
end

function M.toggle_all()
    local core = require("nvim-tree.core")

    local nodes = core.get_explorer().nodes

    for _, node in ipairs(nodes) do
        open_git_modified_dirs(node)
    end
end

return M;
