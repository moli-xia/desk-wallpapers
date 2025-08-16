# 📤 GitHub 上传指南

本指南将帮助您将项目代码上传到 GitHub 仓库。

## 🚀 快速上传（推荐）

### 方法一：使用批处理脚本

1. **双击运行** `upload.bat` 文件
2. 脚本会自动完成以下操作：
   - 初始化 Git 仓库
   - 添加所有项目文件
   - 提交代码更改
   - 推送到 GitHub

### 方法二：手动 Git 命令

```bash
# 1. 初始化 Git 仓库
git init

# 2. 配置用户信息（首次使用需要）
git config user.name "your-username"
git config user.email "your-email@example.com"

# 3. 添加远程仓库
git remote add origin https://github.com/moli-xia/desk-wallpapers.git

# 4. 添加所有文件
git add .

# 5. 提交更改
git commit -m "feat: 桌面壁纸屏保工具 v2.1.5 - 修复图标显示问题"

# 6. 推送到 GitHub
git push -u origin main --force
```

## 📋 上传前检查清单

- [ ] 确保所有重要文件都已包含
- [ ] 检查 `.gitignore` 文件配置
- [ ] 验证 `README.md` 内容是否最新
- [ ] 确认版本号已更新
- [ ] 测试可执行文件是否正常工作

## 📁 将要上传的文件

```
✅ main.py                    # 主程序文件
✅ requirements.txt           # Python依赖
✅ app_icon.ico              # 应用图标
✅ WallpaperDownloader.spec  # PyInstaller配置
✅ upload.bat                # 上传脚本
✅ README.md                 # 项目说明
✅ LICENSE                   # 许可证
✅ .gitignore               # Git忽略文件
✅ dist/WallpaperDownloader.exe  # 可执行文件
✅ .github/workflows/build.yml   # 自动构建配置
```

## 🎯 创建 Release

上传成功后，建议创建一个新的 Release：

1. 访问：https://github.com/moli-xia/desk-wallpapers/releases/new
2. 填写以下信息：
   - **Tag version**: `v2.1.5`
   - **Release title**: `桌面壁纸屏保工具 v2.1.5`
   - **Description**: 
     ```
     ## 🎨 v2.1.5 更新内容
     
     - 🎨 修复应用图标显示问题
     - 📦 优化PyInstaller打包配置
     - 🔧 完善WallpaperDownloader.spec配置文件
     - 🪟 确保图标在窗口、任务栏和文件管理器中正确显示
     - 🛠️ 改进图标加载机制，支持开发和打包环境
     
     ## 📥 下载
     
     直接下载 `WallpaperDownloader.exe` 即可使用，无需安装Python环境。
     ```
3. 上传 `dist/WallpaperDownloader.exe` 文件作为附件
4. 点击 "Publish release"

## ❗ 常见问题

### 问题1：Git 未安装
**解决方案**：从 https://git-scm.com/download/win 下载安装 Git

### 问题2：权限被拒绝
**解决方案**：
1. 确保已登录 GitHub 账户
2. 检查仓库访问权限
3. 使用个人访问令牌（PAT）进行身份验证

### 问题3：推送失败
**解决方案**：
1. 检查网络连接
2. 尝试使用 `--force` 参数强制推送
3. 查看 `MANUAL_UPLOAD.md` 进行手动上传

## 🔗 相关链接

- **GitHub 仓库**: https://github.com/moli-xia/desk-wallpapers
- **Issues**: https://github.com/moli-xia/desk-wallpapers/issues
- **Releases**: https://github.com/moli-xia/desk-wallpapers/releases

---

**提示**: 如果遇到问题，请查看 `MANUAL_UPLOAD.md` 文件获取更详细的手动上传说明。