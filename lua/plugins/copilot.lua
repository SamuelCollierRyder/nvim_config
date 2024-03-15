return {
  "github/copilot.vim",

  config = function()
    vim.api.nvim_command("highlight CopilotSuggestion guifg=#FFFFFF ctermfg=8")
    vim.keymap.set('i', '<C-1>', '<Plug>(copilot-next)')
    vim.keymap.set('i', '<C-2>', '<Plug>(copilot-previous)')
  end
}


