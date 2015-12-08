require 'pushpop'
require 'keen'
require 'gems'


job 'Ruby SDK' do

    every 24.hours

    step 'webhook' do
      Gems.info 'keen'
      # Gems.add_web_hook 'keen', 'https://api.keen.io/3.0/projects/5011efa95f546f2ce2000000/events/ruby_sdk?api_key=d71fcdb488a6d064ba6308a9242b9f263e981f521f03d16942a407c802b2bdade581ac093f815975b9abcc73788e8e48a01b7382c804d1df4fb582bfac6468ee507b0e75fd3fcbd8c7db8ba3074f383e4721a3d7916d217e4a7e4f85fda3ee8e5fae56fc3b8a4bf17eb2f7c41213ee6e'
    end

    # This outputs a very basic HTML template containing the results of the math in the previous steps
    # step 'print out via template' do |response|
    #   html = template 'first_template.html.erb', response
    #   puts 'works'
    #   puts html
    #   html
    # end


    step 'push to Keen IO' do |response|
        Keen.publish(:ruby_sdk, response )
    end

end
