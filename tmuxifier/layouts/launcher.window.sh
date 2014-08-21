#---------------
window_root "/vagrant/projects/launcher/"
new_window "launcher"
run_cmd "v"
split_h 30
run_cmd "ls"
split_v
run_cmd "gs"
split_v
run_cmd "rackup -p 8080 config.ru"
split_v
run_cmd "guard"
