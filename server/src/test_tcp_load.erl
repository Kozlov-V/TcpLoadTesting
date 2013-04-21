-module(test_tcp_load).
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
	application:start(test_tcp_load).


stop() ->
	application:stop(os_mon),
	timer:sleep(1000),
	application:stop(test_tcp_load).


%% ===================================================================
%% Local Functions
%% ===================================================================
