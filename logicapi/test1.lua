local LogicAPI = require("LogicAPI")


local root = LogicAPI.Root


local function toBits(num,bits)
    -- returns a table of bits, most significant first.
    bits = bits or math.max(1, select(2, math.frexp(num)))
    local t = {} -- will contain the bits        
    for b = bits, 1, -1 do
        t[b] = math.fmod(num, 2)
        num = math.floor((num - t[b]) / 2)
    end
    return t
end
local function CreateCounter(len,isinc)
    local toggles = {}
    local negates = {}
    local pressureplate1 = root.Create_PressurePlate()
    local varition = 2 ^ len
    for i = 1, len, 1 do
        local togglecurrent = root.Create_ToggleBox()
        local negate = root.Create_Negate()

        toggles[i] = togglecurrent -- 1
        negates[i] = negate -- 0
        togglecurrent.AddOut(negate)
    end

    for i = 1, len, 1 do
        local current = toggles[i]
        if i < len then
            current.AddOut(toggles[i + 1])
        end
        if i == 1 then
            pressureplate1.AddOut(toggles[i])
        end
    end
    local v = {}
    for i = 1, varition, 1 do
        v[i] = toBits(i - 1,len)
    end
    local count = 0
    if isinc then
        count = varition - 1
    else
        count = 0
    end
    for i = 1, varition, 1 do
        local current = v[i]
        local and1 = root.Create_And()
        local text1 = root.Create_Text()
        if isinc then
            if i == 1 then
                text1.SetText(tostring(0))
            else
                text1.SetText(tostring(math.floor(count)))
                count = count - 1
            end
        else
            if i == 1 then
                text1.SetText(tostring(math.floor(varition - 1)))
            else
                text1.SetText(tostring(math.floor(count)))
                count = count + 1
            end
        end
        
        
        and1.AddOut(text1)
        local i3 = len
        for i2 = 1, len, 1 do
            local currentb = current[i2]
            if currentb == 1 then
                toggles[i3].AddOut(and1)
            else
                negates[i3].AddOut(and1)
            end
            i3 = i3 - 1
        end
    end
end
root.Execute(function ()
    CreateCounter(2,true)
end)
