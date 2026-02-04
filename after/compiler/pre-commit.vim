if exists("current_compiler")
  finish
endif
let current_compiler = "pre-commit"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=pre-commit\ run\ --all
CompilerSet errorformat=%f:%l:%m

