require 'colored'

clearing :on

guard :shell do
  watch(/(.*).rb$/) do |m|
    puts "Modified #{m[0]}"

    output = ""
    errors = ""
    exit_status = Open3.popen3("rspec --tty --format documentation") do |stdin, stdout, strerr, wait_thr|
      stdin.close
      output << stdout.read
      errors << strerr.read
      wait_thr.value
    end

    puts output

    if exit_status.success? then
      puts errors.cyan
      puts "Passed".green
    else
      puts errors.red
      puts "Failed".white_on_red.to_eol
    end
  end
end
