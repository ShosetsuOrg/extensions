-- {"ver":"1.0.0","author":"TechnoJo4"}

-- Collection of common CSS snippets

local tbl = {}

-- abuse of lua's syntax but it looks nice
local function def(key)
    return function(value)
        local function id(c) return c end

        tbl[key] = value
            :gsub("^%s+", "")
            :gsub("%s+$", "")
            :gsub("%s*([;{}])%s*", id)

        return def
    end
end

def

"a" [[a]]

"table" [[
:root {
    --table-color: #004b7a;
}
table {
    background: none;
    margin: 10px auto;
    width: 90%;
    outline: var(--table-color) solid 3px;
    border-spacing: 3px;
    border-collapse: separate;
}
td {
    padding: 3px;
    background: var(--table-color);
}
]]

local all = ""
for _,v in pairs(tbl) do
    all = all .. v
end
tbl.all = all

return tbl
