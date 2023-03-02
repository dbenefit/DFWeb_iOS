Pod::Spec.new do |s|
  s.name         = 'DFWeb'
  s.version      = '1.0.0'
  s.summary      = '东福WebSDk集成'
  s.homepage     = 'https://github.com/dbenefit/DFWeb_iOS'
  s.license      = 'MIT'
  s.authors      = {'dbenefit' => 'ext-system@dongfangfuli.com'}
  s.platform     = :ios, '11.0'
  s.source       = {:git => 'https://github.com/dbenefit/DFWeb_iOS.git', :tag => s.version}
  s.dependency     "ZXingObjC", "~> 3.6.5"
  s.source_files = 'DFWeb/SDK/**/*.{h,m,swift}' 
  s.resource_bundles = {
    'DFResources' => ['DFWeb/SDK/Resources/*.png']
  }
  s.swift_versions = ['5.0']
  s.framework    = 'UIKit','Foundation','QuartzCore','ImageIO','CoreGraphics','AVFoundation'
  s.requires_arc = true
end


