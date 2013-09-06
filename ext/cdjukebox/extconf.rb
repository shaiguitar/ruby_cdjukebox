require 'mkmf'
require 'pry'

shared_lib_dir = File.expand_path(File.join(File.dirname(__FILE__),"../../lib/shared_lib"))

$CFLAGS << " -I #{shared_lib_dir}"
$LDFLAGS << " -L #{shared_lib_dir}"

dir_config(File.expand_path(File.dirname(__FILE__)))

# link it
#find_library('doubleme', 'doubleme')
# compile
create_makefile("CDJukeBox")
