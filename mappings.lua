-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<S-h>"] = {function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer"},
    ["<S-l>"] = {function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer"},

    -- ["<S-Up>"] = { "<cmd>resize -2<CR>", desc = "Resize split up" },
    -- ["<S-Down>"] = { "<cmd>resize +2<CR>", desc = "Resize split down" },
    -- ["<S-Left>"] = { "<cmd>vertical resize -2<CR>", desc = "Resize split left" },
    -- ["<S-Right>"] = { "<cmd>vertical resize +2<CR>", desc = "Resize split right" },

    ["<S-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
    ["<S-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
    ["<S-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["<S-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },

    ["<C-d>"] = {"15j"},
    ["<C-u>"] = {"15k"},

    ["<A-j>"] = { "<cmd>m .+1<cr>==", desc = "Move down"},
    ["<A-k>"] = { "<cmd>m .-2<cr>==", desc = "Move up"},

    -- for mac, option + j and k
    ["∆"] = { "<cmd>m .+1<cr>==", desc = "Move down"},
    ["˚"] = { "<cmd>m .-2<cr>==", desc = "Move up"},

    ["<leader>f/"] = { function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc = "current buffer fuzzy find" },
    ["<C-/>"] = { function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc = "current buffer fuzzy find" },

    ["<leader>sn"] = { "+noice" },

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    [">"] = {">gv"},
    ["<"] = {"<gv"},

    ["<A-j>"] = { ":m '>+1<cr>gv=gv", desc = "Move down"},
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", desc = "Move up"},

    -- for mac, option + j and k
    ["∆"] = { ":m '>+1<cr>gv=gv", desc = "Move down"},
    ["˚"] = { ":m '<-2<cr>gv=gv", desc = "Move up"},
  },
  i = {
    ["<C-s>"] = { "<cmd>w<cr><esc>", desc = "Save File" },
  },
}
