-- Define the function to set the filetype in the global scope
_G.set_v_filetype = function()
  if vim.fn.expand("%:e") == "v" then
    vim.bo.filetype = "v"
  end
end

-- Attach the function to BufRead and BufNewFile events
vim.api.nvim_command('autocmd BufRead,BufNewFile *.v lua _G.set_v_filetype()')
