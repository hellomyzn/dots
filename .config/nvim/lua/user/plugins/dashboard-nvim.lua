local dashboard = require('dashboard')

dashboard.setup({
  theme = 'doom',
  config = {
    header = {
          "                      ⠀⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢦⠀⠀⠀⠀⠀⠀⠀",
          "                      ⠀⠀⠀⠀⢠⡛⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡦⡀⢸⠀⢧⠀⠀⠀⠀⠀⠀",
          "                      ⠀⠀⠀⠀⠸⢃⣧⠀⠀⠀⠀⠀⠀⠀⠀⠔⠀⢡⠎⠀⢸⠀⠀⠀⠀⠀⠀",
          "                      ⠀⠀⠀⠀⢸⠀⡈⢧⣤⡤⠖⠚⠋⠉⠉⠉⠓⠛⢦⣤⡟⠀⠀⠀⠀⠀⠀",
          "                      ⢀⡄⢸⠷⢜⡄⠀⠄⠰⢌⠀⠀⠠⢀⠠⠤⠄⡀⠨⠢⠙⣿⣩⡟⠀⠀⠀",
          "                      ⠘⡙⣾⢖⣰⢏⡀⠀⡂⡠⠁⠂⠰⢡⠖⠒⣦⡈⠂⠀⠣⡀⢿⣧⠀⠀⠀",
          "                      ⠀⠳⣌⠂⢀⠀⠆⠕⠅⠄⠀⠀⢃⠸⣤⣤⣾⠃⡘⠀⠠⢁⠪⢙⣦⠀⠀",
          "                      ⠀⠀⢈⡇⠡⡈⠀⠁⠀⠀⠀⠀⠊⠱⠄⠉⠠⠄⠁⠀⡤⠀⡸⠑⢻⡀⠀",
          "                      ⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠰⣢⣀⣀⡠⣰⣦⡴⣾⢐⠠⠁⠌⡍⡇⠀",
          "                      ⠀⠀⠸⡷⡀⠀⠀⠄⠀⠀⠀⠀⢀⠘⢟⣵⣿⣿⣿⡝⡡⠆⢌⣸⢷⠇⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⢱⣩⡔⢢⠀ ⢀⢀⠀⠐⠈⡀⠉⡳⢳⠋⠐⣖⣾⣼⡿⡿⡄⠀",
          "⡀⢀⣀⡀⠀⢀⣀⣀⠀⠀⢀⣀⣀⡀⣀⡀⠀⠀⣀⣘⣉⢀⣀⣀⣄⣀⣀⣄⡀  ⠚⢂⠉⠡⡤⢀⠁⡰⢄⣡⣎⣟⢷⣟⡽⠥⣝⡄",
          "⡟⠀⠀⢹⢠⣎⣀⣀⣱⢰⠋⠀⠈⢳⠼⣿⠀⣼⡟⢸⣿⢸⣿⠉⢹⣿⠉⢹⣿  ⡂⣸⠊⡀⢨⡼⣴⣧⡞⡷⣯⢼⣻⠞⠁⠀⠀⠀",
          "⡇⠀⠀⢸⠘⣆⠀⠀⠀⠸⡄⠀⠀⣸⠂⢹⣷⡟⠀⢸⣿⢸⣿⠀⢸⣿⠀⢸⣿  ⢽⣟⢀⣴⣿⣾⣧⢿⣻⣯⠟⠋⠁⠀⠀⠀⠀⠀",
          "⠁⠀⠀⠈⠀⠈⠁⠊⠁⠀⠈⠐⠈⠁⠀⠀⠉⠁⠀⠈⠉⠈⠉⠀⠈⠉⠀⠈⠉  ⠀⢸⡞⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "",
    },
    center = {
      { icon = '􀣘  ', key = 'F', desc = 'New file', action = 'enew' },
      { icon = '􀊫  ', key = 'f', desc = 'Find file', action = 'Telescope find_files' },
      { icon = '􁝰  ', key = 't', desc = 'Find file by tree', action = 'NvimTreeFindFileToggle<CR>' },
      { icon = '􀐬  ', key = 'h', desc = 'Recent files', action = 'Telescope oldfiles' },
      { icon = '􀵫  ', key = 'g', desc = 'Find Word', action = 'Telescope live_grep' },
    },
    footer = {},
  }
})

vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#6272a4' })
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#f8f8f2' })
vim.api.nvim_set_hl(0, 'DashboardShortcut', { fg = '#bd93f9' })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#6272a4' })

