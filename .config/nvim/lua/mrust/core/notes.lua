local notes_dir = "~/notes/"
local glob_notes_dir = vim.fn.glob(notes_dir)
local tag_definition_pattern = "%s*%[(.-)%]"

local function find_all_tags_defenitions(line)
    return string.gmatch(line, tag_definition_pattern)
end

local function walk(dir)
    local result = {}
    local files = vim.fn.globpath(dir, "*", true, true)
    for _, file in ipairs(files) do
        if vim.fn.isdirectory(file) == 1 then
            local subdir = walk(file)
            table.move(subdir, 1, #subdir, #result + 1, result)
        else
            table.insert(result, file)
        end
    end
    return result
end

local function update_tags()
    local f, err = io.open(glob_notes_dir .. "tags", "w")
    if not f then
        print("failed to open file " .. err)
    else
        for _, file in ipairs(walk(notes_dir)) do
            for _, line in ipairs(vim.fn.readfile(file)) do
                for tag in find_all_tags_defenitions(line) do
                    --      to      \t     file     \t     command
                    f:write(tag .. "\t" .. file .. "\t" .. "/[" .. tag .. "]\n")
                end
            end
        end
        f:close()
    end
end

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = glob_notes_dir.."*.txt",
    callback = update_tags
})

