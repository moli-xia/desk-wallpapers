# 🎨 桌面壁纸屏保工具

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)
[![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)](https://www.microsoft.com/windows/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> 一个简洁优雅的桌面壁纸下载和屏保工具，支持自动下载高质量壁纸并设置为桌面背景。

## ✨ 主要功能

- 🖼️ **智能壁纸下载** - 自动获取高质量壁纸并设置为桌面背景
- 🌟 **智能屏保系统** - 自动下载屏保图片，支持顺序循环播放
- 🔄 **智能预加载机制** - 根据切换间隔智能预加载下一张图片，优化体验
- ⚙️ **自定义设置** - 支持自定义屏保切换间隔和空闲检测时间
- 🎯 **单实例运行** - 防止重复启动，自动激活现有窗口
- 🎨 **现代化界面** - 简洁美观的用户界面设计
- 🗂️ **自动文件管理** - 智能整理和验证下载的图片文件
- 🛡️ **图片质量保证** - 自动验证图片完整性，清理无效文件

## 🚀 快速开始

### 📥 直接使用（推荐）

1. 前往 [Releases](https://github.com/moli-xia/desk-wallpapers/releases) 页面
2. 下载最新版本的 `WallpaperDownloader.exe`
3. 双击运行即可使用
4. 点击"立即更换壁纸"开始下载壁纸
5. 点击"启动屏保"进入屏保模式

### 🛠️ 从源码运行

```bash
# 克隆项目
git clone https://github.com/moli-xia/desk-wallpapers.git
cd desk-wallpapers

# 安装依赖
pip install -r requirements.txt

# 运行程序
python main.py
```

## 💻 系统要求

- **操作系统**: Windows 10/11
- **Python版本**: 3.8+ (仅源码运行需要)
- **网络连接**: 用于下载壁纸

## 🛠️ 技术特性

- **GUI框架**: tkinter + ttkbootstrap (现代化界面)
- **图像处理**: Pillow (PIL)
- **网络请求**: requests
- **系统集成**: Windows API调用
- **单实例控制**: Windows互斥锁机制
- **多线程处理**: 后台下载，不阻塞UI
- **智能缓存**: 自动管理图片缓存和预加载

## 📁 项目结构

```
desk-wallpapers/
├── main.py                    # 主程序文件
├── requirements.txt           # Python依赖
├── app_icon.ico              # 应用图标
├── WallpaperDownloader.spec  # PyInstaller配置文件
├── upload.bat                # GitHub上传脚本
├── MANUAL_UPLOAD.md          # 手动上传说明
├── LICENSE                   # MIT许可证
├── README.md                 # 项目说明
├── dist/                     # 构建输出目录
│   └── WallpaperDownloader.exe
└── .github/
    └── workflows/
        └── build.yml         # 自动构建配置
```

## 🔧 开发说明

### 构建可执行文件

```bash
# 安装PyInstaller
pip install pyinstaller

# 使用spec文件构建（推荐）
pyinstaller WallpaperDownloader.spec

# 或者使用命令行参数构建
pyinstaller --onefile --windowed --icon=app_icon.ico --name=WallpaperDownloader main.py
```

**注意**: 推荐使用 `WallpaperDownloader.spec` 文件进行构建，该文件已经配置好了图标和资源文件的正确包含方式。

### 功能模块

- **壁纸下载**: 从网络API获取高质量图片
- **系统集成**: 调用Windows API设置桌面背景
- **智能屏保**: 全屏图片展示，支持顺序循环和智能预加载
- **图片验证**: 自动验证图片完整性和有效性
- **缓存管理**: 智能管理图片缓存，自动清理无效文件
- **文件管理**: 自动创建和管理壁纸文件夹

## 📝 更新日志

### v2.1.7 (最新)

- 🚀 **重大更新**: 完全重构屏保图片切换逻辑
- 🔄 **智能预加载**: 根据切换间隔75%时间点预加载下一张图片
- 📋 **顺序播放**: 屏保图片按顺序循环播放，避免重复显示
- 🛡️ **图片验证**: 启动时自动验证图片完整性，清理无效文件
- 📦 **自动下载**: 首次启动自动下载第一张屏保图片
- 🎯 **优化缓存**: 维护最少缓存量，智能管理存储空间
- 🧹 **界面优化**: 简化屏保间隔设置，移除冗余按钮

### v2.1.6

- 🔧 修复屏保时间间隔显示不正确的问题
- 📝 改进状态提示信息的准确性
- 🎯 优化空闲时间设置的同步机制

### v2.1.5

- 🎨 修复应用图标显示问题
- 📦 优化PyInstaller打包配置
- 🔧 完善WallpaperDownloader.spec配置文件
- 🪟 确保图标在窗口、任务栏和文件管理器中正确显示
- 🛠️ 改进图标加载机制，支持开发和打包环境

### v2.1.4

- ✨ 新增单实例运行功能
- 🔒 使用Windows互斥锁防止重复启动
- 🪟 自动激活现有窗口
- 🧹 优化资源管理和错误处理

## 🤝 贡献指南

欢迎提交Issue和Pull Request！

1. Fork 本项目
2. 创建功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 创建Pull Request

## 📄 许可证

本项目采用 [MIT 许可证](LICENSE) - 详情请查看LICENSE文件。

## 🙏 致谢

- 感谢所有贡献者的支持
- 壁纸来源于网络公开API
- 图标设计灵感来自现代扁平化设计

---

**如有问题或建议，欢迎提交 [Issue](https://github.com/moli-xia/desk-wallpapers/issues)**