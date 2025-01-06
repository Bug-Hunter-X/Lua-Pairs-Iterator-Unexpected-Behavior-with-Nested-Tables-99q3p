local function foo(t)
  for k, v in spairs(t) do -- Using spairs for guaranteed order
    if type(v) == "table" then
      foo(v)
    end
  end
end

local function spairs(t, order) 
    local keys = {} 
    for k in pairs(t) do table.insert(keys, k) end 
    table.sort(keys, order) 
    local i = 0 
    return function() 
        i = i + 1 
        if keys[i] then return keys[i], t[keys[i]] end 
    end 
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)