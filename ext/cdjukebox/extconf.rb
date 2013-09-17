require 'mkmf'

begin
  require 'pry'
rescue LoadError
  puts 'might consider running this under bundle with pry'
end

shared_lib_dir = File.expand_path(File.join(File.dirname(__FILE__),"../../lib/shared_lib"))

$CFLAGS << " -I #{shared_lib_dir}"
$LDFLAGS << " -L #{shared_lib_dir}"
dir_config(File.expand_path(File.dirname(__FILE__)))

# link it
if ENV['FAIL']
  # link it but the path won't be found when running the executable
  # unless it's in the cwd, unless the path is explicitly set.
  find_library('doubleme', 'doubleme')
  # so we access the shared lib
  $defs << '-DDOUBLEME'
end

# compile
create_makefile("CDJukeBox")
