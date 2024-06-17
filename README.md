下载源码方法:

   # 下载源码
   git clone https://github.com/lwb1978/openwrt-gecoosac package/openwrt-gecoosac
   make menuconfig
   
配置菜单:
   make menuconfig
   # 找到 LuCI -> Applications, 选择 luci-app-gecoosac, 保存后退出。

编译:
   # 编译固件
   make package/luci-app-gecoosac/compile V=s
