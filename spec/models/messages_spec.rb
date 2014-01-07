require 'test_helper'

it { should have_valid(:message).when('sdfsadf') }
it { should_not have_valid(:message).when('',nil) }