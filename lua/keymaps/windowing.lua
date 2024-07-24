local vim = vim
local keymap = vim.keymap.set

keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'switch window left' })
keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'switch window right' })
keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'switch window down' })
keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'switch window up' })

keymap('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true, desc = 'create vertical split' })
keymap('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true, desc = 'create horizonal split' })
keymap('n', '<leader>sV', '<C-w>H', { noremap = true, silent = true, desc = 'switch to vertical split' })
keymap('n', '<leader>sH', '<C-w>K', { noremap = true, silent = true, desc = 'switch to horizontal split' })

keymap('t', '<ESC>', '<ESC><C-\\><C-n>', { noremap = true, silent = true, desc = 'escape terminal mode' })

function ResizeWindowVerticalIncrease()
	local count = vim.v.count
	if count == 0 then
		count = 20
	end
	vim.cmd('vertical resize +' .. count)
end

function ResizeWindowVerticalDecrease()
	local count = vim.v.count
	if count == 0 then
		count = 20
	end
	vim.cmd('vertical resize -' .. count)
end

function ResizeWindowHorizontalIncrease()
	local count = vim.v.count
	if count == 0 then
		count = 10
	end
	vim.cmd('resize +' .. count)
end

function ResizeWindowHorizontalDecrease()
	local count = vim.v.count
	if count == 0 then
		count = 10
	end
	vim.cmd('resize -' .. count)
end

keymap(
	'n',
	'<leader>rl',
	':<C-u>lua ResizeWindowVerticalIncrease()<CR>',
	{ noremap = true, silent = true, desc = 'quick resize vertical +' }
)
keymap(
	'n',
	'<leader>rh',
	':<C-u>lua ResizeWindowVerticalDecrease()<CR>',
	{ noremap = true, silent = true, desc = 'quick resize vertical -' }
)
keymap(
	'n',
	'<leader>rk',
	':<C-u>lua ResizeWindowHorizontalIncrease()<CR>',
	{ noremap = true, silent = true, desc = 'quick resize horizontal +' }
)
keymap(
	'n',
	'<leader>rj',
	':<C-u>lua ResizeWindowHorizontalDecrease()<CR>',
	{ noremap = true, silent = true, desc = 'quick resize horizontal -' }
)
