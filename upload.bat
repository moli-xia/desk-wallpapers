@echo off
chcp 65001 >nul
echo ========================================
echo     桌面壁纸屏保工具 - GitHub 上传脚本
echo ========================================
echo.

REM 检查Git是否可用
git --version >nul 2>&1
if errorlevel 1 (
    echo 错误: Git未安装或不在PATH中
    echo 请从 https://git-scm.com/download/win 下载安装Git
    echo.
    echo 或者使用PowerShell脚本: upload.ps1
    pause
    exit /b 1
)

echo [1/5] 初始化Git仓库...
if exist .git rmdir /s /q .git
git init
git config user.name "moli-xia"
git config user.email "moli-xia@users.noreply.github.com"

echo [2/5] 添加所有文件...
git add .

echo [3/5] 提交代码...
git commit -m "feat: 桌面壁纸屏保工具 v2.1.4 - 修复README格式"

echo [4/5] 设置主分支...
git branch -M main
git remote add origin https://github.com/moli-xia/desk-wallpapers.git 2>nul

echo [5/5] 推送到GitHub...
git push -u origin main --force

if errorlevel 0 (
    echo.
    echo ========================================
    echo           上传成功！
    echo ========================================
    echo.
    echo 项目地址: https://github.com/moli-xia/desk-wallpapers
    echo.
    echo 下一步: 创建Release
    echo 访问: https://github.com/moli-xia/desk-wallpapers/releases/new
) else (
    echo.
    echo ========================================
    echo           推送失败！
    echo ========================================
    echo.
    echo 请尝试使用PowerShell脚本: upload.ps1
    echo 或查看 MANUAL_UPLOAD.md 进行手动上传
)

pause