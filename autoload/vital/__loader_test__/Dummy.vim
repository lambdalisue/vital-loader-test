let s:save_cpoptions = &cpoptions
set cpoptions&vim

let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions
