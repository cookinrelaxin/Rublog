guard :minitest, spring: true do

  # Run tests when they change
  watch(%r{^test/(.*)/?(.*)_test\.rb$})  

  # Run tests when the test helper changes
  watch(%r{^test/test_helper\.rb$})

  # Run tests when controllers change
  watch(%r{^app\/controllers\/\w*.rb$}) { 'test' }

  # Run tests when views change
  watch(%r{^app\/views\/([^\/]*)\/\w*.html.erb$}) { 'test' }

  # Run tests when routes change
  watch(%r{^config\/routes.rb$}) { 'test' }
end
