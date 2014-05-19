# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "/root/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "main"; then
  new_window "ecam"
  #----------------
  run_cmd "cd /vagrant/ecam/"
  run_cmd "ve"
  split_h
  select_pane 1
  run_cmd "cd /vagrant/ecam/"
  split_v
  select_pane 2
  run_cmd "cd /vagrant/ecam/"
  

  new_window "vim|tmux"
  #--------------------
  run_cmd "cd /root/dotfiles/"
  run_cmd "vv"
  split_h
  select_pane 1
  run_cmd "cd /root/dotfiles/"
  run_cmd "vt"

  new_window "git"
  #---------------
  run_cmd "cd /root/dotfiles/"
  split_h
  select_pane 1
  run_cmd "cd /root/dotfiles/"
  split_v 30
  select_pane 2
  run_cmd "cd /root/dotfiles/"
  run_cmd "gs"

  new_window "view"

  #load_window "example"

  # Select the default active window on session creation.
  #select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
