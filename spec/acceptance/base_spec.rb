require 'spec_helper_acceptance'
require_relative './version.rb'

describe 'python class' do

  context 'basic setup' do
    # Using puppet_apply as a helper
    it 'should work with no errors' do
      pp = <<-EOF

      class { 'python': }

      pythonpip { 'nagiosplugin':
        ensure => 'present',
      }

      EOF

      # Run it twice and test for idempotency
      expect(apply_manifest(pp).exit_code).to_not eq(1)
      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    #pip list | grep nagiosplugin
    it "pip nagiosplugin" do
      expect(shell("LC_ALL=C pip list | grep nagiosplugin").exit_code).to be_zero
    end


  end
end
