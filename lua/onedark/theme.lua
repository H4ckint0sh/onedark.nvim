local util = require("onedark.utils")
local colors = require("onedark.colors")

local M = {}
--
---@class Highlight
---@field fg string|nil
---@field bg string|nil
---@field sp string|nil
---@field style string|nil|Highlight

---@alias Highlights table<string,Highlight>

---@return Theme
function M.setup()
	---@class Theme
	---@field highlights Highlights
	local theme = {
		colors = colors,
	}

	local c = theme.colors

	theme.highlights = {
		-- Foo = { bg = c.Purple, fg = c.Purple },

		Comment = { fg = c.Comment, italic = true }, -- any comment
		ColorColumn = { bg = c.Back }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = c.TabOther }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = c.Back, bg = c.Front }, -- character under the cursor
		lCursor = { fg = c.Back, bg = c.Front }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = c.Back, bg = c.Front }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = c.None }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = { bg = c.None }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory = { fg = c.Blue }, -- directory names (and other special names in listings)
		DiffAdd = { bg = c.DiffAdd }, -- diff mode: Added line |diff.txt|
		DiffChange = { bg = c.DiffChange }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { bg = c.DiffDelete }, -- diff mode: Deleted line |diff.txt|
		DiffText = { bg = c.Front }, -- diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer = { fg = c.Back }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		-- TermCursor  = { }, -- cursor in a focused terminal
		-- TermCursorNC= { }, -- cursor in an unfocused terminal
		ErrorMsg = { fg = c.Error }, -- error messages on the command line
		VertSplit = { fg = c.Border }, -- the column separating vertically split windows
		WinSeparator = { fg = c.Border, bold = true }, -- the column separating vertically split windows
		Folded = { fg = c.Blue, bg = c.Border }, -- line used for closed folds
		FoldColumn = { bg = c.Back, fg = c.Comment }, -- 'foldcolumn'
		SignColumn = { bg = c.Back, fg = c.Border }, -- column where |signs| are displayed
		SignColumnSB = { bg = c.BackDark, fg = c.Front }, -- column where |signs| are displayed
		Substitute = { bg = c.Red, fg = c.Front }, -- |:substitute| replacement text highlighting
		LineNr = { fg = c.Comment }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = c.Purple }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen = { fg = c.Orange, bold = true }, -- The character under the cursor or just before it, if it is a paiRed bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = c.Front, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = c.Fron }, -- Area for messages and cmdline
		-- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = c.Blue }, -- |more-prompt|
		NonText = { fg = c.Border }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = c.Fron, bg = c.Back }, -- normal text
		NormalNC = { fg = c.Front, bg = c.Back }, -- normal text in non-current windows
		NormalSB = { fg = c.Fron, bg = c.Back }, -- normal text in sidebar
		NormalFloat = { fg = c.Front, bg = c.None }, -- Normal text in floating windows.
		FloatBorder = { fg = c.Front, bg = c.None },
		Pmenu = { bg = c.None, fg = c.Front }, -- Popup menu: normal item.
		PmenuSel = { bg = util.darken(c.Blue, 0.8) }, -- Popup menu: selected item.
		PmenuSbar = { bg = util.lighten(c.Blue, 0.95) }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = c.Front }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = c.Blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = c.BackDark, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = c.Search, fg = c.Front }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { bg = c.SearchCurrent, fg = c.Front }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { link = "IncSearch" },
		SpecialKey = { fg = c.Comment }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { sp = c.Error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = c.Warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = c.Info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = c.Hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = c.PopupFront, bg = c.None }, -- status line of current window
		StatusLineNC = { fg = c.Front, bg = c.None }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = c.None, fg = c.None }, -- tab pages line, not active tab page label
		TabLineFill = { bg = c.None }, -- tab pages line, where there are no labels
		TabLineSel = { fg = c.None, bg = c.Blue }, -- tab pages line, active tab page label
		Title = { fg = c.Blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = c.Selection }, -- Visual mode selection
		VisualNOS = { bg = c.Selection }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = c.Warning }, -- warning messages
		Whitespace = { fg = c.Comment }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = c.Yellow }, -- current match in 'wildmenu' completion

		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferRed" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant = { fg = c.Yellow }, -- (preferRed) any constant
		String = { fg = c.Green }, --   a string constant: "this is a string"
		Character = { fg = c.Green }, --  a character constant: 'c', '\n'
		-- Number        = { }, --   a number constant: 234, 0xff
		-- Boolean       = { }, --  a boolean constant: TRUE, false
		-- Float         = { }, --    a floating point constant: 2.3e10

		Identifier = { fg = c.Yellow }, -- (preferRed) any variable name
		Function = { fg = c.Blue }, -- function name (also: methods for classes)

		Statement = { fg = c.Purple, italic = true }, -- (preferRed) any statement
		-- Conditional   = { }, --  if, then, else, endif, switch, etc.
		-- Repeat        = { }, --   for, do, while, etc.
		Label     = { fg = c.Red }, --    case, default, etc.
		Operator  = { fg = c.Cyan }, -- "sizeof", "+", "*", etc.
		Keyword   = { fg = c.Front }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = c.Purple, italic = true }, -- (preferRed) generic Preprocessor
		-- Include       = { }, --  preprocessor #include
		-- Define        = { }, --   preprocessor #define
		-- Macro         = { }, --    same as Define
		-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

		Type = { fg = c.Yellow }, -- (preferRed) int, long, char, etc.
		-- StorageClass  = { }, -- static, register, volatile, etc.
		-- Structure     = { }, --  struct, union, enum, etc.
		-- Typedef       = { }, --  A typedef

		Special = { fg = c.cyan }, -- (preferRed) any special symbol
		-- SpecialChar   = { }, --  special character in a constant
		-- Tag           = { }, --    you can use CTRL-] on this
		-- Delimiter     = { }, --  character that needs attention
		-- SpecialComment= { }, -- special things inside a comment
		-- Debug         = { }, --    debugging statements

		Underlined = { underline = true }, -- (preferRed) text that stands out, HTML links
		Bold = { bold = true },
		Italic = { italic = true },

		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferRed) left blank, hidden  |hl-Ignore|

		Error = { fg = c.Error }, -- (preferRed) any erroneous construct
		Todo = { bg = c.Yellow, fg = c.Back }, -- (preferRed) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		qfLineNr = { fg = c.BackDark },
		qfFileName = { fg = c.Blue },

		htmlH1 = { fg = c.Purple, bold = true },
		htmlH2 = { fg = c.Blue, bold = true },

		-- mkdHeading = { fg = c.Orange, bold = true },
		-- mkdCode = { bg = c.terminal_Dark, fg = c.Front },
		mkdCodeDelimiter = { bg = c.Border, fg = c.Front },
		mkdCodeStart = { fg = c.Green, bold = true },
		mkdCodeEnd = { fg = c.Green, bold = true },
		-- mkdLink = { fg = c.Blue, underline = true },

		markdownHeadingDelimiter = { fg = c.Orange, bold = true },
		markdownCode = { fg = c.Green },
		markdownCodeBlock = { fg = c.Green },
		markdownH1 = { fg = c.Purple, bold = true },
		markdownH2 = { fg = c.Blue, bold = true },
		markdownLinkText = { fg = c.Blue, underline = true },

		["@punctuation.special.markdown"] = { fg = c.Orange, bold = true },
		["@text.literal.markdown_inline"] = { bg = c.BackDark, fg = c.Front },

		debugPC = { bg = c.BackDark }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = util.darken(c.Error, 0.1), fg = c.Info }, -- used for breakpoint colors in terminal-debug

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.
		LspReferenceText = { bg = c.Front }, -- used for highlighting "text" references
		LspReferenceRead = { bg = c.Front }, -- used for highlighting "read" references
		LspReferenceWrite = { bg = c.Front }, -- used for highlighting "write" references

		DiagnosticError = { fg = c.Error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn = { fg = c.Warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo = { fg = c.Info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint = { fg = c.Hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

		DiagnosticVirtualTextError = { bg = util.darken(c.Error, 0.1), fg = c.Error }, -- Used for "Error" diagnostic virtual text
		DiagnosticVirtualTextWarn = { bg = util.darken(c.Warning, 0.1), fg = c.Warning }, -- Used for "Warning" diagnostic virtual text
		DiagnosticVirtualTextInfo = { bg = util.darken(c.Info, 0.1), fg = c.Info }, -- Used for "Information" diagnostic virtual text
		DiagnosticVirtualTextHint = { bg = util.darken(c.Hint, 0.1), fg = c.Hint }, -- Used for "Hint" diagnostic virtual text

		DiagnosticUnderlineError = { undercurl = true, sp = c.Error }, -- Used to underline "Error" diagnostics
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.Warning }, -- Used to underline "Warning" diagnostics
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.Info }, -- Used to underline "Information" diagnostics
		DiagnosticUnderlineHint = { undercurl = true, sp = c.Hint }, -- Used to underline "Hint" diagnostics

		LspSignatureActiveParameter = { fg = c.Orange },
		LspCodeLens = { fg = c.Comment },

		LspInfoBorder = { fg = c.PopupFront, bg = c.None },

		ALEErrorSign = { fg = c.Error },
		ALEWarningSign = { fg = c.Warning },

		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute         = { };    -- (unstable) TODO: docs
		-- TSBoolean           = { };    -- For booleans.
		-- TSCharacter         = { };    -- For characters.
		-- TSComment           = { };    -- For comment blocks.
		TSNote                     = { fg = c.Back, bg = c.Info },
		["@text.warning"]          = { fg = c.Back, bg = c.Warning },
		["@text.danger"]           = { fg = c.Back, bg = c.Error },
		["@constructor"]           = { fg = c.Yellow }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		-- TSConditional       = { };    -- For keywords related to conditionnals.
		-- TSConstant          = { };    -- For constants
		-- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
		-- TSError             = { };    -- For syntax/parser errors.
		-- TSException         = { };    -- For exception related keywords.
		["@field"]                 = { fg = c.Orange }, -- For fields.
		-- TSFloat             = { };    -- For floats.
		-- TSFunction          = { };    -- For function (calls and definitions).
		-- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
		-- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		-- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		["@keyword"]               = { fg = c.Purple, italic = true }, -- For keywords that don't fall in previous categories.
		["@keyword.function"]      = { fg = c.Purple, italic = true }, -- For keywords used to define a fuction.
		["@label"]                 = { fg = c.Blue }, -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod            = { };    -- For method calls and definitions.
		-- TSNamespace                = { fg = c.Yellow }; -- For identifiers referring to modules and namespaces.
		-- TSNone              = { };    -- TODO: docs
		-- TSNumber            = { };    -- For all numbers
		["@operator"]              = { fg = c.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
		["@parameter"]             = { fg = c.Orange, italic = true }, -- For parameters of a function.
		-- TSParameterReference= { };    -- For references to parameters of a function.
		["@property"]              = { fg = c.Orange, italic = true }, -- Same as `TSField`.
		["@punctuation.delimiter"] = { fg = c.Front }, -- For delimiters ie: `.`
		["@punctuation.bracket"]   = { fg = c.Blue }, -- For brackets and parens.
		["@punctuation.special"]   = { fg = c.Yellow }, -- For special punctutation that does not fall in the catagories before.
		-- TSRepeat            = { };    -- For keywords related to loops.
		-- TSString            = { };    -- For strings.
		["@string.regex"]          = { fg = c.Yellow }, -- For regexes.
		["@string.escape"]         = { fg = c.Purple }, -- For escape characters within a string.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		-- TSType              = { };    -- For types.
		-- TSTypeBuiltin       = { };    -- For builtin types.
		["@variable"]              = { fg = c.Front }, -- Any variable name that does not have another highlight.
		["@variable.builtin"]      = { fg = c.Red }, -- Variable names that are defined by the languages, like `this` or `self`.

		["@tag"]            = { fg = c.Red }; -- Tags like html tag names.
		["@tag.delimiter"]  = { fg = c.Comment }; -- Tag delimiter like `<` `>` `/`
		-- TSText              = { };    -- For strings consideRed text in a markup language.
		["@text.reference"] = { fg = c.Green },
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough text.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal text.
		-- TSURI               = { };    -- Any URI like a link or email.

		-- Lua
		-- luaTSProperty = { fg = c.Red }, -- Same as `TSField`.

		-- ts-rainbow
		rainbowcol1 = { fg = c.Purple },
		rainbowcol2 = { fg = c.Yellow },
		rainbowcol3 = { fg = c.Blue },
		rainbowcol4 = { fg = c.Green },
		rainbowcol5 = { fg = c.Blue },
		rainbowcol6 = { fg = c.Purple },
		rainbowcol7 = { fg = c.Red },

		-- LspTrouble
		TroubleText = { fg = c.Front },
		TroubleCount = { fg = c.Purple, bg = c.Front },
		TroubleNormal = { fg = c.Front, bg = c.Back },

		-- Illuminate
		illuminatedWord = { bg = c.Front },
		illuminatedCurWord = { bg = c.Front },
		IlluminatedWordText = { bg = c.Front },
		IlluminatedWordRead = { bg = c.Front },
		IlluminatedWordWrite = { bg = c.Front },

		-- diff
		diffAdded = { fg = c.DiffAdd },
		diffRemoved = { fg = c.DiffDelete },
		diffChanged = { fg = c.DiffChange },
		diffOldFile = { fg = c.Yellow },
		diffNewFile = { fg = c.Orange },
		diffFile = { fg = c.Blue },
		diffLine = { fg = c.Comment },
		diffIndexLine = { fg = c.Purple },

		-- Neogit
		NeogitBranch = { fg = c.Purple },
		NeogitRemote = { fg = c.Purple },
		NeogitHunkHeader = { bg = c.Back, fg = c.Front },
		NeogitHunkHeaderHighlight = { bg = c.Front, fg = c.Blue },
		NeogitDiffContextHighlight = { bg = util.darken(c.Front, 0.5), fg = c.Front_dark },
		NeogitDiffDeleteHighlight = { fg = c.DiffDelete, bg = c.DiffDelete },
		NeogitDiffAddHighlight = { fg = c.DiffAdd, bg = c.DiffAdd },

		-- Neotest
		NeotestPassed = { fg = c.Green },
		NeotestRunning = { fg = c.Yellow },
		NeotestFailed = { fg = c.Red },
		NeotestSkipped = { fg = c.Blue },
		NeotestTest = { fg = c.PopupFront },
		NeotestNamespace = { fg = c.Green },
		NeotestFocused = { fg = c.Yellow },
		NeotestFile = { fg = c.Green },
		NeotestDir = { fg = c.Blue },
		NeotestBorder = { fg = c.Blue },
		NeotestIndent = { fg = c.PopupFront },
		NeotestExpandMarker = { fg = c.PopupFront },
		NeotestAdapterName = { fg = c.Purple, bold = true },
		NeotestWinSelect = { fg = c.Blue },
		NeotestMarked = { fg = c.Blue },
		NeotestTarget = { fg = c.Blue },
		--[[ NeotestUnknown = {}, ]]

		-- GitGutter
		GitGutterAdd = { fg = c.DiffAdd }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = c.DiffChange }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = c.DiffDelete }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = c.DiffAdd }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = c.DiffChange }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = c.DiffDelete }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopeBorder = { fg = c.Front, bg = c.None },
		TelescopeNormal = { fg = c.Front, bg = c.None },

		-- InlayHints
		LspInlayHint = { fg = c.Comment, bg = c.None },

		-- NvimTree
		NvimTreeNormal = { fg = c.PopupFront, bg = c.Back },
		NvimTreeWinSeparator = {
			fg = c.Comment,
			bg = c.None,
		},
		NvimTreeNormalNC = { fg = c.PopupFront, bg = c.PopupBack },
		NvimTreeRootFolder = { fg = c.Blue, bold = true },
		NvimTreeGitDirty = { fg = c.DiffChange },
		NvimTreeGitNew = { fg = c.DiffAdd },
		NvimTreeGitDeleted = { fg = c.DiffDelete },
		NvimTreeOpenedFile = { bg = c.Back },
		NvimTreeSpecialFile = { fg = c.Purple, underline = true },
		NvimTreeIndentMarker = { fg = c.Front },
		NvimTreeImageFile = { fg = c.PopupFront },
		NvimTreeSymlink = { fg = c.Blue },
		NvimTreeFolderIcon = { bg = c.none, fg = c.Yellow },
		-- NvimTreeFolderName= { fg = c.Front_float },

		NeoTreeNormal = { fg = c.PopupFront, bg = c.PopupBack },
		NeoTreeNormalNC = { fg = c.PopupFront, bg = c.PopupBack },

		-- Fern
		FernBranchText = { fg = c.Blue },

		-- glyph palette
		GlyphPalette1 = { fg = c.Red },
		GlyphPalette2 = { fg = c.Green },
		GlyphPalette3 = { fg = c.Yellow },
		GlyphPalette4 = { fg = c.Blue },
		GlyphPalette6 = { fg = c.Green },
		GlyphPalette7 = { fg = c.Front },
		GlyphPalette9 = { fg = c.Red },

		-- Dashboard
		DashboardShortCut = { fg = c.cyan },
		DashboardHeader = { fg = c.Blue },
		DashboardCenter = { fg = c.Purple },
		DashboardFooter = { fg = c.Yellow, italic = true },

		-- Alpha
		AlphaShortcut = { fg = c.cyan },
		AlphaHeader = { fg = c.Blue },
		AlphaHeaderLabel = { fg = c.Orange },
		AlphaFooter = { fg = c.Yellow, italic = true },
		AlphaButtons = { fg = c.Purple },

		-- WhichKey
		WhichKey = { fg = c.cyan },
		WhichKeyGroup = { fg = c.Blue },
		WhichKeyDesc = { fg = c.Purple },
		WhichKeySeperator = { fg = c.Comment },
		WhichKeySeparator = { fg = c.Comment },
		WhichKeyFloat = { bg = c.PopupBack },
		WhichKeyValue = { fg = c.BackDark },

		-- LspSaga
		DiagnosticWarning = { link = "DiagnosticWarn" },
		DiagnosticInformation = { link = "DiagnosticInfo" },

		LspFloatWinNormal = { bg = c.PopupBack },
		LspFloatWinBorder = { fg = c.Border },
		LspSagaBorderTitle = { fg = c.cyan },
		LspSagaHoverBorder = { fg = c.Blue },
		LspSagaRenameBorder = { fg = c.Green },
		LspSagaDefPreviewBorder = { fg = c.Green },
		LspSagaCodeActionBorder = { fg = c.Blue },
		LspSagaFinderSelection = { fg = c.Back_visual },
		LspSagaCodeActionTitle = { fg = c.Blue1 },
		LspSagaCodeActionContent = { fg = c.Purple },
		LspSagaSignatureHelpBorder = { fg = c.Red },
		ReferencesCount = { fg = c.Purple },
		DefinitionCount = { fg = c.Purple },
		DefinitionIcon = { fg = c.Blue },
		ReferencesIcon = { fg = c.Blue },
		TargetWord = { fg = c.cyan },

		-- NeoVim
		healthError = { fg = c.Error },
		healthSuccess = { fg = c.Green },
		healthWarning = { fg = c.Warning },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = c.DiffChange },

		-- Sneak
		Sneak = { fg = c.Back, bg = c.Purple },
		SneakScope = { bg = c.Back_visual },

		-- Hop
		HopNextKey = { fg = c.Purple, bold = true },
		HopNextKey1 = { fg = c.Blue, bold = true },
		HopNextKey2 = { fg = util.darken(c.Blue, 0.6) },
		HopUnmatched = { fg = c.dark3 },

		TSNodeKey = { fg = c.Purple, bold = true },
		TSNodeUnmatched = { fg = c.dark3 },

		LeapMatch = { bg = c.Purple, fg = c.Front, bold = true },
		LeapLabelPrimary = { fg = c.Purple, bold = true },
		LeapLabelSecondary = { fg = c.Green, bold = true },
		LeapBackdrop = { fg = c.dark3 },

		LightspeedGreyWash = { fg = c.dark3 },
		-- LightspeedCursor = { link = "Cursor" },
		LightspeedLabel = { fg = c.Purple, bold = true, underline = true },
		LightspeedLabelDistant = { fg = c.Green, bold = true, underline = true },
		LightspeedLabelDistantOverlapped = { fg = c.Green2, underline = true },
		LightspeedLabelOverlapped = { fg = c.Purple, underline = true },
		LightspeedMaskedChar = { fg = c.Orange },
		LightspeedOneCharMatch = { bg = c.Purple, fg = c.Front, bold = true },
		LightspeedPendingOpArea = { bg = c.Purple, fg = c.Front },
		LightspeedShortcut = { bg = c.Purple, fg = c.Front, bold = true, underline = true },
		-- LightspeedShortcutOverlapped = { link = "LightspeedShortcut" },
		-- LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
		LightspeedUnlabeledMatch = { fg = c.Blue, bold = true },

		-- Cmp
		CmpDocumentation = { fg = c.Front, bg = c.PopupBack },
		CmpDocumentationBorder = { fg = c.Border, bg = c.PopupBack },

		CmpItemAbbr = { fg = c.Front, bg = c.none },
		CmpItemAbbrDeprecated = { fg = c.Front, bg = c.none, strikethrough = true },
		CmpItemAbbrMatch = { fg = c.Orange, bg = c.none },
		CmpItemAbbrMatchFuzzy = { fg = c.Orange, bg = c.none },

		CmpItemKindDefault = { fg = c.Front_dark, bg = c.none },
		CmpItemMenu = { fg = c.Comment, bg = c.none },

		CmpItemKindKeyword = { fg = c.cyan, bg = c.none },

		CmpItemKindVariable = { fg = c.Purple, bg = c.none },
		CmpItemKindConstant = { fg = c.Purple, bg = c.none },
		CmpItemKindReference = { fg = c.Purple, bg = c.none },
		CmpItemKindValue = { fg = c.Purple, bg = c.none },

		CmpItemKindFunction = { fg = c.Blue, bg = c.none },
		CmpItemKindMethod = { fg = c.Blue, bg = c.none },
		CmpItemKindConstructor = { fg = c.Blue, bg = c.none },

		CmpItemKindClass = { fg = c.Orange, bg = c.none },
		CmpItemKindInterface = { fg = c.Orange, bg = c.none },
		CmpItemKindStruct = { fg = c.Orange, bg = c.none },
		CmpItemKindEvent = { fg = c.Orange, bg = c.none },
		CmpItemKindEnum = { fg = c.Orange, bg = c.none },
		CmpItemKindUnit = { fg = c.Orange, bg = c.none },

		CmpItemKindModule = { fg = c.Yellow, bg = c.none },

		CmpItemKindProperty = { fg = c.Green, bg = c.none },
		CmpItemKindField = { fg = c.Green, bg = c.none },
		CmpItemKindTypeParameter = { fg = c.Green, bg = c.none },
		CmpItemKindEnumMember = { fg = c.Green, bg = c.none },
		CmpItemKindOperator = { fg = c.Green, bg = c.none },
		CmpItemKindSnippet = { fg = c.BackDark, bg = c.none },

		-- navic
		NavicIconsFile = { fg = c.Front, bg = c.none },
		NavicIconsModule = { fg = c.Yellow, bg = c.none },
		NavicIconsNamespace = { fg = c.Front, bg = c.none },
		NavicIconsPackage = { fg = c.Front, bg = c.none },
		NavicIconsClass = { fg = c.Orange, bg = c.none },
		NavicIconsMethod = { fg = c.Blue, bg = c.none },
		NavicIconsProperty = { fg = c.Green, bg = c.none },
		NavicIconsField = { fg = c.Green, bg = c.none },
		NavicIconsConstructor = { fg = c.Orange, bg = c.none },
		NavicIconsEnum = { fg = c.Orange, bg = c.none },
		NavicIconsInterface = { fg = c.Orange, bg = c.none },
		NavicIconsFunction = { fg = c.Blue, bg = c.none },
		NavicIconsVariable = { fg = c.Purple, bg = c.none },
		NavicIconsConstant = { fg = c.Purple, bg = c.none },
		NavicIconsString = { fg = c.Green, bg = c.none },
		NavicIconsNumber = { fg = c.Orange, bg = c.none },
		NavicIconsBoolean = { fg = c.Orange, bg = c.none },
		NavicIconsArray = { fg = c.Orange, bg = c.none },
		NavicIconsObject = { fg = c.Orange, bg = c.none },
		NavicIconsKey = { fg = c.Purple, bg = c.none },
		NavicIconsKeyword = { fg = c.Purple, bg = c.none },
		NavicIconsNull = { fg = c.Orange, bg = c.none },
		NavicIconsEnumMember = { fg = c.Green, bg = c.none },
		NavicIconsStruct = { fg = c.Orange, bg = c.none },
		NavicIconsEvent = { fg = c.Orange, bg = c.none },
		NavicIconsOperator = { fg = c.Front, bg = c.none },
		NavicIconsTypeParameter = { fg = c.Green, bg = c.none },
		NavicText = { fg = c.Front, bg = c.none },
		NavicSeparator = { fg = c.Front, bg = c.none },

		IndentBlanklineChar = { fg = c.Comment, nocombine = true },
		IndentBlanklineContextChar = { fg = c.Purple, nocombine = true },

		-- Scrollbar
		ScrollbarHandle = { fg = c.none, bg = c.Back },

		ScrollbarSearchHandle = { fg = c.Orange, bg = c.Back },
		ScrollbarSearch = { fg = c.Orange, bg = c.none },

		ScrollbarErrorHandle = { fg = c.Error, bg = c.Back },
		ScrollbarError = { fg = c.Error, bg = c.none },

		ScrollbarWarnHandle = { fg = c.Warning, bg = c.Back },
		ScrollbarWarn = { fg = c.Warning, bg = c.none },

		ScrollbarInfoHandle = { fg = c.Info, bg = c.Back },
		ScrollbarInfo = { fg = c.Info, bg = c.none },

		ScrollbarHintHandle = { fg = c.Hint, bg = c.Back },
		ScrollbarHint = { fg = c.Hint, bg = c.none },

		ScrollbarMiscHandle = { fg = c.Purple, bg = c.Back },
		ScrollbarMisc = { fg = c.Purple, bg = c.none },

		-- StatusLine
		St_NormalMode = { fg = c.Green, bold = true },
		St_InsertMode = { fg = c.Orange, bold = true },
		St_VisualMode = { fg = c.Purple, bold = true },
		St_ReplaceMode = { fg = c.Red, bold = true },
		St_CommandMode = { fg = c.Yellow, bold = true },
		St_TerminalMode = { fg = c.YellowOrange, bold = true },
		St_NTerminalMode = { fg = c.Green, bold = true },
		St_CurrentFile = { fg = c.Blue, bold = true },
		St_AlternateFile = { fg = c.MediumBlue, bold = true },
		St_git_add = { fg = c.Green },
		St_git_change = { fg = c.Orange },
		St_git_delete = { fg = c.Red },

		-- Yanky
		YankyPut = { link = "IncSearch" },
		YankyYanked = { link = "IncSearch" },

		-- Notify
		--- Border
		NotifyERRORBorder = { fg = util.darken(c.Error, 0.3), bg = c.Back },
		NotifyWARNBorder = { fg = util.darken(c.Warning, 0.3), bg = c.Back },
		NotifyINFOBorder = { fg = util.darken(c.Info, 0.3), bg = c.Back },
		NotifyDEBUGBorder = { fg = util.darken(c.Comment, 0.3), bg = c.Back },
		NotifyTRACEBorder = { fg = util.darken(c.Purple, 0.3), bg = c.Back },
		--- Icons
		NotifyERRORIcon = { fg = c.Error },
		NotifyWARNIcon = { fg = c.Warning },
		NotifyINFOIcon = { fg = c.Info },
		NotifyDEBUGIcon = { fg = c.Comment },
		NotifyTRACEIcon = { fg = c.Purple },
		--- Title
		NotifyERRORTitle = { fg = c.Error },
		NotifyWARNTitle = { fg = c.Warning },
		NotifyINFOTitle = { fg = c.Info },
		NotifyDEBUGTitle = { fg = c.Comment },
		NotifyTRACETitle = { fg = c.Purple },
		--- Body
		NotifyERRORBody = { fg = c.Front, bg = c.Back },
		NotifyWARNBody = { fg = c.Front, bg = c.Back },
		NotifyINFOBody = { fg = c.Front, bg = c.Back },
		NotifyDEBUGBody = { fg = c.Front, bg = c.Back },
		NotifyTRACEBody = { fg = c.Front, bg = c.Back },

		-- Mini
		MiniCompletionActiveParameter = { underline = true },

		MiniCursorword = { bg = c.Front },
		MiniCursorwordCurrent = { bg = c.Front },

		MiniIndentscopeSymbol = { fg = c.Blue1 },
		MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

		MiniJump = { bg = c.Purple, fg = "#ffffff" },

		MiniJump2dSpot = { fg = c.Purple, bold = true, nocombine = true },

		MiniStarterCurrent = { nocombine = true },
		MiniStarterFooter = { fg = c.Yellow, italic = true },
		MiniStarterHeader = { fg = c.Blue },
		MiniStarterInactive = { fg = c.Comment, italic = true },
		MiniStarterItem = { fg = c.Front, bg = c.Back },
		MiniStarterItemBullet = { fg = c.Border },
		MiniStarterItemPrefix = { fg = c.Warning },
		MiniStarterSection = { fg = c.Blue1 },
		MiniStarterQuery = { fg = c.Info },

		MiniSurround = { bg = c.Orange, fg = c.Dark },

		MiniTablineCurrent = { fg = c.Front, bg = c.Front },
		MiniTablineFill = { bg = c.Dark },
		MiniTablineHidden = { fg = c.BackDark, bg = c.Front },
		MiniTablineModifiedCurrent = { fg = c.Warning, bg = c.Front },
		MiniTablineModifiedHidden = { bg = c.Back, fg = util.darken(c.Warning, 0.7) },
		MiniTablineModifiedVisible = { fg = c.Warning, bg = c.Back },
		MiniTablineTabpagesection = { bg = c.Back, fg = c.none },
		MiniTablineVisible = { fg = c.Front, bg = c.Back },

		MiniTestEmphasis = { bold = true },
		MiniTestFail = { fg = c.Red, bold = true },
		MiniTestPass = { fg = c.Green, bold = true },

		MiniTrailspace = { bg = c.Red },
	}

	if not vim.diagnostic then
		local severity_map = {
			Error = "Error",
			Warn = "Warning",
			Info = "Information",
			Hint = "Hint",
		}
		local types = { "Default", "VirtualText", "Underline" }
		for _, type in ipairs(types) do
			for snew, sold in pairs(severity_map) do
				theme.highlights["LspDiagnostics" .. type .. sold] = {
					link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
				}
			end
		end
	end

	theme.defer = {}

	return theme
end

return M
