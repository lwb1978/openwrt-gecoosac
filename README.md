# 集客 AC OpenWRT 插件 2.1 版
## 注意：2.1 版仅支持集客 AP 7.6 及以上版本的固件，低版本固件无法接收 AC 下发的配置，有条件的建议更新 AP 固件到 8.x ，如 AP 无法更新固件，请使用 v1.0 分支中的 AC 插件。
-------------------------------------------

### 下载源码方法:

 ```Brach

   # 下载源码
   git clone https://github.com/lwb1978/openwrt-gecoosac package/openwrt-gecoosac
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
