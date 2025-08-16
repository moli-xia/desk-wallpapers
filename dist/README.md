# 可执行文件目录

此目录用于存放编译后的可执行文件。

## 构建可执行文件

请运行以下命令来构建可执行文件：

```bash
# 安装PyInstaller
pip install pyinstaller

# 构建单文件可执行程序
pyinstaller --onefile --windowed --icon=app_icon.ico --name=WallpaperDownloader main.py
```

构建完成后，可执行文件将位于 `dist/WallpaperDownloader.exe`。

## 注意事项

- 构建前请确保已安装所有依赖：`pip install -r requirements.txt`
- 构建的exe文件大约27MB
- 首次运行可能需要Windows Defender扫描