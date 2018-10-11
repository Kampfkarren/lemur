local BaseInstance = import("./BaseInstance")
local InstanceProperty = import("../InstanceProperty")

local BindableFunction = BaseInstance:extend("BindableFunction", {
	creatable = true,
})

BindableFunction.properties.OnInvoke = InstanceProperty.normal()

function BindableFunction:init(instance)
	instance.Name = "Function"
end

function BindableFunction.prototype:Invoke(...)
    local callback = getmetatable(self).instance.properties.OnInvoke

    -- BindableFunctions DON'T error if OnInvoke is nil, unlike every other type.
    if callback == nil then
        callback = function() end -- noop
    end

    return callback(...)
end

return BindableFunction