
Pod::Spec.new do |s|
  s.name             = 'xJPush'
  s.version          = '1.0.1'
  s.summary          = '极光推送框架封装.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kaibuleite/xJPush'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kaibuleite' => '177955297@qq.com' }
  s.source           = { :git => 'https://github.com/kaibuleite/xJPush.git', :tag => s.version.to_s }

  # 该库最低支持版本，可以修改为对应版本
  s.ios.deployment_target = '13.0'

  s.source_files = 'xJPush/Classes/**/*'
  #s.resources    = 'xJPush/Assets/**/*'
  
  s.resource_bundles = {
	'xJPushBundle' => ['xJPush/{Assets,Classes}/**/*.{xcassets,png,xib,nib,storyboard,storyboardc,mp3}']
  }
  
  #极光推送使用了静态库，这边要做配置
  s.static_framework = true

  s.dependency 'JCore'
  s.dependency 'JPush'
  
end
