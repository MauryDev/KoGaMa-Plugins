# Logic API


## Requiriments
- Unity Exploit 3.0
- Helper Lib

## Documentation
[Docs](https://maurydev.github.io/KoGaMa-Plugins/logicapi/docs)

## Download
[LogicAPI.bin](https://maurydev.github.io/KoGaMa-Plugins/logicapi/src/LogicAPI.bin)

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
