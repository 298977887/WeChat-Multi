# 微信多开批处理脚本

该脚本允许在 Windows 系统上批量启动多个微信实例，支持自动检测微信安装路径，或者手动输入路径来实现多开功能。使用此脚本，用户可以方便地关闭已运行的微信进程，并根据需求指定开启多个微信客户端。

## 功能介绍

1. **自动关闭微信进程**：启动脚本前会关闭所有正在运行的微信进程，以避免冲突。
2. **微信路径检测**：脚本会尝试自动检测微信的安装路径，若无法检测到，则允许用户手动输入微信路径。
3. **批量启动微信**：用户可指定需要启动的微信实例数量，脚本会根据输入逐一启动微信客户端。

## 使用方法

### 1. 下载脚本

- 克隆或下载此仓库的代码到本地。

### 2. 运行脚本

- 双击运行 `wechat-multi.bat` 文件。请确保以 **管理员身份** 运行脚本，以获得关闭进程的权限。

### 3. 配置与启动

- **关闭微信进程**：脚本会自动关闭所有正在运行的微信进程。
- **微信路径检测**：脚本会自动查询注册表中的微信安装路径。如果路径无法自动检测，请手动输入微信的安装路径或快捷方式。例如：
  - 安装路径：`C:\Program Files\Tencent\WeChat\WeChat.exe`
  - 快捷方式路径：`C:\Users\Public\Desktop\微信.lnk`
- **输入启动数量**：输入要启动的微信数量，脚本会按照输入批量启动微信实例。

### 4. 注意事项

- 请确保微信已正确安装在系统中，并且路径有效。
- 如果脚本无法检测到微信安装路径，用户可以通过输入正确的路径解决问题。
- 启动的微信实例数量由用户决定，但请注意同时开启过多的微信实例可能导致系统性能下降。

## 示例

```bash
请输入微信的安装路径（如：C:\Program Files\Tencent\WeChat\WeChat.exe）：
C:\Program Files\Tencent\WeChat\WeChat.exe
请输入要开启的微信数量: 3
正在启动微信...
启动数量： 3
```

## 环境要求

- **操作系统**：Windows 7 或更高版本
- **微信安装**：确保微信客户端已安装在系统中

## 常见问题

1. **找不到微信安装路径**：如果微信的安装路径无法被自动检测到，请手动输入正确的安装路径或快捷方式路径。
2. **多开失败**：请确保微信已关闭并且输入的安装路径正确，必要时重新启动计算机。
3. **管理员权限**：请确保以管理员身份运行该脚本，特别是需要关闭已有微信进程时。

## 作者

该脚本由 **阿瑞** 编写，旨在提供便捷的微信多开功能，适合需要同时运行多个微信客户端的用户。