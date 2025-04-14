local function cs()
  -- change colorscheme based on system theme
  local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
  local csh = "tokyonight-storm"
  if handle ~= nil then
    local result = handle:read("*a")

    if result:match("default") then
      csh = "tokyonight-day"
    end
    handle:close()
  end
  return csh
end

return {
  -- add gruvbox
  { "folke/tokyonight.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = cs(),
    },
  },
}
