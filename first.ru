require 'rack'
 
# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ["<em>Hello, My name is Seth starr and I'm here to tell you my story as a Software Engineer!!!</em>"]]
end
 
run my_server
