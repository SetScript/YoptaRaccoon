require 'colorize'
require_relative 'core/standart.rb'

@tcode = ""
район = STANDART.new

loop do
  print "кудыкина гора:"
  path = gets.chomp

  begin
    ntcode = File.read(path)
    eval(ntcode)
    eval(@tcode)
    erorrcode = 0
  rescue Errno::EINVAL
    erorrcode = 1
  rescue Errno::ENOENT
    erorrcode = 2
  rescue
    erorrcode = 3
  ensure
    if erorrcode == 0
      puts "   -код выполнян,тащи грызянки. Епта код: #{erorrcode}".green
    elsif erorrcode == 1 || erorrcode == 2
      puts "   -чота мне кажется такого нема. Епта код: #{erorrcode}".red
    else
      puts "   -нихуя не робит, поясни за хуеписи. Епта код: #{erorrcode}".red
    end
  end
end