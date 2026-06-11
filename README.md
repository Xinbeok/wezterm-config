# WezTerm 配置

个人 WezTerm 终端配置，使用 Tokyo Night 主题。

## ✨ 特性

- 🎨 **Tokyo Night 主题** - 深蓝紫色调，舒适护眼
- 🪟 **窗格管理** - 支持分屏和多窗格操作
- 📑 **标签页管理** - 类似浏览器的标签页体验
- ⚡ **Starship 提示符** - 显示 Git 信息和语言版本
- 🎯 **快捷键优化** - 支持 Ctrl+C/V 复制粘贴
- 💻 **跨平台兼容** - Windows 和 Mac 通用

## 🚀 快速开始

### Windows

1. 克隆配置：
```bash
git clone https://github.com/Xinbeok/wezterm-config.git E:\WezTerm
```

2. 设置环境变量：
```bash
setx WEZTERM_CONFIG_FILE "E:\WezTerm\.wezterm.lua"
```

3. 安装 Starship：
```bash
winget install --id Starship.Starship
```

4. 重启 WezTerm

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
- `Ctrl+C` - 复制
- `Ctrl+V` - 粘贴

### 其他
- `Ctrl+Shift+R` - 重新加载配置
- `Win+R` 输入 `wezterm-gui` - 快速启动

## 🎨 主题

- **WezTerm**: Tokyo Night
- **Starship**: Tokyo Night（自定义配色）

## 📦 依赖

- [WezTerm](https://wezfurlong.org/wezterm/)
- [Starship](https://starship.rs/)
- [JetBrains Mono Nerd Font](https://www.nerdfonts.com/)（推荐）

## 📝 文件说明

- `.wezterm.lua` - WezTerm 主配置文件
- `add-wezterm-to-context-menu.reg` - Windows 右键菜单注册表文件（需手动导入）
- `C:\Users\<用户名>\.config\starship.toml` - Starship 配置文件

## 🔧 可选配置

### 右键菜单集成（仅 Windows）

双击 `add-wezterm-to-context-menu.reg` 导入注册表，即可在文件夹右键菜单添加"在此处打开 WezTerm"。

## 📚 参考资料

- [WezTerm 官方文档](https://wezfurlong.org/wezterm/)
- [Starship 配置指南](https://starship.rs/config/)
- [Tokyo Night 主题](https://github.com/tokyo-night/tokyo-night-vscode-theme)

## 📄 许可

MIT License
