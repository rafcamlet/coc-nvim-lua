local function tbl_keys(t)
  local keys = {}
  for k, _ in pairs(t) do
    table.insert(keys, k)
  end
  return keys
end

local function search(s_arr, r_arr)
  if #s_arr == 0 then return end
  if not r_arr then r_arr = _G end

  local head = table.remove(s_arr, 1, 1)

  if type(r_arr[head]) == 'table' then
    return search(s_arr, r_arr[head])
  end

  local result = {}
  for i, v in ipairs(tbl_keys(r_arr)) do
    if v:find('^' .. head) then table.insert(result, v) end
  end

  return result
end

local function complete(opt)
  local line = string.sub(opt.line, 0, opt.col) .. opt.input
  local str = line:match('[%w._]*$')
  local arr = vim.split(str, '.', true)
  return search(arr)
end

return { complete = complete }
