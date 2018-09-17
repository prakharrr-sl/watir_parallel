def run_tests(platform, browser, version)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" parallel_split_test spec")
end

task :linux_chrome_66 do
  run_tests('LINUX', 'chrome', '66')
end

task :linux_chrome_67 do
  run_tests('LINUX', 'chrome', '67')
end

task :linux_chrome_68 do
  run_tests('LINUX', 'chrome', '68')
end

task :linux_fire_59 do
  run_tests('LINUX', 'firefox', '59')
end

task :linux_fire_60 do
  run_tests('LINUX', 'firefox', '60')
end

task :linux_fire_61 do
  run_tests('LINUX', 'firefox','61')
end

multitask :test_parallel => [
    :linux_chrome_66,
    :linux_chrome_67,
    :linux_chrome_68,
    :linux_fire_59,
    :linux_fire_60,
    :linux_fire_61

  ]*10 do
    puts 'Running Watir on Cloud'
end

# multitask :run_n_times do
#   10.times do
#     Rake::Task[:test_parallel].invoke
#     Rake::Task[:test_parallel].reenable
#     Rake::Task[:test_parallel].prerequisite_tasks.each do |task|
#       task.reenable
#     end
#     #sleep needed?
#     # sleep(10*2)
#   end
# end