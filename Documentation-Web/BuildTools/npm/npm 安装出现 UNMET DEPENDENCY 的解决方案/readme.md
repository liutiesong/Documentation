# npm 安装出现 UNMET DEPENDENCY 的解决方案

### 解决方案一：
```
rm -rf node_modules/    # 删除已安装的模块
npm cache clean         # 清除 npm 内部缓存
npm install             # 重新安装
```

### 解决方案二：
```
rm -rf node_modules/    # 删除已安装的模块
sudo npm update -g npm  # 更新 npm
npm install             # 重新安装
```