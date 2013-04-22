{application, tcp_load_test_server_agent,
 [{description, "TCP load test server agent"},
  {vsn, "0.1.0"},
  {modules, [tcp_load_test_server_agent, tltsa_app, tltsa_sup, tltsa_server]},
  {registered, [tltsa_sup]},
  {applications, [kernel, stdlib, sasl, os_mon]},
  {mod, {ttl_app, []}}
 ]}.