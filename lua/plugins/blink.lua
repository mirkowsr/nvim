return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      ghost_text = {
        enabled = function(ctx)
          -- get currently selected completion item
          local item = require("blink.cmp").get_selected_item()
          -- filter out snippets from ghost text
          if item and item.kind == require("blink.cmp.types").CompletionItemKind.Snippet then
            return false
          end
          return true
        end,
      },
    },
  },
}
