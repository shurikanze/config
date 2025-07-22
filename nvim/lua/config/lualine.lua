local ok, lualine = pcall(require, "lualine")
if not ok then
  vim.notify("lualine not installed!", vim.log.levels.ERROR)
  return
end



lualine.setup({
  options = {

    theme = "auto",  -- автоматически подхватывает colorscheme
    icons_enabled = true,

    component_separators = "|",
    section_separators = "",

  },

  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch"},
    lualine_c = {"filename"},
    lualine_x = {},
    lualine_y = {"progress"},

    lualine_z = {"location"}
  }
})
