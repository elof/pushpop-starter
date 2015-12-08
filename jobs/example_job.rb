require 'pushpop'
require 'keen'
require 'gems'


job 'Ruby SDK' do

    every 24.hours

    step 'webhook' do
      Gems.info 'keen'
    end

    step 'push to Keen IO' do |response|
        Keen.publish(:sdk_installs, response )
    end

end
