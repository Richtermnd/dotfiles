return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<m-b>h", "<cmd>TmuxNavigateLeft<cr>" },
        { "<m-b>j", "<cmd>TmuxNavigateDown<cr>" },
        { "<m-b>k", "<cmd>TmuxNavigateUp<cr>" },
        { "<m-b>l", "<cmd>TmuxNavigateRight<cr>" },
        { "<m-b><c-h>", "<cmd>TmuxNavigateLeft<cr>" },
        { "<m-b><c-j>", "<cmd>TmuxNavigateDown<cr>" },
        { "<m-b><c-k>", "<cmd>TmuxNavigateUp<cr>" },
        { "<m-b><c-l>", "<cmd>TmuxNavigateRight<cr>" },
        { "<c-\\>", false },
    },
}
