return {
  "CopilotC-Nvim/CopilotChat.nvim",
  enabled = true,
  dependencies = {
    "zbirenbaum/copilot.lua", -- required
    {
      "nvim-lua/plenary.nvim", -- required
      version = false, -- latest commit, see https://github.com/CopilotC-Nvim/CopilotChat.nvim/issues/1054
    },
  },
  build = "make tiktoken",
  opts = {
    window = { width = 0.50 },
    model = "claude-sonnet-4.5",
    prompts = {
      TestPrompt = {
        prompt = "hello",
        description = "A simple test prompt.",
      },
    },
  },
}
