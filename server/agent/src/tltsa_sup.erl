-module(tltsa_sup).
-behaviour(supervisor).
%% API
-export([start_link/0]).
%% Supervisor callbacks
-export([init/1]).
-define(SERVER, ?MODULE).


%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).


init([]) ->
    Server = {ttl_server, {ttl_server, start_link, []},
              permanent, 1000, supervisor, [ttl_server]},
              
    Children = [Server],
    RestartStrategy = {one_for_one, 10, 1},
    {ok, {RestartStrategy, Children}}.


%% ===================================================================
%% Local Functions
%% ===================================================================
