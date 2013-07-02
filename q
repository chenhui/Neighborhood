
[1mShowing all accessible frames in stack (67 in total):[0m
--
=> #0  index <UsersController#index()>
   #1 [method]  send_action <ActionController::ImplicitRender#send_action(method, *args)>
   #2 [method]  process_action <AbstractController::Base#process_action(method_name, *args)>
   #3 [method]  process_action <ActionController::Rendering#process_action(*arg1)>
   #4 [block]   block in process_action <AbstractController::Callbacks#process_action(*args)>
   #5 [method]  _run__683037087__process_action__474907379__callbacks <UsersController#_run__683037087__process_action__474907379__callbacks()>
   #6 [method]  __run_callback <ActiveSupport::Callbacks::ClassMethods#__run_callback(key, kind, object, &blk)>
   #7 [method]  _run_process_action_callbacks <ActionController::Base#_run_process_action_callbacks(key=?, &blk)>
   #8 [method]  run_callbacks <ActiveSupport::Callbacks#run_callbacks(kind, *args, &block)>
   #9 [method]  process_action <AbstractController::Callbacks#process_action(*args)>
   #10 [method]  process_action <ActionController::Rescue#process_action(*args)>
   #11 [block]   block in process_action <ActionController::Instrumentation#process_action(*args)>
   #12 [block]   block in instrument <ActiveSupport::Notifications.instrument(name, payload=?)>
   #13 [method]  instrument <ActiveSupport::Notifications::Instrumenter#instrument(name, payload=?)>
   #14 [method]  instrument <ActiveSupport::Notifications.instrument(name, payload=?)>
   #15 [method]  process_action <ActionController::Instrumentation#process_action(*args)>
   #16 [method]  process_action <ActionController::ParamsWrapper#process_action(*args)>
   #17 [method]  process_action <ActiveRecord::Railties::ControllerRuntime#process_action(action, *args)>
   #18 [method]  process <AbstractController::Base#process(action, *args)>
   #19 [method]  process <AbstractController::Rendering#process(*arg1)>
   #20 [method]  dispatch <ActionController::Metal#dispatch(name, request)>
   #21 [method]  dispatch <ActionController::RackDelegation#dispatch(action, request, response=?)>
   #22 [block]   block in action <ActionController::Metal.action(name, klass=?)>
   #23 [method]  dispatch <ActionDispatch::Routing::RouteSet::Dispatcher#dispatch(controller, action, env)>
   #24 [method]  call <ActionDispatch::Routing::RouteSet::Dispatcher#call(env)>
   #25 [block]   block in call <Journey::Router#call(env)>
   #26 [method]  call <Journey::Router#call(env)>
   #27 [method]  call <ActionDispatch::Routing::RouteSet#call(env)>
   #28 [method]  call <ActionDispatch::BestStandardsSupport#call(env)>
   #29 [method]  call <Rack::ETag#call(env)>
   #30 [method]  call <Rack::ConditionalGet#call(env)>
   #31 [method]  call <ActionDispatch::Head#call(env)>
   #32 [method]  call <ActionDispatch::ParamsParser#call(env)>
   #33 [method]  call <ActionDispatch::Flash#call(env)>
   #34 [method]  context <Rack::Session::Abstract::ID#context(env, app=?)>
   #35 [method]  call <Rack::Session::Abstract::ID#call(env)>
   #36 [method]  call <ActionDispatch::Cookies#call(env)>
   #37 [method]  call <ActiveRecord::QueryCache#call(env)>
   #38 [method]  call <ActiveRecord::ConnectionAdapters::ConnectionManagement#call(env)>
   #39 [block]   block in call <ActionDispatch::Callbacks#call(env)>
   #40 [method]  _run__104290630__call__986671342__callbacks <ActionDispatch::Callbacks#_run__104290630__call__986671342__callbacks()>
   #41 [method]  __run_callback <ActiveSupport::Callbacks::ClassMethods#__run_callback(key, kind, object, &blk)>
   #42 [method]  _run_call_callbacks <ActionDispatch::Callbacks#_run_call_callbacks(key=?, &blk)>
   #43 [method]  run_callbacks <ActiveSupport::Callbacks#run_callbacks(kind, *args, &block)>
   #44 [method]  call <ActionDispatch::Callbacks#call(env)>
   #45 [method]  call <ActionDispatch::Reloader#call(env)>
   #46 [method]  call <ActionDispatch::RemoteIp#call(env)>
   #47 [method]  call <ActionDispatch::DebugExceptions#call(env)>
   #48 [method]  call <ActionDispatch::ShowExceptions#call(env)>
   #49 [method]  call_app <Rails::Rack::Logger#call_app(request, env)>
   #50 [block]   block in call <Rails::Rack::Logger#call(env)>
   #51 [method]  tagged <ActiveSupport::TaggedLogging#tagged(*tags)>
   #52 [method]  call <Rails::Rack::Logger#call(env)>
   #53 [method]  call <ActionDispatch::RequestId#call(env)>
   #54 [method]  call <Rack::MethodOverride#call(env)>
   #55 [method]  call <Rack::Runtime#call(env)>
   #56 [method]  call <ActiveSupport::Cache::Strategy::LocalCache::Middleware#call(env)>
   #57 [method]  call <Rack::Lock#call(env)>
   #58 [method]  call <ActionDispatch::Static#call(env)>
   #59 [method]  call <Rails::Engine#call(env)>
   #60 [method]  call <Rails::Application#call(env)>
   #61 [method]  call <Rack::ContentLength#call(env)>
   #62 [method]  call <Rails::Rack::LogTailer#call(env)>
   #63 [method]  service <Rack::Handler::WEBrick#service(req, res)>
   #64 [method]  service <WEBrick::HTTPServer#service(req, res)>
   #65 [method]  run <WEBrick::HTTPServer#run(sock)>
   #66 [block]   block in start_thread <WEBrick::GenericServer#start_thread(sock, &block)>
