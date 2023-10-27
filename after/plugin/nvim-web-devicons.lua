require'nvim-web-devicons'.setup {
    color_icons = true;
    default = true;
    strict = true;
    override_by_extension = {
        ["v"] = {
            icon = "",
            cterm_color = "65",
            name = "V"
        }
    };
}
