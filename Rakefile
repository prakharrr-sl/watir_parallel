def run_tests(platform, browser, version)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" parallel_split_test spec")
end

task :mac_chrome_68 do
  run_tests('macOS 10.13', 'chrome', '68.0')
end


task :macOS_chrome_67 do
  run_tests('macOS 10.13', 'chrome', '67')
end
#add your envs here
multitask :test_sauce => [
    :mac_chrome_68,
    :macOS_chrome_67
  ] do
    puts 'Running Watir on Cloud'
end

