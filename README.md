# 集客 AC OpenWRT 插件 1.0 版
## 注意：1.0 版仅支持集客 AP 7.5 及以下版本的固件，如 AP 固件大于 7.5 请使用 2.1 版 AC 插件。
-------------------------------------------

### 下载源码方法:

 ```Brach

   # 下载源码
   git clone -b v1.0 https://github.com/lwb1978/openwrt-gecoosac package/openwrt-gecoosac
   make menuconfig

 ```

### 配置菜单:

 ```Brach

   make menuconfig
   # 找到 LuCI -> Applications, 选择 luci-app-gecoosac, 保存后退出。

 ```

### 编译:

 ```Brach

   # 编译固件
   make package/luci-app-gecoosac/compile V=s

 ```
