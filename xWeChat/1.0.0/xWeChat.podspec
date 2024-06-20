
Pod::Spec.new do |s|
  s.name             = 'xWeChat'
  s.version          = '1.0.0'
  s.summary          = '微信框架封装' 

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kaibuleite/xWeChat' 
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kaibuleite' => '177955297@qq.com' }
  s.source           = { :git => 'https://github.com/kaibuleite/xWeChat.git', :tag => s.version.to_s } 

  # 该库最低支持版本，可以修改为对应版本
  s.ios.deployment_target = '13.0'

  s.source_files = 'xWeChat/Classes/**/*'
  #s.resources    = 'xWeChat/Assets/**/*' 
  
  s.resource_bundles = {
	'xWeChatBundle' => ['xWeChat/{Assets,Classes}/**/*.{xcassets,png,xib,nib,storyboard,storyboardc}']
  }

  
  #微信使用了静态库，这边要做配置
  s.static_framework = true

  s.dependency 'WechatOpenSDK'

end
