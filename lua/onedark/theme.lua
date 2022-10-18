local c = require("onedark.colors")

local hl = vim.api.nvim_set_hl

local theme = {}

theme.set_highlights = function(opts)
	c = vim.tbl_extend("force", c, opts["color_overrides"])
	local isDark = vim.o.background == "dark"

	hl(0, "Normal", { fg = c.onedarkFront, bg = c.onedarkBack })
	hl(0, "ColorColumn", { fg = "NONE", bg = c.onedarkCursorDarkDark })
	hl(0, "Cursor", { fg = c.onedarkCursorDark, bg = c.onedarkCursorLight })
	hl(0, "CursorLine", { bg = "NONE" })
	hl(0, "CursorColumn", { fg = "NONE", bg = "NONE" })
	hl(0, "Directory", { fg = c.onedarkBlue, bg = c.onedarkBack })
	hl(0, "DiffAdd", { fg = "NONE", bg = c.onedarkDiffGreenDark })
	hl(0, "DiffChange", { fg = "NONE", bg = c.onedarkDiffOrande })
	hl(0, "DiffDelete", { fg = "NONE", bg = c.onedarkDiffRedDark })
	hl(0, "DiffText", { fg = "NONE", bg = c.onedarkFront })
	hl(0, "EndOfBuffer", { fg = c.onedarkBack, bg = "NONE" })
	hl(0, "ErrorMsg", { fg = c.onedarkRed, bg = c.onedarkBack })
	hl(0, "VertSplit", { fg = c.onedarkSplitDark, bg = c.onedarkBack })
	hl(0, "Folded", { fg = "NONE", bg = c.onedarkFoldBackground })
	hl(0, "FoldColumn", { fg = c.onedarkPurple, bg = c.onedarkBack })
	hl(0, "SignColumn", { fg = "NONE", bg = c.onedarkBack })
	hl(0, "IncSearch", { fg = c.onedarkNone, bg = c.onedarkSearchCurrent })
	hl(0, "LineNr", { fg = c.onedarkDisabled, bg = c.onedarkBack })
	hl(0, "CursorLineNr", { fg = c.onedarkPurple, bg = c.onedarkBack })
	hl(0, "FloatBorder", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "NomalFloat", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "MatchParen", { fg = c.onedarkNone, bg = c.onedarkCursorDark })
	hl(0, "ModeMsg", { fg = c.onedarkFront, bg = c.onedarkLeftDark })
	hl(0, "MoreMsg", { fg = c.onedarkFront, bg = c.onedarkLeftDark })
	hl(0, "NonText", { fg = (isDark and c.onedarkPurple or c.onedarkTabOther), bg = c.onedarkBack })
	hl(0, "Pmenu", { fg = c.onedarkFront, bg = c.onedarkBack })
	hl(0, "PmenuSel", { fg = "NONE", bg = c.onedarkLightBlue })
	hl(0, "PmenuSbar", { fg = c.onedarkFront, bg = c.onedarkPopupBack })
	hl(0, "PmenuThumb", { fg = c.onedarkFront, bg = c.onedarkFront })
	hl(0, "Question", { fg = c.onedarkBlue, bg = c.onedarkBack })
	hl(0, "Search", { fg = c.onedarkNone, bg = c.onedarkSearch })
	hl(0, "SpecialKey", { fg = c.onedarkBlue, bg = c.onedarkNone })
	hl(0, "StatusLine", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "StatusLineNC", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TabLine", { fg = c.onedarkFront, bg = c.onedarkTabOther })
	hl(0, "TabLineFill", { fg = c.onedarkFront, bg = c.onedarkTabOutside })
	hl(0, "TabLineSel", { fg = c.onedarkFront, bg = c.onedarkTabCurrent })
	hl(0, "Title", { fg = c.onedarkNone, bg = c.onedarkNone, bold = true })
	hl(0, "Visual", { fg = "NONE", bg = c.onedarkSelection })
	hl(0, "VisualNOS", { fg = c.onedarkNone, bg = c.onedarkSelection })
	hl(0, "WarningMsg", { fg = c.onedarkRed, bg = c.onedarkBack, bold = true })
	hl(0, "WildMenu", { fg = c.onedarkNone, bg = c.onedarkLightBlue })
	hl(0, "Comment", { fg = c.onedarkDisabled, bg = "NONE", italic = true })
	hl(0, "Constant", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "String", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "Character", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "Number", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "Boolean", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "Float", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "Identifier", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "Function", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "Statement", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "Conditional", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "Repeat", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "Label", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "Operator", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "Keyword", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "Exception", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "PreProc", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "Include", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "Define", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "Macro", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "Type", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "StorageClass", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "Structure", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "Typedef", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "Special", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "SpecialChar", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "Tag", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "Delimiter", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "SpecialComment", { fg = c.onedarkDisabled, bg = "NONE" })
	hl(0, "Debug", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "Underlined", { fg = c.onedarkNone, bg = "NONE", underline = true })
	hl(0, "Conceal", { fg = c.onedarkFront, bg = c.onedarkBack })
	hl(0, "Ignore", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "Error", { fg = c.onedarkRed, bg = c.onedarkBack, undercurl = true, sp = c.onedarkRed })
	hl(0, "Todo", { fg = c.onedarkYellowOrange, bg = c.onedarkBack, bold = true })
	hl(0, "SpellBad", { fg = c.onedarkRed, bg = c.onedarkBack, undercurl = true, sp = c.onedarkRed })
	hl(0, "SpellCap", { fg = c.onedarkRed, bg = c.onedarkBack, undercurl = true, sp = c.onedarkRed })
	hl(0, "SpellRare", { fg = c.onedarkRed, bg = c.onedarkBack, undercurl = true, sp = c.onedarkRed })
	hl(0, "SpellLocal", { fg = c.onedarkRed, bg = c.onedarkBack, undercurl = true, sp = c.onedarkRed })
	hl(0, "Whitespace", { fg = c.onedarkDisabled })


	-- -- New Treesittr fix
	-- -- TODO: fix this permanently
	-- -- Misc {{{
	-- hl(0, '@comment', { link = 'Comment' })
	-- -- 0,hl('@error', {link = 'Error'})
	-- hl(0, '@none', { bg = 'NONE', fg = 'NONE' })
	-- hl(0, '@preproc', { link = 'PreProc' })
	-- hl(0, '@define', { link = 'Define' })
	-- hl(0, '@operator', { link = 'Operator' })
	-- -- 0,}}}
	--
	-- -- 0,Punctuation {{{
	-- hl(0, '@punctuation.delimiter', { link = 'Delimiter' })
	-- hl(0, '@punctuation.bracket', { link = 'Delimiter' })
	-- hl(0, '@punctuation.special', { link = 'Delimiter' })
	-- -- 0,}}}
	--
	-- -- 0,Literals {{{
	-- hl(0, '@string', { link = 'String' })
	-- hl(0, '@string.regex', { link = 'TSStringRegex' })
	-- hl(0, '@string.escape', { link = 'SpecialChar' })
	-- hl(0, '@string.special', { link = 'SpecialChar' })
	--
	-- hl(0, '@character', { link = 'Character' })
	-- hl(0, '@character.special', { link = 'SpecialChar' })
	--
	-- hl(0, '@boolean', { link = 'Boolean' })
	-- hl(0, '@number', { link = 'Number' })
	-- hl(0, '@float', { link = 'Float' })
	-- -- 0,}}}
	--
	-- -- 0,Functions {{{
	-- hl(0, '@function', { link = 'Function' })
	-- hl(0, '@function.call', { link = 'Function' })
	-- hl(0, '@function.builtin', { link = 'Special' })
	-- hl(0, '@function.macro', { link = 'Macro' })
	--
	-- hl(0, '@method', { link = 'Function' })
	-- hl(0, '@method.call', { link = 'Function' })
	--
	-- hl(0, '@constructor', { link = 'Special' })
	-- hl(0, '@parameter', { link = 'Identifier' })
	-- -- 0,}}}
	--
	-- -- 0,Keywords {{{
	-- hl(0, '@keyword', { link = 'Keyword' })
	-- hl(0, '@keyword.function', { link = 'Keyword' })
	-- hl(0, '@keyword.operator', { link = 'Keyword' })
	-- hl(0, '@keyword.return', { link = 'Keyword' })
	--
	-- hl(0, '@conditional', { link = 'Conditional' })
	-- hl(0, '@repeat', { link = 'Repeat' })
	-- hl(0, '@debug', { link = 'Debug' })
	-- hl(0, '@label', { link = 'Label' })
	-- hl(0, '@include', { link = 'Include' })
	-- hl(0, '@exception', { link = 'Exception' })
	-- -- 0,}}}
	--
	-- -- 0,Types {{{
	-- hl(0, '@type', { link = 'Type' })
	-- hl(0, '@type.builtin', { link = 'Type' })
	-- hl(0, '@type.qualifier', { link = 'Type' })
	-- hl(0, '@type.definition', { link = 'Typedef' })
	--
	-- hl(0, '@storageclass', { link = 'StorageClass' })
	-- hl(0, '@attribute', { link = 'PreProc' })
	-- hl(0, '@field', { link = 'Identifier' })
	-- hl(0, '@property', { link = 'TSField' })
	-- -- 0,}}}
	--
	-- -- 0,Identifiers {{{
	-- hl(0, '@variable', { link = 'Normal' })
	-- hl(0, '@variable.builtin', { link = 'Special' })
	--
	-- hl(0, '@constant', { link = 'Constant' })
	-- hl(0, '@constant.builtin', { link = 'Special' })
	-- hl(0, '@constant.macro', { link = 'Define' })
	--
	-- hl(0, '@namespace', { link = 'Include' })
	-- hl(0, '@symbol', { link = 'Identifier' })
	-- -- 0,}}}
	--
	-- -- 0,Text {{{
	-- hl(0, '@text', { link = 'Normal' })
	-- hl(0, '@text.strong', { bold = true })
	-- hl(0, '@text.emphasis', { italic = true })
	-- hl(0, '@text.underline', { underline = true })
	-- hl(0, '@text.strike', { strikethrough = true })
	-- hl(0, '@text.title', { link = 'Title' })
	-- hl(0, '@text.literal', { link = 'String' })
	-- hl(0, '@text.uri', { link = 'Underlined' })
	-- hl(0, '@text.math', { link = 'Special' })
	-- hl(0, '@text.environment', { link = 'Macro' })
	-- hl(0, '@text.environment.name', { link = 'Type' })
	-- hl(0, '@text.reference', { link = 'Constant' })
	--
	-- hl(0, '@text.todo', { link = 'Todo' })
	-- hl(0, '@text.note', { link = 'SpecialComment' })
	-- hl(0, '@text.warning', { link = 'WarningMsg' })
	-- hl(0, '@text.danger', { link = 'ErrorMsg' })
	-- -- 0,}}}
	--
	-- -- 0,Tags {{{
	-- hl(0, '@tag', { link = 'Tag' })
	-- hl(0, '@tag.attribute', { link = 'Identifier' })
	-- hl(0, '@tag.delimiter', { link = 'Delimiter' })
	--

	-- Treesitter
	hl(0, "Note", { fg = c.onedarkBlueGreen, bg = "NONE", bold = true })

	-- Markdown
	hl(0, "markdownBold", { fg = isDark and c.onedarkBlue or c.onedarkYellowOrange, bold = true })
	hl(0, "markdownCode", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "markdownRule", { fg = isDark and c.onedarkBlue or c.onedarkYellowOrange, bold = true })
	hl(0, "markdownCodeDelimiter", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "markdownHeadingDelimiter", { fg = isDark and c.onedarkBlue or c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "markdownFootnote", { fg = isDark and c.onedarkOrange or c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "markdownFootnoteDefinition", { fg = isDark and c.onedarkOrange or c.onedarkYellowOrange })
	hl(0, "markdownUrl", { fg = c.onedarkFront, bg = "NONE", underline = true })
	hl(0, "markdownLinkText", { fg = isDark and c.onedarkOrange or c.onedarkYellowOrange })
	hl(0, "markdownEscape", { fg = isDark and c.onedarkOrange or c.onedarkYellowOrange })

	-- JSON
	hl(0, "jsonKeyword", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "jsonEscape", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "jsonNull", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "jsonBoolean", { fg = c.onedarkOrange, bg = "NONE" })

	-- HTML
	hl(0, "htmlTag", { fg = c.onedarkGray, bg = "NONE" })
	hl(0, "htmlEndTag", { fg = c.onedarkGray, bg = "NONE" })
	hl(0, "htmlTagName", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "htmlSpecialTagName", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "htmlArg", { fg = c.onedarkLightBlue, bg = "NONE" })

	-- PHP
	hl(0, "phpStaticClasses", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "phpMethod", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "phpClass", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "phpFunction", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "phpInclude", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "phpUseClass", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "phpRegion", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "phpMethodsVar", { fg = c.onedarkLightBlue, bg = "NONE" })

	-- CSS
	hl(0, "cssBraces", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "cssInclude", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "cssTagName", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "cssClassName", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "cssPseudoClass", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "cssPseudoClassId", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "cssPseudoClassLang", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "cssIdentifier", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "cssProp", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "cssDefinition", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "cssAttr", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssAttrRegion", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssColor", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssFunction", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssFunctionName", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssVendor", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssValueNumber", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "cssValueLength", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssUnitDecorators", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssStyle", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "cssImportant", { fg = c.onedarkBlue, bg = "NONE" })

	-- XML
	hl(0, "xmlTag", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "xmlTagName", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "xmlEndTag", { fg = c.onedarkBlue, bg = "NONE" })

	-- statusline
	hl(0, 'St_NormalMode', { fg = c.onedarkGreen, bold = true })
	hl(0, 'St_InsertMode', { fg = c.onedarkOrange, bold = true })
	hl(0, 'St_VisualMode', { fg = c.onedarkPurple, bold = true })
	hl(0, 'St_ReplaceMode', { fg = c.onedarkRed, bold = true })
	hl(0, 'St_CommandMode', { fg = c.onedarkYellow, bold = true })
	hl(0, 'St_TerminalMode', { fg = c.onedarkYellowOrange, bold = true })
	hl(0, 'St_NTerminalMode', { fg = c.onedarkGreen, bold = true })
	hl(0, 'St_CurrentFile', { fg = c.onedarkBlue, bold = true })
	hl(0, 'St_AlternateFile', { fg = c.onedarkMediumBlue, bold = true })
	hl(0, 'St_git_add', { fg = c.onedarkGreen })
	hl(0, 'St_git_change', { fg = c.onedarkOrange })
	hl(0, 'St_git_delete', { fg = c.onedarkRed })

	-- Noice
	hl(0, "NoiceCmdlinePopupBorder", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "NoiceCmdlinePopupSearchBorder", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "NoiceConfirmBorder", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "NoiceFormatLevelError", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "NoiceFormatLevelInfo", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "NoiceFormatLevelWarn", { fg = c.onedarkYellow, bg = "NONE" })

	--  Rainbow
	hl(0, "rainbowcol1", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "rainbowcol2", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "rainbowcol3", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "rainbowcol4", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "rainbowcol5", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "rainbowcol6", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "rainbowcol7", { fg = c.onedarkRed, bg = "NONE" })

	-- Ruby
	hl(0, "rubyClassNameTag", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "rubyClassName", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "rubyModuleName", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "rubyConstant", { fg = c.onedarkBlueGreen, bg = "NONE" })

	-- Golang
	hl(0, "goPackage", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goImport", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goVar", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goConst", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goStatement", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "goType", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "goSignedInts", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "goUnsignedInts", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "goFloats", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "goComplexes", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "goBuiltins", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "goBoolean", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goPredefinedIdentifiers", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goTodo", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "goDeclaration", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goDeclType", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goTypeDecl", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "goTypeName", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "goVarAssign", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "goVarDefs", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "goReceiver", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "goReceiverType", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "goFunctionCall", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "goMethodCall", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "goSingleDecl", { fg = c.onedarkLightBlue, bg = "NONE" })

	-- Python
	hl(0, "pythonStatement", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "pythonOperator", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "pythonException", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "pythonExClass", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "pythonBuiltinObj", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "pythonBuiltinType", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "pythonBoolean", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "pythonNone", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "pythonTodo", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "pythonClassVar", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "pythonClassDef", { fg = c.onedarkBlueGreen, bg = "NONE" })

	-- TeX
	hl(0, "texStatement", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "texBeginEnd", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "texBeginEndName", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "texOption", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "texBeginEndModifier", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "texDocType", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "texDocTypeArgs", { fg = c.onedarkLightBlue, bg = "NONE" })

	-- Git
	hl(0, "gitcommitHeader", { fg = c.onedarkGray, bg = "NONE" })
	hl(0, "GitSignsCurrentLineBlame", { fg = c.onedarkDisabled, bg = "NONE", italic = true })
	hl(0, "gitcommitOnBranch", { fg = c.onedarkGray, bg = "NONE" })
	hl(0, "gitcommitBranch", { fg = c.onedarkpurple, bg = "NONE" })
	hl(0, "gitcommitComment", { fg = c.onedarkGray, bg = "NONE" })
	hl(0, "gitcommitSelectedType", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "gitcommitSelectedFile", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "gitcommitDiscardedType", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "gitcommitDiscardedFile", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "gitcommitOverflow", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "gitcommitSummary", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "gitcommitBlank", { fg = c.onedarkPink, bg = "NONE" })

	-- Lua
	hl(0, "luaFuncCall", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "luaFuncArgName", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "luaFuncKeyword", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "luaLocal", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "luaBuiltIn", { fg = c.onedarkBlue, bg = "NONE" })

	-- SH
	hl(0, "shDeref", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "shVariable", { fg = c.onedarkLightBlue, bg = "NONE" })

	-- SQL
	hl(0, "sqlKeyword", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "sqlFunction", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "sqlOperator", { fg = c.onedarkPink, bg = "NONE" })

	-- YAML
	hl(0, "yamlKey", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "yamlConstant", { fg = c.onedarkBlue, bg = "NONE" })

	-- Gitgutter
	hl(0, "GitGutterAdd", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "GitGutterChange", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "GitGutterDelete", { fg = c.onedarkRed, bg = "NONE" })

	-- Git Signs
	hl(0, "GitSignsAdd", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "GitSignsChange", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "GitSignsDelete", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "GitSignsAddLn", { fg = c.onedarkBack, bg = c.onedarkGreen })
	hl(0, "GitSignsChangeLn", { fg = c.onedarkBack, bg = c.onedarkYellow })
	hl(0, "GitSignsDeleteLn", { fg = c.onedarkBack, bg = c.onedarkRed })

	hl(0, "BufferLineIndicatorSelected", { fg = c.onedarkLeftDark, bg = "NONE" })
	hl(0, "BufferLineFill", { fg = "NONE", bg = c.onedarkLeftDark })

	-- BarBar
	hl(0, "BufferCurrent", { fg = c.onedarkFront, bg = c.onedarkTabCurrent })
	hl(0, "BufferCurrentIndex", { fg = c.onedarkFront, bg = c.onedarkTabCurrent })
	hl(0, "BufferCurrentMod", { fg = c.onedarkYellowOrange, bg = c.onedarkTabCurrent })
	hl(0, "BufferCurrentSign", { fg = c.onedarkFront, bg = c.onedarkTabCurrent })
	hl(0, "BufferCurrentTarget", { fg = c.onedarkRed, bg = c.onedarkTabCurrent })
	hl(0, "BufferVisible", { fg = c.onedarkGray, bg = c.onedarkTabCurrent })
	hl(0, "BufferVisibleIndex", { fg = c.onedarkGray, bg = c.onedarkTabCurrent })
	hl(0, "BufferVisibleMod", { fg = c.onedarkYellowOrange, bg = c.onedarkTabCurrent })
	hl(0, "BufferVisibleSign", { fg = c.onedarkGray, bg = c.onedarkTabCurrent })
	hl(0, "BufferVisibleTarget", { fg = c.onedarkRed, bg = c.onedarkTabCurrent })
	hl(0, "BufferInactive", { fg = c.onedarkGray, bg = c.onedarkTabOther })
	hl(0, "BufferInactiveIndex", { fg = c.onedarkGray, bg = c.onedarkTabOther })
	hl(0, "BufferInactiveMod", { fg = c.onedarkYellowOrange, bg = c.onedarkTabOther })
	hl(0, "BufferInactiveSign", { fg = c.onedarkGray, bg = c.onedarkTabOther })
	hl(0, "BufferInactiveTarget", { fg = c.onedarkRed, bg = c.onedarkTabOther })
	hl(0, "BufferTabpages", { fg = c.onedarkFront, bg = c.onedarkTabOther })
	hl(0, "BufferTabpagesFill", { fg = c.onedarkFront, bg = c.onedarkTabOther })

	-- IndentBlankLine
	hl(0, "IndentBlanklineContextChar", { fg = c.onedarkPurple, bg = "NONE", nocombine = true })
	hl(0, "IndentBlanklineContextStart", { fg = c.onedarkPurple, bg = "NONE", nocombine = true })
	hl(0, "IndentBlanklineChar", { fg = c.onedarkDisabled, bg = "NONE", nocombine = true })
	hl(0, "IndentBlanklineSpaceChar", { fg = c.onedarkDisabled, bg = "NONE", nocombine = true })
	hl(0, "IndentBlanklineSpaceCharBlankline", { fg = c.onedarkDisabled, bg = "NONE", nocombine = true })

	-- LSP
	hl(0, "DiagnosticError", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "DiagnosticWarn", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "DiagnosticInfo", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "DiagnosticHint", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "DiagnosticUnderlineError", { fg = "NONE", bg = "NONE", undercurl = true, sp = c.onedarkRed })
	hl(0, "DiagnosticUnderlineWarn", { fg = "NONE", bg = "NONE", undercurl = true, sp = c.onedarkYellow })
	hl(0, "DiagnosticUnderlineInfo", { fg = "NONE", bg = "NONE", undercurl = true, sp = c.onedarkBlue })
	hl(0, "DiagnosticUnderlineHint", { fg = "NONE", bg = "NONE", undercurl = true, sp = c.onedarkBlue })
	hl(
		0,
		"LspReferenceText",
		{ fg = "NONE", bg = isDark and c.onedarkDisabled or c.onedarkDisabled }
	)
	hl(
		0,
		"LspReferenceRead",
		{ fg = "NONE", bg = isDark and c.onedarkDisabled or c.onedarkDisabled }
	)
	hl(
		0,
		"LspReferenceWrite",
		{ fg = "NONE", bg = isDark and c.onedarkDisabled or c.onedarkDisabled }
	)

	-- Nvim compe
	hl(0, "CmpItemKindVariable", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "CmpItemKindInterface", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "CmpItemKindText", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "CmpItemKindFunction", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "CmpItemKindMethod", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "CmpItemKindKeyword", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "CmpItemKindProperty", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "CmpItemKindUnit", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "CmpItemKindConstructor", { fg = c.onedarkUiOrange, bg = "NONE" })
	hl(0, "CmpItemMenu", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "CmpItemAbbr", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "CmpItemAbbrDeprecated", { fg = c.onedarkCursorDark, bg = c.onedarkPopupBack, strikethrough = true })
	hl(0, "CmpItemAbbrMatch", { fg = isDark and c.onedarkYellow or c.onedarkYellow, bg = "NONE", bold = true })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = isDark and c.onedarkYellow or c.onedarkYellow, bg = "NONE", bold = true })

	-- Dashboard
	hl(0, "DashboardHeader", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "DashboardCenter", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "DashboardCenterIcon", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "DashboardShortCut", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "DashboardFooter", { fg = c.onedarkBlue, bg = "NONE", italic = true })

	if isDark then
		hl(0, "NvimTreeFolderIcon", { fg = c.onedarkYellow, bg = "NONE" })
		hl(0, "NvimTreeFolderName", { fg = c.onedarkBlue, bg = "NONE" })
		hl(0, "NvimTreeIndentMarker", { fg = c.onedarkDisabled, bg = "NONE" })
		hl(0, "NvimTreeCursorLine", { fg = "NONE", bg = "NONE" })
		hl(0, "LspFloatWinNormal", { fg = c.onedarkFront, bg = "NONE" })
		hl(0, "LspFloatWinBorder", { fg = c.onedarkFront, bg = "NONE" })
		hl(0, "LspSagaHoverBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaSignatureHelpBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaCodeActionBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaDefPreviewBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspInlayHint", { fg = c.onedarkDisabled, bg = "NONE" })
		hl(0, "LspLinesDiagBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaRenameBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaBorderTitle", { fg = c.onedarkCursorDark, bg = "NONE" })
		hl(0, "LSPSagaDiagnosticTruncateLine", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaDiagnosticBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaDiagnosticBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaShTruncateLine", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaShTruncateLine", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaDocTruncateLine", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaRenameBorder", { fg = c.onedarkPurple, bg = "NONE" })
		hl(0, "LspSagaLspFinderBorder", { fg = c.onedarkPurple, bg = "NONE" })
		-- symbols-outline
		-- white fg and lualine blue bg
		hl(0, "FocusedSymbol", { fg = "#ffffff", bg = c.onedarkUiBlue })
		hl(0, "SymbolsOutlineConnector", { fg = c.onedarkPurple, bg = "NONE" })
	else
		hl(0, "NvimTreeFolderIcon", { fg = c.onedarkDarkBlue, bg = "NONE" })
		hl(0, "NvimTreeFolderName", { fg = c.onedarkDarkBlue, bg = "NONE" })
		hl(0, "NvimTreeIndentMarker", { fg = c.onedarkDisabled, bg = "NONE" })
		hl(0, "NvimTreeCursorLine", { fg = "NONE", bg = "NONE" })
		hl(0, "LspFloatWinNormal", { fg = c.onedarkFront, bg = "NONE" })
		hl(0, "LspInlayHint", { fg = c.onedarkDisabled, bg = "NONE" })
		hl(0, "LspFloatWinBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaHoverBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaSignatureHelpBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaCodeActionBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaDefPreviewBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspLinesDiagBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaRenameBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaBorderTitle", { fg = c.onedarkCursorDark, bg = "NONE" })
		hl(0, "LSPSagaDiagnosticTruncateLine", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaDiagnosticBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaDiagnosticBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaShTruncateLine", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaShTruncateLine", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaDocTruncateLine", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaRenameBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "LspSagaLspFinderBorder", { fg = c.onedarkTabOther, bg = "NONE" })

		-- symbols-outline
		-- white fg and lualine blue bg
		hl(0, "FocusedSymbol", { fg = c.onedarkBack, bg = "#AF00DB" })
		hl(0, "SymbolsOutlineConnector", { fg = c.onedarkTabOther, bg = "NONE" })
	end
end

theme.link_highlight = function()
	-- Nvim compe
	hl(0, "CmpItemKindClass", { link = "CmpItemKindConstructor" })
	hl(0, "CmpItemKindModule", { link = "CmpItemKindKeyword" })
	hl(0, "CmpItemKindOperator", { link = "Operator" })
	hl(0, "CmpItemKindReference", { link = "ParameterReference" })
	hl(0, "CmpItemKindValue", { link = "Field" })
	hl(0, "CmpItemKindField", { link = "Field" })
	hl(0, "CmpItemKindEnum", { link = "Field" })
	hl(0, "CmpItemKindSnippet", { link = "Text" })
	hl(0, "CmpItemKindColor", { link = "cssColor" })
	hl(0, "CmpItemKindFile", { link = "URI" })
	hl(0, "CmpItemKindFolder", { link = "URI" })
	hl(0, "CmpItemKindEvent", { link = "Constant" })
	hl(0, "CmpItemKindEnumMember", { link = "Field" })
	hl(0, "CmpItemKindConstant", { link = "Constant" })
	hl(0, "CmpItemKindStruct", { link = "Structure" })
	hl(0, "CmpItemKindTypeParameter", { link = "Parameter" })

	-- TypeScript
	hl(0, "typescriptIdentifierName", { link = "Text" })

	-- }}}
end

return theme
