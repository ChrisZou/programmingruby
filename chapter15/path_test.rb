#!/usr/bin/env ruby -w
def print_env(env)
    puts ENV[env.upcase]
end

print_env('USER')
print_env('RUBYLIB')
print_env('RUBYLIB')
print_env('RUBYPATH')
print_env 'rubyshell'
print_env 'home'
