return {
  {
    "S1M0N38/love2d.nvim",
    version = "3.*",
    ft = "lua",
    cmd = { "Love", "LoveNew" },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      output = false,
    },
    keys = {
      { "<leader>v", "", desc = "LÖVE" },
      { "<leader>vr", "<cmd>Love run<cr>", desc = "Run LÖVE" },
      { "<leader>vw", "<cmd>Love watch<cr>", desc = "Watch LÖVE" },
      { "<leader>vi", "<cmd>Love info<cr>", desc = "Info LÖVE" },
      { "<leader>vs", "<cmd>Love stop<cr>", desc = "Stop LÖVE" },
      { "<leader>vo", "<cmd>Love output<cr>", desc = "Output panel" },
    },
    config = function(_, opts)
      require("love2d").setup(opts)

      local template_path = vim.fn.expand("~/projs/lua/love/starterLuaProject/")

      vim.api.nvim_create_user_command("LoveNew", function(req_opts)
        local project_name = req_opts.args
        if not project_name or project_name == "" then
          vim.notify("Informe o nome do projeto: :LoveNew <nome>", vim.log.levels.WARN)
          return
        end

        local target_dir = vim.fn.getcwd() .. "/" .. project_name

        if vim.fn.isdirectory(target_dir) == 1 then
          vim.notify("A pasta '" .. project_name .. "' já existe!", vim.log.levels.ERROR)
          return
        end

        local copy_cmd = string.format("cp -r %s %s", vim.fn.shellescape(template_path), vim.fn.shellescape(target_dir))
        vim.fn.system(copy_cmd)

        if vim.v.shell_error ~= 0 then
          vim.notify("Erro ao copiar o modelo. Verifique se o caminho do modelo está correto.", vim.log.levels.ERROR)
          return
        end

        vim.cmd("cd " .. vim.fn.fnameescape(target_dir))
        vim.cmd("edit main.lua")
        vim.notify("Projeto '" .. project_name .. "' criado com sucesso!", vim.log.levels.INFO)
      end, {
        nargs = 1,
        desc = "Cria um novo projeto LÖVE2D a partir da estrutura modelo",
      })
    end,
  },
}
