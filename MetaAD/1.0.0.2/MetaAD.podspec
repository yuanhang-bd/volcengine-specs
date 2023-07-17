Pod::Spec.new do |s|
  s.name             = 'MetaAD'
  s.version          = '1.0.0.2'
  s.summary          = 'Pangrowth MetaAD.'
  s.description      = <<-DESC
Pangrowth MetaAD
                       DESC

  s.homepage         = 'https://www.pangle.cn/'
  s.license          = { :type => 'MIT', :file => 'MetaAD/LICENSE' }
  s.author           = { 'sunxianglin' => 'sunxianglin@bytedance.com' }
  s.source           = { :http => "https://sf3-fe-tos.pglstatp-toutiao.com/obj/pangle-empower/MetaAD/#{s.version.to_s}/MetaAD-#{s.version.to_s}.zip" }

  s.ios.deployment_target = '9.0'
  
   s.resources = 'MetaAD/MetaAD.bundle'
   s.public_header_files = ['MetaAD/headers/MetaADManager.h','MetaAD/headers/MetaADView.h']
   s.vendored_library = 'MetaAD/libMetaAD_MetaAD_awesome_ios.a'

   s.dependency 'Ads-CN', '>= 4.7'
   s.dependency 'BURelyFoundation/CSJ'
   s.dependency 'RangersAPM/Core'
   s.dependency 'RangersAPM/Public'
   s.dependency 'RangersAPM/Crash'
   s.dependency 'RangersAPM/HMD'
   s.dependency 'RangersAPM/EventMonitor'
   s.dependency 'RangersAPM/CN'

 if $DouyinSDKUseTTSDKFramework
   s.dependency 'TTSDKFramework/Video'
 else
   s.dependency 'TTSDK/Core'
   s.dependency 'TTSDK/TTFFmpeg'
   s.dependency 'TTSDK/PlayerCore'
   s.dependency 'TTSDK/Player'
 end

   s.dependency 'YYText'
   s.dependency 'Masonry'
   s.dependency 'lottie-ios'
end
