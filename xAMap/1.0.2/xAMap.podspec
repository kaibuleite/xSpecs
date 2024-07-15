#
# Be sure to run `pod lib lint xAMap.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'xAMap'
  s.version          = '1.0.2'
  s.swift_version    = '5'          # Swift版本号
  s.summary          = '高德地图组件化.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kaibuleite/xAMap'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kaibuleite' => '177955297@qq.com' }
  
  # 库的克隆地址，这个地址必须改成正确的克隆地址，可以是 https 或 ssh
  s.source           = { :git => 'https://github.com/kaibuleite/xAMap.git', :tag => s.version.to_s }
  
   # 该库最低支持版本，可以修改为对应版本
   s.ios.deployment_target = '13.0'

   # 类文件，默认是 Classes 文件夹下的所有文件夹及文件，默认不需要改
   s.source_files = 'xAMap/Classes/**/*'
   # 资源文件默认是 Assets 文件夹下的所有文件夹及文件，由于是静态库，需要进行处理
#   s.resources = 'xAMap/Assets/**/*'
   
   # 打包资源文件 (必须声明xib后缀，才会编译成nib）
   s.resource_bundles = {
       'xAMapBundle' => ['xAMap/{Assets,Classes}/**/*.{xcassets,png,xib,nib,storyboard,storyboardc}']
   }
	
   #高德地图使用了静态库，这边要做配置
   s.static_framework = true
   
   #s.dependency 'xFramework'
   #s.dependency 'AMap2DMap' #高德2D地图SDK
   s.dependency 'AMap3DMap' #高德3D地图SDK
   s.dependency 'AMapSearch' #高德地图搜索功能
   s.dependency 'AMapLocation' #高德地图定位SDK
  
end
