# rongcloud-ios-imdemo-pluginboard

rongcloud-ios-imdemo-pluginboard 是基于融云 IMKit SDK 的输入框 ➕ 区域设置功能，使用了融云的 4.0 SDK。


# 使用步骤

## 参数配置

开发者需填写 `RCSConfig` 的 `Appkey` 和 `Token`，

[AppKey 获取地址](https://developer.rongcloud.cn/app/appkey/0vMK99Huzz-qw40Ybv4NDA)

[Token 获取地址](https://developer.rongcloud.cn/apitool/Mw8EsJmV43kZBugTMSAZXg)

## 前置条件

1. 在 info.plist  中添加“相册”、“摄像头”、“位置”、“麦克风”权限，否则会出现崩溃的情况。

   ```
   <key>NSCameraUsageDescription</key>
   <string>使用相机</string>
   <key>NSLocationAlwaysUsageDescription</key>
   <string>获取当前地理位置</string>
   <key>NSLocationWhenInUseUsageDescription</key>
   <string>获取当前地理位置</string>
   <key>NSMicrophoneUsageDescription</key>
   <string>使用麦克风</string>
   <key>NSPhotoLibraryAddUsageDescription</key>
   <string>访问相册</string>
   <key>NSPhotoLibraryUsageDescription</key>
   <string>访问相册</string>
   ```

2. 设置 ATS 用于上传文件。

3. 在运行项目之前，需要先执行

   ```
   pod repo update
   pod install
   ```

   

4. 新用户默认是空的会话列表，是无法进入会话页面的。开发者可在 [开发者后台 - 服务管理 - API 调用 - 消息服务](https://developer.rongcloud.cn/apitool/kNUDHRczlPHkECa0SJ8X3Q)  中调用对应接口给当前用户发送消息。

   发送成功后，接收方的会话列表展示此会话。

## 功能实现

### 1. 发送文件

执行会话页面的 addSendFile 方法后，在点击输入框 ➕ 按钮弹出的功能版中就会添加“文件”功能，该功能访问的文件夹路径是“沙盒/Documents/MyFile”，默认这个路径是不存在的，可以自行创建 MyFile 文件夹并导入文件，下载接收到的文件 SDK 会自动创建该文件夹。

### 2. 发送名片

参考 [名片文档](https://docs.rongcloud.cn/v4/views/im/ui/guide/private/conversation/card/ios.html)  集成使用

### 3. 小视频

Podfile 中已经导入了小视频库（Sight），且需要您在 [融云开发者后台 -> 服务管理 -> 小视频 -> 服务设置](https://developer.rongcloud.cn/sight/index/KpaFPx6hr-NP8XIjLKkAvA) 中开启该功能，才可以正常使用。

### 4. 语音输入

可以参考 [知识库](https://support.rongcloud.cn/ks/NTc2) 实现，由于使用的是科大讯飞，所以需要开发者设置讯飞的 Appkey，同时更换对应的 iflyMSC.framework

### 5. 音视频

Podfile 中已经导入了音视频库（RongCloudRTC），且需要在 [融云开发者后台 -> 服务管理 -> 音视频服务 -> 服务设置](https://developer.rongcloud.cn/audio/audio/8Ofwl5CgOm0vKoFews6Gag) 中开启该功能，才可以正常使用。


# 更多

[融云官网](https://www.rongcloud.cn/)

[融云文档](https://docs.rongcloud.cn/v3/)
