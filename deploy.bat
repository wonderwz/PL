@echo off
echo ========================================
echo    Astro Call Down 在线版部署工具
echo ========================================
echo.

REM 检查文件是否存在
if not exist "astro_call_down_online.html" (
    echo 错误：找不到 astro_call_down_online.html 文件
    echo 请确保该文件在当前目录中
    pause
    exit /b 1
)

echo 正在准备部署文件...

REM 复制文件并重命名为 index.html
copy "astro_call_down_online.html" "index.html" >nul

echo 文件准备完成！
echo.
echo 现在你可以选择以下部署方式：
echo.
echo 1. GitHub Pages
echo    - 创建 GitHub 仓库
echo    - 上传 index.html 文件
echo    - 在设置中启用 Pages
echo.
echo 2. Netlify (推荐新手)
echo    - 访问 https://netlify.com
echo    - 拖拽 index.html 到部署区域
echo.
echo 3. Vercel
echo    - 访问 https://vercel.com
echo    - 上传 index.html 文件
echo.
echo 4. 本地测试
echo    - 双击 index.html 在浏览器中打开
echo.

set /p choice="是否现在打开本地测试？(y/n): "
if /i "%choice%"=="y" (
    start index.html
    echo 本地测试已启动！
)

echo.
echo 部署完成后，请测试以下功能：
echo - Feature 切换 (FBA/Coupon/SP)
echo - Stage 选择
echo - Reason Code 选择
echo - 复制功能
echo - 响应式布局
echo.
echo 部署指南详见 deployment_guide.md 文件
pause
