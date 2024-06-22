# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html

Pod::Spec.new do |s| 
  s.name             = 'xFramework'	# 库名称，默认和工程名相同，建议不改
  s.version          = '1.0.6'		# 库的版本，每次升级版本后必须要在这里修改版本号
  s.summary          = 'Swift框架整合'  # 该库的简介
  s.swift_version    = '5'      	# Swift版本号
  s.description      = <<-DESC		# 详细描述，一般不用改，有readme呢
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kaibuleite/xFramework'	# 库的主页，需要更改为正确的主页
  s.license          = { :type => 'MIT', :file => 'LICENSE' }		# 许可，私有库可以不改
  s.author           = { 'kaibuleite' => '177955297@qq.com' }		# 作者，可以不改	

  # 库的克隆地址，这个地址必须改成正确的克隆地址，可以是 https 或 ssh	
  s.source           = { :git => 'https://github.com/kaibuleite/xFramework.git', :tag => s.version.to_s }

  # 该库最低支持版本，可以修改为对应版本
  s.ios.deployment_target = '13.0'
	
  # 类文件，默认是 Classes 文件夹下的所有文件夹及文件，默认不需要改
  s.source_files = 'xFramework/Classes/**/*'
  # 资源文件默认是 Assets 文件夹下的所有文件夹及文件
  s.resources = 'xFramework/Assets/**/*' 

  s.dependency 'Alamofire' #最新版仅支持 iOS10 以上系统
  s.dependency 'MJRefresh'
  s.dependency 'SDWebImage' 

end
