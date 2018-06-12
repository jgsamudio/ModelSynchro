#
# Be sure to run `pod lib lint ModelSynchro.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ModelSynchro'
  s.version          = '0.3.0'
  s.summary          = 'An automated way to generate network models.'

  s.description      = <<-DESC
An automated way to generate network models from JSON and keep them up to date.
                       DESC

  s.homepage         = 'https://github.com/jgsamudio/ModelSynchro'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jonathan Samudio' => 'jonathan2457@gmail.com' }
  s.source           = { :git => 'https://github.com/jgsamudio/ModelSynchro.git', :tag => s.version.to_s }

  s.ios.deployment_target  = '9.0'

  s.preserve_paths = 'ModelSynchro/Source/**/*'
  s.source_files = 'ModelSynchro/Source/Classes/**/*'

end
