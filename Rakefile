def run_tests(platform, browser, version)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" parallel_split_test spec")
end

task :mac_chrome_68 do
  run_tests('macOS 10.13', 'chrome', '68.0')
end


task :macOS_chrome_67 do
  run_tests('macOS 10.13', 'chrome', '67')
end

task :win_firefox_62 do
  run_tests('Windows 10', 'firefox','62.0')
end

#add your envs here
multitask :test_parallel => [
    :mac_chrome_68,
    :macOS_chrome_67,
    :win_firefox_62
  ] do
    puts 'Running Watir on Cloud'
end

