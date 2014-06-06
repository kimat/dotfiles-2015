# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "/root/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "main"; then
  new_window "markdown"
  #----------------
  run_cmd "cd /vagrant/"
  run_cmd "clear"
  run_cmd "vm"

  new_window "dotfiles"
  #---------------
  run_cmd "cd /root/dotfiles/"
  run_cmd "clear"
  run_cmd "vd"
  split_h 40
  select_pane 1
  run_cmd "cd /root/dotfiles/"
  run_cmd "clear"
  split_v 30
  select_pane 2
  run_cmd "cd /root/dotfiles/"
  run_cmd "clear"
  run_cmd "gs"
  select_pane 0

  new_window "launcher"
  #---------------
  run_cmd "cd /root/launcher/"
  run_cmd "clear"
  split_h
  select_pane 1
  run_cmd "cd /root/launcher/"
  run_cmd "clear"
  split_v 30
  select_pane 2
  run_cmd "cd /root/launcher/"
  run_cmd "clear"

  new_window "view"

  #load_window "example"

  # Select the default active window on session creation.
  #select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
