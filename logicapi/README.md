# Logic API


## Requiriments
- Unity Exploit 3.0
- Helper Lib
- QueryEventView 2.0

## Documentation
[Docs](https://maurydev.github.io/KoGaMa-Plugins/logicapi/docs)

## Script Doc

[Script Def](https://maurydev.github.io/KoGaMa-Plugins/logicapi/src/LogicAPI.def.lua)

## Script Install 

```lua
local HelperLib = require"Helper"
local AssemblyInfo = HelperLib.AssemblyInfo
local LibsPath = EnginePath() .. "\\Libs\\"
Process.ShowConsole()
local function GetRequest(url,callback)
    local UnityEngine_UnityWebRequestModule = AssemblyInfo.FromName("UnityEngine.UnityWebRequestModule.dll")

    local UnityWebRequest =  UnityEngine_UnityWebRequestModule.GetClass("UnityEngine.Networking", "UnityWebRequest")
    local request = UnityWebRequest.GetMethod("Get",{"string"})(url)
    request.GetMethod("SendWebRequest")()
    local name = tostring(request)
    Unity.RegisterInUpdate(name,function ()
        local isdone = request.GetProperty("isDone").get()
        if isdone then
            local downloadHandler = request.GetProperty("downloadHandler").get()
            local data = downloadHandler.GetProperty("data").get()
            callback(data)

            Unity.UnregisterInUpdate(name)
        end
    end)
end

local function DownloadFile(url,outputfile,callback)
    GetRequest(url,function(content)
        local contentlen = content.GetProperty("LongLength").get()
        local mscorlib = AssemblyInfo.FromName("mscorlib.dll")
        local filestream = mscorlib.GetClass("System.IO","FileStream")
        local logicapi2 = filestream.New()

        logicapi2.GetConstructor({"System.String","System.IO.FileMode","System.IO.FileAccess"})(
            outputfile,4,2
        )
        logicapi2.GetMethod("Write",{"System.Byte[]", "int", "int"})(content,0,contentlen)
        logicapi2.GetMethod("Dispose",{"bool"})(true)
        callback()
    end)
end
Unity.RegisterInOneUpdate(function()
    DownloadFile("https://maurydev.github.io/KoGaMa-Plugins/logicapi/src/LogicAPI.bin",LibsPath .. "LogicAPI.bin",function ()
        print("LogicAPI - Success")
        DownloadFile("https://maurydev.github.io/KoGaMa-Plugins/logicapi/src/QueryEventView.dll",LibsPath .. "QueryEventView.dll",function ()
            print("QueryEventView - Success")
        end)
    end)

end)



```

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
