#---------------
window_root "/vagrant/projects/missions/"
new_window "missions"
run_cmd 'v'
split_h 30
select_pane 1
split_v
run_cmd "rails console"
split_v
run_cmd "rails server -p 121"
split_v
run_cmd "guard"
