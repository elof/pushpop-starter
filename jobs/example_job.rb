require 'pushpop'

# This create the very basic setup of the job - essentially just gives it a name
job 'Simple Math' do

  # This will tell the job to run every 5 seconds
  every 5.seconds

  # Very simply, the first step of this job returns `10` every time it runs
  step 'return 10' do 10 end

  # This will increment whatever the first step returned by 20, and respond with that
  step 'increase by 20' do |response|
    20 + response
  end

  # This outputs a very basic HTML template containing the results of the math in the previous steps
  step 'print out via template' do |response|
    html = template 'first_template.html.erb', response
    puts 'Hey Pushpop, let\'s do a math!'
    puts html
    html
  end

end
