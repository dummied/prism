require 'test/unit'
require File.join(File.dirname(__FILE__), "../vendor/gems/environment")

lib_path = File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

require 'contest'
require 'redgreen'

require 'hmachine'

def get_fixture(filename)
  open(File.join(File.dirname(__FILE__), 'fixtures', "#{filename}")).read
end