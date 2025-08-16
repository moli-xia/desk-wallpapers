# 🚀 手动上传指南

如果自动脚本失败，请按以下步骤手动操作：

## 步骤1: 打开PowerShell

在项目目录右键选择"在终端中打开"或"Open in Terminal"

## 步骤2: 执行以下命令

```powershell
# 确保在正确目录
cd "d:\Program\desk-wallpapers"

# 清理旧配置
if (Test-Path ".git") { Remove-Item -Recurse -Force ".git" }

# 初始化Git
git init
git config user.name "moli-xia"
git config user.email "moli-xia@users.noreply.github.com"

# 添加文件
git add .
git commit -m "feat: 桌面壁纸屏保工具 v2.1.4"

# 推送到GitHub
git branch -M main
git remote add origin https://github.com/moli-xia/desk-wallpapers.git
git push -u origin main --force
```

## 步骤3: 创建Release

1. 访问: https://github.com/moli-xia/desk-wallpapers/releases/new
2. 标签: `v2.1.4`
3. 标题: `桌面壁纸屏保工具 v2.1.4`
4. 描述:
```
## 🎨 桌面壁纸屏保工具 v2.1.4

### ✨ 更新内容
- 修复README格式显示问题
- 优化项目文档结构
- 改进上传脚本稳定性

### 📥 使用方法
1. 下载 WallpaperDownloader.exe
2. 双击运行即可使用
3. 点击"立即更换壁纸"开始下载壁纸

### 💻 系统要求
- Windows 10/11
- 网络连接
```

## 步骤4: 构建并上传exe文件

```bash
# 安装构建工具
pip install pyinstaller

# 构建可执行文件
pyinstaller --onefile --windowed --icon=app_icon.ico --name=WallpaperDownloader main.py
```

然后上传 `dist\WallpaperDownloader.exe` 到Release。

## ❗ 常见问题

### 问题1: "不是内部或外部命令"
- 确保已安装Git: https://git-scm.com/download/win
- 重启命令行窗口

### 问题2: 推送失败
- 确认GitHub仓库已创建
- 检查网络连接
- 尝试使用GitHub Desktop

### 问题3: 权限问题
- 确保有仓库写入权限
- 检查GitHub登录状态