return {
  'osyo-manga/vim-anzu',
  config = function()
    vim.g.anzu_status_format = '%i/%I [%n]'
    vim.g.anzu_use_highlight_search = 1
    vim.g.anzu_show_status = 1
    vim.g.anzu_show_mode = 1
    vim.g.anzu_mode = 'n'
    vim.g.anzu_min = 1
    vim.g.anzu_max = 100
    vim.g.anzu_highlight_search = 1
    vim.g.anzu_save_on_exit = 1
    vim.g.anzu_replace = 1
    vim.g.anzu_cursor = 1
    vim.g.anzu_use_vim8_highlight = 1
    vim.g.anzu_vim8_highlight = 'Search'
    vim.g.anzu_vim8_cursor = 'Cursor'
    vim.g.anzu_vim8_cursorguifg = 'bg'
    vim.g.anzu_vim8_cursorguibg = 'fg'
    vim.g.anzu_vim8_cursorguisp = 'bg'
  end,
}
