Pod::Spec.new do |s|
  s.name             = 'CoreMLProto'
  s.version          = '0.0.1'
  s.summary          = 'Protobuf bindings for CoreML *.mlmodel format'

  s.description      = <<-DESC
This lib can be useful if you want to modify not compiled CoreML model on-the-fly.
This lib parses not compiled protobuf file (*.mlmodel). You need to compile model for usage (MLModel.compile) after modifications.
                       DESC

  s.homepage         = 'https://github.com/opedge/CoreMLProto'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'opedge' => 'opedge@gmail.com' }
  s.source           = { :git => 'https://github.com/opedge/CoreMLProto.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'CoreMLProto/Classes/**/*'

  s.dependency 'SwiftProtobuf', '~> 1.0.1'
end
