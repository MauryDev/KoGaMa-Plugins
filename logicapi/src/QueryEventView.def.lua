---@meta QueryEventView

---@class QueryEventView.Info
---@field worldObject integer
---@field actorID integer


---@class QueryEventView
---@field Init fun(pointer: userdata):nil
---@field GetInfo fun():QueryEventView.Info | nil
---@field ResetInfo fun():nil
---@field WaitInfo fun():QueryEventView.Info


---@type QueryEventView
local ret = {}
return ret