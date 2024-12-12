_TestClass = {}
_TestClass.__index = TestClass

function _TestClass:__new()
  local instance = setmetatable({}, self)
  return instance
end

function _TestClass.hello()
  print("Hello from Lua!")
end