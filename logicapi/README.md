# Logic API


## Requiriments
- Unity Exploit 3.0
- Helper Lib


## Example

```lua
local LogicAPI = require("LogicAPI")
local root = LogicAPI.Root
root.Execute(function (root)
    local tnt = root.Create_Explosives()
    local lever1 = root.Create_Lever()
    lever1.AddOut(tnt)
end)

```
