#---------------
window_root "/vagrant/projects/issues/"
new_window "issues"
run_cmd 'v'
split_h 40
select_pane 1
run_cmd "clear"

#---------------
window_root "/vagrant/projects/issues/"
new_window "issues-git"
split_h
select_pane 1
run_cmd "gs"

#---------------
window_root "/vagrant/projects/issues/"
new_window "issues-server"
run_cmd "redis-server /etc/redis/redis.conf"
split_h
select_pane 1
run_cmd "sleep 5"
run_cmd "bundle exec sidekiq"
split_v
select_pane 2
run_cmd "guard"
select_pane 0
split_v
select_pane 1
run_cmd "rails server"
