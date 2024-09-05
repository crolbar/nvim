return {
    "crolbar/disc.nvim",
    --"disc",
    --dir  = "~/projects/lua/disc",
    opts = {
        timeout = 3000,
        buttons = {
            {
                label = "This dumbass",
                url = "https://github.com/crolbar"
            },
        }
    }
}

--require('cord').setup({
--  usercmds = true,                              -- Enable user commands
--  timer = {
--    enable = true,                              -- Enable automatically updating presence
--    interval = 5000,                            -- Interval between presence updates in milliseconds (min 500)
--    reset_on_idle = false,                      -- Reset start timestamp on idle
--    reset_on_change = false,                    -- Reset start timestamp on presence change
--  },
--  editor = {
--    image = nil,                                -- Image ID or URL in case a custom client id is provided
--    client = 'vim',                             -- vim, neovim, lunarvim, nvchad, astronvim or your application's client id
--    tooltip = 'd4 bad',                         -- Text to display when hovering over the editor's image
--  },
-- display = {
--    show_time = true,                           -- Display start timestamp
--    show_repository = true,                     -- Display 'View repository' button linked to repository url, if any
--    show_cursor_position = true,               -- Display line and column number of cursor's position
--    swap_fields = false,                        -- If enabled, workspace is displayed first
--    workspace_blacklist = {},                   -- List of workspace names to hide
--  },
--  lsp = {
--    show_problem_count = false,                 -- Display number of diagnostics problems
--    severity = 1,                               -- 1 = Error, 2 = Warning, 3 = Info, 4 = Hint
--    scope = 'workspace',                        -- buffer or workspace
--  },
--  idle = {
--    show_idle = false,                           -- Enable idle status
--  },
--  text = {
--    viewing = 'Viewing {}',                     -- Text to display when viewing a readonly file
--    editing = 'Editing {}',                     -- Text to display when editing a file
--    file_browser = 'Browsing files in {}',      -- Text to display when browsing files (Empty string to disable)
--    plugin_manager = 'Managing plugins in {}',  -- Text to display when managing plugins (Empty string to disable)
--    lsp_manager = 'Configuring LSP in {}',      -- Text to display when managing LSP servers (Empty string to disable)
--    workspace = 'In {}',                        -- Text to display when in a workspace (Empty string to disable)
--  },
--  buttons = {
--    {
--      label = 'View Repository',                -- Text displayed on the button
--      url = 'git',                              -- URL where the button leads to ('git' = Git repository URL)
--    },
--  },
--})
