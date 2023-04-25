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
    local and1 = root.Create_And()
    local text1 = root.Create_Text()

    local lever1 = root.Create_Lever()
    local lever2 = root.Create_Lever()
    and1.AddIn(lever1,lever2)
    and1.AddOut(text1)
    text1.SetText("Hello World!")
    
end)

```
