# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'quickPrac' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for quickPractice
  def testing_pods
    pod 'Quick'
    pod 'Nimble'
  end

  target 'quickPracTests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods
  end

  target 'quickPracUITests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods

  end

  # Manually making Quick compiler version be swift 3.2
    # post_install do |installer|
    #     installer.pods_project.targets.each do |target|
    #         if target.name == 'Quick'
    #             print "Changing Quick swift version to 3.2\n"
    #             target.build_configurations.each do |config|
    #                 config.build_settings['SWIFT_VERSION'] = '3.2'
    #             end
    #         end
    #     end
    # end

end
