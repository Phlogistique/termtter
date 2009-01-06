require File.dirname(__FILE__) + '/../../lib/termtter'

describe Termtter::Client, 'when the plugin fib is loaded' do
  it 'should add command fib' do
    Termtter::Client.should_receive(:add_command).with(/^fib\s+(\d+)/)
    plugin 'fib'
  end

  it 'should define fib method' do
    plugin 'fib'
    (0..10).map {|i| fib i }.should == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  end
end