require 'rubygems'
require 'yaml'

def save_irb(filename)
  File.open(filename,'w') {|f| f.puts Readline::HISTORY.entries[0..-2]}
end

# Loading extensions of the console. This is wrapped
# because some might not be included in your Gemfile
# and errors will be raised
def extend_console(name, required = true)
  require name if required
  yield if block_given?
  $console_extensions << name
rescue LoadError
  $console_extensions << "#{name}(failed)"
end

$console_extensions = []

extend_console 'awesome_print' do
  AwesomePrint.irb!
end

extend_console 'interactive_editor' do
end

# Show results of all extension-loading
puts "~> Console extensions: #{$console_extensions.join(' ')}"
