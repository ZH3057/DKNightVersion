Pod::Spec.new do |s|
  s.name         = "DKNightVersion"
  s.version      = "2.0"
  s.summary      = "DKNightVersion is a lightweight iOS framework adding different theme to your iOS app."
  s.description  = <<-DESC
                   DKNightVersion is a light weight framework. It is mainly built through `objc/runtime` library and reflection, providing a neat approach  adding night mode to your iOS app. A great many codes of this framework is automatically generated by Ruby script.

                   The most delightful feature of DKNightVersion is that it provides a DKColorTable.txt file to help you manage all the colors in your project. It is easily-used and well-designed. Hope you have a great joy to use DKNightVersion to integrate night mode in your Apps.
                    DESC
  s.homepage     = "https://github.com/Draveness/DKNightVersion"
  s.license      = "MIT"
  s.author             = { "Draveness" => "stark.draven@gmail.com" }
  s.platform     = :ios, "7.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/Draveness/DKNightVersion.git", :tag => s.version }
  s.source_files = "Classes/DKNightVersion.h"

  s.public_header_files = "Classes/DKNightVersion.h"

  s.subspec 'DeallocBlockExecutor' do |ss|
    ss.source_files = "Classes/DeallocBlockExecutor/*.{h,m}"
  end

  s.subspec 'ColorTable' do |ss|
    ss.source_files = "Classes/ColorTable/*{h,m}"
    ss.dependency 'DKNightVersion/Core'
    ss.resource = "Classes/ColorTable/DKColorTable.txt"
  end

  s.subspec 'Core' do |ss|
    ss.source_files = "Classes/Core/*.{h,m}"
    ss.dependency 'DKNightVersion/DeallocBlockExecutor'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = "Classes/UIKit/*.{h,m}", "Classes/Manual/*.{h,m}"
    ss.dependency 'DKNightVersion/Core'
  end

  s.subspec 'CoreAnimation' do |ss|
    ss.source_files = "Classes/CoreAnimation/*.{h,m}"
    ss.dependency 'DKNightVersion/Core'
  end

end
