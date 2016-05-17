#!/bin/bash

# drag in env vars, aliases, and functions for convenience in the shell
source $UTIL_SCRIPTS_DIR/shell/shell_env.bash

# drag in env vars, aliases, and functions for convenience for various terminals
source $UTIL_SCRIPTS_DIR/terminal/terminal_env.bash

# drag in env vars, aliases, and functions for git and git-related tools
source $UTIL_SCRIPTS_DIR/git/git_env.bash

# drag in env vars, aliases, and functions for testing browsers
source $UTIL_SCRIPTS_DIR/browsers/browsers_env.bash

# drag in env vars, aliases, and functions for various editors
source $UTIL_SCRIPTS_DIR/editors/editors_env.bash

# drag in env vars, aliases, and functions for java development and java-based tools
source $UTIL_SCRIPTS_DIR/java/java_env.bash

# drag in env vars, aliases, and functions for javascript development and js-based tools
source $UTIL_SCRIPTS_DIR/javascript/javascript_env.bash

# drag in env vars, aliases, and functions for erlang development and tools
source $UTIL_SCRIPTS_DIR/erlang/erlang_env.bash

# drag in env vars, aliases, and functions for ruby development and tools
source $UTIL_SCRIPTS_DIR/ruby/ruby_env.bash

# drag in env vars, aliases, and functions for python development and tools
source $UTIL_SCRIPTS_DIR/python/python_env.bash

# drag in env vars, aliases, and functions for oracle development and ora-based tools
source $UTIL_SCRIPTS_DIR/oracle/oracle_env.bash

# drag in other things
source $UTIL_SCRIPTS_DIR/other/other_env.bash
