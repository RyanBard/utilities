#!/bin/bash

base_dir="$UTIL_SCRIPTS_DIR"

# drag in env vars, aliases, and functions for convenience in the shell
source $base_dir/shell/shell_env.bash

# drag in env vars, aliases, and functions for convenience for various terminals
source $base_dir/terminal/terminal_env.bash

# drag in env vars, aliases, and functions for git and git-related tools
source $base_dir/git/git_env.bash

# drag in env vars, aliases, and functions for testing browsers
source $base_dir/browsers/browsers_env.bash

# drag in env vars, aliases, and functions for various editors
source $base_dir/editors/editors_env.bash

# drag in env vars, aliases, and functions for java development and java-based tools
source $base_dir/java/java_env.bash

# drag in env vars, aliases, and functions for javascript development and js-based tools
source $base_dir/javascript/javascript_env.bash

# drag in env vars, aliases, and functions for erlang development and tools
source $base_dir/erlang/erlang_env.bash

# drag in env vars, aliases, and functions for ruby development and tools
source $base_dir/ruby/ruby_env.bash

# drag in env vars, aliases, and functions for python development and tools
source $base_dir/python/python_env.bash

# drag in env vars, aliases, and functions for oracle development and ora-based tools
source $base_dir/oracle/oracle_env.bash

# drag in other things
source $base_dir/other/other_env.bash
