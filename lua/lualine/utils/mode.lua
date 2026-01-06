-- Copyright (c) 2020-2021 hoob3rt
-- MIT license, see LICENSE for more details.
local Mode = {}

-- stylua: ignore
Mode.map = {
  ['n']      = 'N',
  ['no']     = 'O-PENDING',
  ['nov']    = 'O-PENDING',
  ['noV']    = 'O-PENDING',
  ['no\22'] = 'O-PENDING',
  ['niI']    = 'N',
  ['niR']    = 'N',
  ['niV']    = 'N',
  ['nt']     = 'N',
  ['ntT']    = 'N',
  ['v']      = 'V',
  ['vs']     = 'V',
  ['V']      = 'VL',
  ['Vs']     = 'VL',
  ['\22']   = 'VB',
  ['\22s']  = 'VB',
  ['s']      = 'SEL',
  ['S']      = 'S-LINE',
  ['\19']   = 'S-BLOCK',
  ['i']      = 'I',
  ['ic']     = 'I',
  ['ix']     = 'I',
  ['R']      = 'REP',
  ['Rc']     = 'REP',
  ['Rx']     = 'REP',
  ['Rv']     = 'V-REP',
  ['Rvc']    = 'V-REP',
  ['Rvx']    = 'V-REP',
  ['c']      = 'COM',
  ['cv']     = 'EX',
  ['ce']     = 'EX',
  ['r']      = 'REP',
  ['rm']     = 'MORE',
  ['r?']     = 'CONFIRM',
  ['!']      = 'SHELL',
  ['t']      = 'TERM',
}

---@return string current mode name
function Mode.get_mode()
  local mode_code = vim.api.nvim_get_mode().mode
  if Mode.map[mode_code] == nil then
    return mode_code
  end
  return Mode.map[mode_code]
end

return Mode
