local builtin = require("statuscol.builtin")

require('statuscol').setup({
  segments = {
    -- fold segment
    {text = { builtin.foldfunc }, click = "v:lua.ScFa"},
    -- sign segment
    {text = {"%s"}, click = "v:lua.ScSa"},
    -- line number segment
    {text = { builtin.lnumfunc, " "}, click = "v:lua.ScLa"}
  },
})

