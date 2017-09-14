Pod::Spec.new do |s|
  s.name         = "ZQCoreUtility"
  s.version      = "0.1"
  s.summary      = "Core utilities in Swift"
  s.description  = <<-EOS
  ZQCoreUtility 项目中用到的一些工具，会不断扩展。
  EOS
  s.homepage     = "https://github.com/zhaozzq/ZQCoreUtility"
  s.license      = 'MIT'
  s.author             = { "zhaozq" => "zhao_zzq2012@163.com" }
  s.social_media_url   = "http://weibo.com/2665006971"

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.source       = { :git => "https://github.com/zhaozzq/ZQCoreUtility.git", :tag => s.version }
  
  s.source_files = 'ZQCoreUtility/Core/*.swift'
  s.requires_arc = true
  # s.swift_version = '4.0'

end