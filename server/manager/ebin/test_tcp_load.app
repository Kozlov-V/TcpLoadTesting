{application, test_tcp_load,
 [{description, "TCP Load Testing"},
  {vsn, "0.1.0"},
  {modules, [ttl_app, ttl_sup, ttl_server]},
  {registered, [ttl_sup]},
  {applications, [kernel, stdlib, sasl, os_mon]},
  {mod, {ttl_app, []}}
 ]}.