# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
# session_root "/root/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "main"; then
  new_window "markdown"
  #----------------
  run_cmd "cd /vagrant/"
  run_cmd "clear"
  run_cmd "vm"

  #---------------
  window_root "/root/dotfiles/"
  new_window "dotfiles"
  run_cmd 'vim -c ":CtrlSpaceLoadWorkspace"'
  split_h 40
  select_pane 1
  split_v 30
  select_pane 2
  run_cmd "gs"
  select_pane 0

  #---------------
  window_root "/vagrant/projects/issues/"
  new_window "issues"
  run_cmd 'vim -c ":CtrlSpaceLoadWorkspace"'
  split_h
  select_pane 1
  run_cmd "clear"
  split_v 30
  select_pane 2
  run_cmd "clear"

  #---------------
  window_root "/vagrant/projects/issues/"
  new_window "issues-git"
  split_h
  select_pane 1
  run_cmd "gs"
fi

finalize_and_go_to_session
