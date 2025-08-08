-- let g:conflict_marker_highlight_group = ''
-- let g:conflict_marker_begin = '^<<<<<<<\+ .*$'
-- let g:conflict_marker_common_ancestors = '^|||||||\+ .*$'
-- let g:conflict_marker_end   = '^>>>>>>>\+ .*$'

vim.cmd("hi ConflictMarkerBegin guibg=#2f7366")
vim.cmd("hi ConflictMarkerOurs guibg=#2e5049")
vim.cmd("hi ConflictMarkerEnd guibg=#2f628e")
vim.cmd("hi ConflictMarkerTheirs guibg=#344f69")
vim.cmd("hi ConflictMarkerCommonAncestorsHunk guibg=#754a81")
