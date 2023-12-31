local lsp = require('lsp-zero')

lsp.preset('recommended')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'tsserver', 'rust_analyzer', 'eslint', 'zls'},
    handlers = {
        lsp.default_setup,
    },
})

require'lspconfig'.v_analyzer.setup{}

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings( {
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm( { select = true } ),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences( {
    sign_icons = { }
})

lsp.setup()
