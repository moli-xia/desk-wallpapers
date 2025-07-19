# 🎨 桌面壁纸屏保工具
![](https://s3.bmp.ovh/imgs/2025/07/19/3e9d9a80852cdf84.png)
[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)
[![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)](https://www.microsoft.com/windows/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> 一个简洁优雅的桌面壁纸下载和屏保工具，支持自动下载高质量壁纸并设置为桌面背景。

## ✨ 主要功能

- 🖼️ **智能壁纸下载** - 自动获取高质量壁纸并设置为桌面背景
- 🌟 **图片屏保功能** - 一键启动精美的图片屏保模式
- 🎯 **单实例运行** - 防止重复启动，自动激活现有窗口
- 🎨 **现代化界面** - 简洁美观的用户界面设计
- 🗂️ **自动文件管理** - 智能整理下载的壁纸文件

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

- **GUI框架**: Tkinter (Python内置)
- **图像处理**: Pillow
- **网络请求**: requests
- **系统集成**: Windows API调用
- **单实例控制**: Windows互斥锁机制

## 📁 项目结构

```
desk-wallpapers/
├── main.py              # 主程序文件
├── requirements.txt     # Python依赖
├── app_icon.ico        # 应用图标
├── LICENSE             # MIT许可证
├── README.md           # 项目说明
└── .github/
    └── workflows/
        └── build.yml   # 自动构建配置
```

## 🔧 开发说明

### 构建可执行文件

```bash
# 安装PyInstaller
pip install pyinstaller

# 构建单文件可执行程序
pyinstaller --onefile --windowed --icon=app_icon.ico --name=WallpaperDownloader main.py
```

### 功能模块

- **壁纸下载**: 从网络API获取高质量图片
- **系统集成**: 调用Windows API设置桌面背景
- **屏保模式**: 全屏图片展示功能
- **文件管理**: 自动创建和管理壁纸文件夹

## 📝 更新日志

### v2.1.4 (最新)

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
