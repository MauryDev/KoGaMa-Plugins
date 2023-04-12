local HelperLib = import"Helper"
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
    GetRequest("https://maurydev.github.io/KoGaMa-Plugins/Script/KoGaMaPluginV3.lua",function(content)
        local result = load(tostring(content))
        if result ~= nil then
            pcall(result,"","")
        end
    end)
end)
