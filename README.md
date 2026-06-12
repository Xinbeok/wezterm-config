# WezTerm 配置

个人 WezTerm 终端配置，使用 Tokyo Night 主题。

## ✨ 特性

- 🎨 **Tokyo Night 主题** - 深蓝紫色调，舒适护眼
- 🪟 **窗格管理** - 支持分屏和多窗格操作
- 📑 **标签页管理** - 类似浏览器的标签页体验
- ⚡ **Starship 提示符** - 显示 Git 信息和语言版本
- 🎯 **快捷键优化** - 鼠标选中即复制，Ctrl+V 直接粘贴
- 🀄 **中英文等宽字体** - Maple Mono NF CN，中英文混排大小统一
- 💻 **跨平台兼容** - Windows 和 Mac 通用

## 🚀 快速开始

### Windows

1. 下载并安装 [WezTerm](https://wezfurlong.org/wezterm/installation.html)（建议装 [nightly 版](https://github.com/wez/wezterm/releases/tag/nightly)，修复了中文输入法候选框位置乱飘的 bug）

2. 克隆配置到任意目录：
```bash
git clone https://github.com/Xinbeok/wezterm-config.git
```

3. 设置环境变量（修改路径为你的实际路径）：
```bash
setx WEZTERM_CONFIG_FILE "你的路径\.wezterm.lua"
```

4. 安装 Starship：
```bash
winget install --id Starship.Starship
```

5. 设置 PowerShell 执行策略：
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

6. 配置 PowerShell 启动 Starship（创建/编辑 `$PROFILE` 文件）：
```powershell
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
Invoke-Expression (&starship init powershell)
```

7. 复制仓库里的 Starship 配置到用户目录：
```powershell
New-Item -ItemType Directory -Force "$HOME\.config" | Out-Null
Copy-Item starship.toml "$HOME\.config\starship.toml"
```

8. 安装 [Maple Mono NF CN](https://github.com/subframe7536/maple-font/releases) 字体（下载 `MapleMono-NF-CN.zip`，至少安装 Regular/Bold/Italic/BoldItalic 四个字重）

9. 重启 WezTerm

### Mac

1. 克隆配置：
```bash
git clone https://github.com/Xinbeok/wezterm-config.git ~/.config/wezterm
```

2. 配置会自动加载（Mac 默认读取 `~/.config/wezterm/.wezterm.lua`）

3. 安装 Starship：
```bash
brew install starship
```

4. 重启 WezTerm

## ⌨️ 快捷键

### 窗格管理
- `Ctrl+Shift+\` - 左右分屏
- `Ctrl+Shift+-` - 上下分屏
- `Alt+方向键` - 切换窗格
- `Ctrl+Shift+W` - 关闭当前窗格

### 标签页管理
- `Ctrl+T` - 新建标签页
- `Ctrl+W` - 关闭标签页
- `Ctrl+Tab` - 下一个标签页
- `Ctrl+Shift+Tab` - 上一个标签页

### 复制粘贴
- 鼠标选中文本 - 自动复制到剪贴板
- `Ctrl+V` - 粘贴
- `Ctrl+Shift+C` / `Ctrl+Shift+V` - 复制 / 粘贴（默认快捷键，仍可用）

### 其他
- `Ctrl+Shift+R` - 重新加载配置
- `Win+R` 输入 `wezterm-gui` - 快速启动

## 🎨 主题

- **WezTerm**: Tokyo Night
- **Starship**: Tokyo Night（自定义配色）

## 📦 依赖

- [WezTerm](https://wezfurlong.org/wezterm/)
- [Starship](https://starship.rs/)
- [Maple Mono NF CN](https://github.com/subframe7536/maple-font)（中英文等宽字体，带 Nerd Font 图标）

## 📝 文件说明

- `.wezterm.lua` - WezTerm 主配置文件
- `.gitignore` - Git 忽略文件（排除 WezTerm 程序文件）
- `add-wezterm-to-context-menu.reg` - Windows 右键菜单注册表文件（需手动导入）
- `starship.toml` - Starship 提示符配置（Tokyo Night 配色，克隆后复制到 `~\.config\starship.toml`）

## 🔧 可选配置

### 右键菜单集成（仅 Windows）

双击 `add-wezterm-to-context-menu.reg` 导入注册表，即可在文件夹右键菜单添加"在此处打开 WezTerm"。

## 📚 参考资料

- [WezTerm 官方文档](https://wezfurlong.org/wezterm/)
- [Starship 配置指南](https://starship.rs/config/)
- [Tokyo Night 主题](https://github.com/tokyo-night/tokyo-night-vscode-theme)

## 📄 许可

MIT License
