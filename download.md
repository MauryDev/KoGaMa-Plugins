# KoGaMa Plugin Loader
## Loader V2
```lua
local HelperLib = import("Helper.lua")
local AssemblyInfo = HelperLib.AssemblyInfo

local function GetRequest(url,callback)
    local UnityEngine_UnityWebRequestModule = AssemblyInfo.FromName("UnityEngine.UnityWebRequestModule.dll")

    local UnityWebRequest =  UnityEngine_UnityWebRequestModule.GetClass("UnityEngine.Networking", "UnityWebRequest")
    local request = UnityWebRequest.GetMethod("Get",{"string"})(url)
    request.GetMethod("SendWebRequest")()
    local name = tostring(request)
    Il2Cpp.RegisterInUpdate(name,function ()
        local isdone = request.GetProperty("isDone").get()
        if isdone then
            local downloadHandler = request.GetProperty("downloadHandler").get()
            local text = downloadHandler.GetProperty("text").get()
            callback(text)

            Il2Cpp.UnregisterInUpdate(name)
        end
    end)
end

Il2Cpp.RegisterInOneUpdate(function()
    GetRequest("https://maurydev.github.io/KoGaMa-Plugins/Script/kogamaplugin.lua",function(content)
        local result = load(tostring(content))
        if result ~= nil then
            pcall(result,"","")
        end
    end)
end)
```

## Loader V3

```lua
local HelperLib = import("Helper.lua")
local AssemblyInfo = HelperLib.AssemblyInfo

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
            local text = downloadHandler.GetProperty("text").get()
            callback(text)

            Unity.UnregisterInUpdate(name)
        end
    end)
end

Unity.RegisterInOneUpdate(function()
    GetRequest("https://maurydev.github.io/KoGaMa-Plugins/Script/kogamaplugin.lua",function(content)
        local result = load(tostring(content))
        if result ~= nil then
            pcall(result,"","")
        end
    end)
end)

```
