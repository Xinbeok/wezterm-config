local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- 基础窗口设置
config.initial_cols = 120
config.initial_rows = 30
config.font_size = 13.0

-- 字体配置
config.font = wezterm.font_with_fallback({
    "JetBrains Mono",
    "Fira Code",
    "Noto Color Emoji"
})
config.line_height = 1.2

-- 主题配色
config.color_scheme = "Tokyo Night"

-- 快捷键配置
config.keys = {
    -- 窗格分割（直接快捷键）
    { key = '|', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = '_', mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },

    -- 窗格切换（Alt + 方向键）
    { key = 'LeftArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Left' },
    { key = 'RightArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Right' },
    { key = 'UpArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Up' },
    { key = 'DownArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Down' },

    -- 关闭窗格
    { key = 'w', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = true } },

    -- 标签页管理
    { key = 't', mods = 'CTRL', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
    { key = 'w', mods = 'CTRL', action = wezterm.action.CloseCurrentTab { confirm = true } },
    { key = 'Tab', mods = 'CTRL', action = wezterm.action.ActivateTabRelative(1) },
    { key = 'Tab', mods = 'CTRL|SHIFT', action = wezterm.action.ActivateTabRelative(-1) },

    -- 复制粘贴优化
    { key = 'c', mods = 'CTRL', action = wezterm.action.CopyTo 'Clipboard' },
    { key = 'v', mods = 'CTRL', action = wezterm.action.PasteFrom 'Clipboard' },
}

-- 透明度效果
config.window_background_opacity = 0.95
config.text_background_opacity = 0.9

-- Windows 平台配置
if wezterm.target_triple:find("windows") then
    config.default_prog = { "powershell", "-NoLogo" }
end

-- 状态栏显示（性能监控）
wezterm.on('update-right-status', function(window, pane)
    local date = wezterm.strftime '%Y-%m-%d %H:%M:%S'
    window:set_right_status(wezterm.format {
        { Foreground = { Color = '#7aa2f7' } },
        { Text = '  ' .. date .. ' ' },
    })
end)

return config
