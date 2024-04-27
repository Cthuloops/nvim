return {
    "tpope/vim-fugitive",

    config = function()

    local keymap = vim.keymap

    keymap.set("n", "<leader>gs", vim.cmd.Git, {desc = "git status, thanks TPope/Primeagen"})
    keymap.set("n", "<leader>gp", function()
            vim.cmd.Git('push')
        end, {desc = "Push this file to the repo?"})
    keymap.set("n", "<leader>gP", function()
            vim.cmd.Git({'pull', '--rebase'})
        end, {desc = "Pull and rebase"})
    end
}
