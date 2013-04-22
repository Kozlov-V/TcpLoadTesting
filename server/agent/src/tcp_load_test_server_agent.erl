-module(tcp_load_test_server_agent).
%% API
-export([start/0, stop/0]).


%% ===================================================================
%% API functions
%% ===================================================================

start() ->
	application:start(sasl),
	timer:sleep(1000),
	application:start(os_mon),
	timer:sleep(1000),
	application:start(tcp_load_test_server_agent).


stop() ->
	application:stop(os_mon),
	timer:sleep(1000),
	application:stop(tcp_load_test_server_agent).


%% ===================================================================
%% Local Functions
%% ===================================================================
