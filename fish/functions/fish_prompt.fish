function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l last_status $status

  set -l cyan (set_color 0ff)
  set -l yellow (set_color yellow)
  set -l red (set_color red)
  set -l blue (set_color 0cf)
  set -l green (set_color green)
  set -l normal (set_color normal)
  set -l black (set_color black)
  set -l mycolor (set_color f69)

  set -l cwd $cyan(pwd | sed "s:^$HOME:~:")

  # Display [venvname] if in a virtualenv
  if set -q VIRTUAL_ENV
      echo -n -s (set_color -b cyan black) '[' (basename "$VIRTUAL_ENV") ']' $normal ' '
  end

  # Print pwd or full path
  echo -n -s $green '⭍ ' $cwd $normal 

  # Show git branch and status
  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if [ (_git_is_dirty) ]
      set git_info '(' $yellow $git_branch "±" $normal ')'
    else
      set git_info '(' $green $git_branch $normal ')'
    end
    echo -n -s ' · ' $git_info $normal
  end

  set -l prompt_color $normal
  if test $last_status = 0
    set prompt_color $mycolor
  end

  # Terminate with a nice prompt char
  echo -e ''
  echo -e -n -s $prompt_color '➽ ' $normal
end
