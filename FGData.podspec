Pod::Spec.new do |s|

  s.name         = "FGData"             #名称
  s.version      = "0.0.5"              #版本号
  s.summary      = "FGData"       #简短介绍
  s.description  = <<-DESC
                    FGData
                    * Markdown 格式
                   DESC

  s.homepage     = "http://www.baidu.com"
  s.license      = "MIT"                #开源协议
  s.author             = { "liguojun" => "358304990@qq.com" }

  s.source       = { :git => "https://github.com/CNFeelGood/FGData.git", :tag => s.version }
  
  s.platform     = :ios, "10.0"          #支持的平台及版本，这里我们呢用swift，直接上9.0
  s.requires_arc = true                 #是否使用ARC

  s.source_files  = "FGData/**/*.{h,m}"    #OC可以使用类似这样"Classes/**/*.{h,m}"

  s.frameworks = 'UIKit', 'QuartzCore', 'Foundation'    #所需的framework,多个用逗号隔开
  s.module_name = 'FGData'              #模块名称

end
