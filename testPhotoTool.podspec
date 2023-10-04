#
# Be sure to run `pod lib lint testPhotoTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'testPhotoTool'
  s.version          = '0.0.3'
  s.summary          = 'Im testing the pod to later add to my projects'
  s.swift_versions   = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  testPhotoTool

  Unleash the power of testPhotoTool – the ultimate tool for seamless photo capture and server integration in your Swift projects. Empower your applications with advanced camera functionality and streamline the process of capturing and sharing photos with the world.
  
  Key Features:
  
  Effortless Photo Capture: testPhotoTool provides a user-friendly interface for capturing high-quality photos directly from your iOS application. With just a few lines of code, you can integrate a fully functional camera into your app, allowing users to snap pictures effortlessly.
  
  Customizable User Experience: Tailor the camera interface to match your app's unique branding and style. Customize buttons, layouts, and visual elements to create a seamless user experience that resonates with your audience.
  
  Seamless Server Integration: Say goodbye to complex networking code. testPhotoTool simplifies the process of sending photos and associated data to your server. With built-in HTTP request functionality, you can effortlessly transmit photos and metadata, allowing your app to interact with your backend with ease.
  
  SwiftUI Compatibility: Designed with SwiftUI in mind, testPhotoTool seamlessly integrates into your SwiftUI-based projects. Create stunning, modern interfaces that leverage the full potential of Swift's powerful features.
  
  Robust Documentation: Access comprehensive documentation and code examples that guide you through every aspect of integrating testPhotoTool into your application. Whether you're a seasoned developer or new to iOS development, you'll find the resources you need to get up and running quickly.
  
  Community and Support: Join a thriving community of developers who are using testPhotoTool to enhance their apps. Benefit from ongoing support, updates, and a network of fellow developers who can help you succeed.
  
  Getting Started:
  
  Installation: Add testPhotoTool to your project as a Swift Package or CocoaPods dependency.
  
  Configuration: Customize the camera interface, define your server endpoints, and tailor the user experience to match your app's unique style.
  
  Capture and Transmit: Implement photo capture and data transmission using the intuitive API provided by testPhotoTool.
  
  Enhance Your App: Leverage the power of testPhotoTool to take your iOS app to the next level. Deliver a seamless and feature-rich experience to your users.
                       DESC

  s.homepage         = 'https://github.com/ShpendAppbites/testPhotoTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '58985607' => 'shpend.tahiri15@gmail.com' }
  s.source           = { :git => 'https://github.com/ShpendAppbites/testPhotoTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'

  s.source_files = 'Classes/**/*.{swift}'
  # s.source_files = './Classes/*'

  
  # s.resource_bundles = {
  #   'testPhotoTool' => ['testPhotoTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
