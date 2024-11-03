return   {
    "loctvl842/monokai-pro.nvim",
    lazy = false, -- 즉시 로드
    priority = 0, -- 테마 우선순위 설정
    config = function()
      require("monokai-pro").setup({
        filter = "octagon", -- 테마 스타일 설정 ("pro", "classic", "octagon", "machine", "ristretto", "spectrum" 중 선택)
      })
      vim.cmd([[colorscheme monokai-pro]]) -- 테마 적용
    end,
}
