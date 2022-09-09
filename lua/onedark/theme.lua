local c = require("onedark.colors")

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function(opts)
	c = vim.tbl_extend("force", c, opts["color_overrides"])
	local isDark = vim.o.background == "dark"

	hl(0, "Normal", { fg = c.onedarkFront, bg = c.onedarkBack })
	hl(0, "ColorColumn", { fg = "NONE", bg = c.onedarkCursorDarkDark })
	hl(0, "Cursor", { fg = c.onedarkCursorDark, bg = c.onedarkCursorLight })
	hl(0, "CursorLine", { bg = c.onedarkCursorDarkDark })
	hl(0, "CursorColumn", { fg = "NONE", bg = c.onedarkCursorDarkDark })
	hl(0, "Directory", { fg = c.onedarkBlue, bg = c.onedarkBack })
	hl(0, "DiffAdd", { fg = "NONE", bg = c.onedarkDiffGreenLight })
	hl(0, "DiffChange", { fg = "NONE", bg = c.onedarkDiffRedDark })
	hl(0, "DiffDelete", { fg = "NONE", bg = c.onedarkDiffRedLight })
	hl(0, "DiffText", { fg = "NONE", bg = c.onedarkDiffRedLight })
	hl(0, "EndOfBuffer", { fg = c.onedarkBack, bg = "NONE" })
	hl(0, "ErrorMsg", { fg = c.onedarkRed, bg = c.onedarkBack })
	hl(0, "VertSplit", { fg = c.onedarkSplitDark, bg = c.onedarkBack })
	hl(0, "Folded", { fg = "NONE", bg = c.onedarkFoldBackground })
	hl(0, "FoldColumn", { fg = c.onedarkLineNumber, bg = c.onedarkBack })
	hl(0, "SignColumn", { fg = "NONE", bg = c.onedarkBack })
	hl(0, "IncSearch", { fg = c.onedarkNone, bg = c.onedarkSearchCurrent })
	hl(0, "LineNr", { fg = c.onedarkDisabled, bg = c.onedarkBack })
	hl(0, "CursorLineNr", { fg = c.onedarkPurple, bg = c.onedarkBack, bold = true })
	hl(0, "FloatBorder", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "NomalFloat", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "MatchParen", { fg = c.onedarkNone, bg = c.onedarkCursorDark })
	hl(0, "ModeMsg", { fg = c.onedarkFront, bg = c.onedarkLeftDark })
	hl(0, "MoreMsg", { fg = c.onedarkFront, bg = c.onedarkLeftDark })
	hl(0, "NonText", { fg = (isDark and c.onedarkLineNumber or c.onedarkTabOther), bg = c.onedarkBack })
	hl(0, "Pmenu", { fg = c.onedarkFront, bg = c.onedarkBack })
	hl(0, "PmenuSel", { fg = isDark and c.onedarkFront or c.onedarkBack, bg = c.onedarkPopupHighlightGray })
	hl(0, "PmenuSbar", { fg = "NONE", bg = c.onedarkPopupBack })
	hl(0, "PmenuThumb", { fg = "NONE", bg = c.onedarkFront })
	hl(0, "Question", { fg = c.onedarkBlue, bg = c.onedarkBack })
	hl(0, "Search", { fg = c.onedarkNone, bg = c.onedarkSearch })
	hl(0, "SpecialKey", { fg = c.onedarkBlue, bg = c.onedarkNone })
	hl(0, "StatusLine", { fg = c.onedarkFront, bg = c.onedarkLeftMid })
	hl(0, "StatusLineNC", { fg = c.onedarkFront, bg = c.onedarkLeftDark })
	hl(0, "TabLine", { fg = c.onedarkFront, bg = c.onedarkTabOther })
	hl(0, "TabLineFill", { fg = c.onedarkFront, bg = c.onedarkTabOutside })
	hl(0, "TabLineSel", { fg = c.onedarkFront, bg = c.onedarkTabCurrent })
	hl(0, "Title", { fg = c.onedarkNone, bg = c.onedarkNone, bold = true })
	hl(0, "Visual", { fg = c.onedarkSelectionFg, bg = c.onedarkSelection })
	hl(0, "VisualNOS", { fg = c.onedarkNone, bg = c.onedarkSelection })
	hl(0, "WarningMsg", { fg = c.onedarkRed, bg = c.onedarkBack, bold = true })
	hl(0, "WildMenu", { fg = c.onedarkNone, bg = c.onedarkSelection })
	hl(0, "Comment", { fg = c.onedarkDisabled, bg = "NONE", italic = true })
	hl(0, "Constant", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "String", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "Character", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "Number", { fg = c.onedarkLightGreen, bg = "NONE" })
	hl(0, "Boolean", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "Float", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "Identifier", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "Function", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "Statement", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "Conditional", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "Repeat", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "Label", { fg = c.onedarkPurple, bg = "NONE" })
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
	hl(0, "Tag", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "Delimiter", { fg = c.onedarkDisabled, bg = "NONE" })
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

	-- Treesitter
	hl(0, "TSError", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "TSPunctBracket", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "TSPunctSpecial", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "markdownTSPunctSpecial", { fg = isDark and c.onedarkBlue or c.onedarkYellowOrange, bold = true })
	hl(0, "TSComment", { fg = c.onedarkDisabled, bg = "NONE", italic = opts.italic_comments })
	hl(0, "TSConstant", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSConstBuiltin", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "TSPreProc", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "TSConstMacro", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "TSStringRegex", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSString", { fg = c.onedarkGreen, bg = "NONE" })
	hl(0, "TSCharacter", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "TSNumber", { fg = c.onedarkLightGreen, bg = "NONE" })
	hl(0, "TSBoolean", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "TSFloat", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSAnnotation", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSAttribute", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "TSNamespace", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "TSFuncBuiltin", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSFunction", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "TSFuncMacro", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSParameter", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "TSParameterReference", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "TSMethod", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSField", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "TSProperty", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TSConstructor", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSConditional", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "TSRepeat", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "TSLabel", { fg = c.onedarkRed, bg = "NONE" })
	hl(0, "TSKeyword", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "TSKeywordFunction", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "TSKeywordOperator", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "TSKeywordReturn", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "TSOperator", { fg = c.onedarkMediumBlue, bg = "NONE" })
	hl(0, "TSException", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "TSType", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSTypeBuiltin", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSStructure", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "TSInclude", { fg = c.onedarkPurple, bg = "NONE", italic = true })
	hl(0, "TSVariable", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TSVariableBuiltin", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TSText", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TSUnderline", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "TSTag", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "TSTagDelimiter", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TSNone", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TSTagAttribute", { fg = c.onedarkOrange, bg = "NONE", italic = true })

	hl(0, "TSTitle", { fg = isDark and c.onedarkBlue or c.onedarkYellowOrange, bold = true })
	hl(0, "TSLiteral", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "markdownTSLiteral", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "markdown_inlineTSLiteral", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "TSEmphasis", { fg = c.onedarkFront, bg = "NONE", italic = true })
	hl(0, "TSStrong", { fg = isDark and c.onedarkBlue or c.onedarkViolet, bold = true })
	hl(0, "TSURI", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TSTextReference", { fg = isDark and c.onedarkOrange or c.onedarkYellowOrange })
	hl(0, "TSPunctDelimiter", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "TSStringEscape", { fg = isDark and c.onedarkGreen or c.onedarkGreen, bold = true })

	hl(0, "TSNote", { fg = c.onedarkBlueGreen, bg = "NONE", bold = true })
	hl(0, "TSWarning", { fg = c.onedarkYellowOrange, bg = "NONE", bold = true })
	hl(0, "TSDanger", { fg = c.onedarkRed, bg = "NONE", bold = true })

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
	hl(0, "jsonKeyword", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsonEscape", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "jsonNull", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "jsonBoolean", { fg = c.onedarkBlue, bg = "NONE" })

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
	hl(0, "cssValueNumber", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssValueLength", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssUnitDecorators", { fg = c.onedarkOrange, bg = "NONE" })
	hl(0, "cssStyle", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "cssImportant", { fg = c.onedarkBlue, bg = "NONE" })

	-- JavaScript
	hl(0, "jsVariableDef", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsFuncArgs", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsFuncBlock", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsRegexpString", { fg = c.onedarkLightRed, bg = "NONE" })
	hl(0, "jsThis", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "jsOperatorKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "jsDestructuringBlock", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsObjectKey", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsGlobalObjects", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "jsModuleKeyword", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsClassDefinition", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "jsClassKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "jsExtendsKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "jsExportDefault", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "jsFuncCall", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "jsObjectValue", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsParen", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsObjectProp", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsIfElseBlock", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsParenIfElse", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsSpreadOperator", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "jsSpreadExpression", { fg = c.onedarkLightBlue, bg = "NONE" })

	-- Typescript
	hl(0, "typescriptLabel", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptExceptions", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptBraces", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "typescriptEndColons", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptParens", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "typescriptDocTags", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptDocComment", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "typescriptLogicSymbols", { fg = c.onedarkPurple, bg = "NONE" })
	hl(0, "typescriptImport", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "typescriptBOM", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptVariableDeclaration", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptVariable", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptExport", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "typescriptAliasDeclaration", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "typescriptAliasKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptClassName", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "typescriptAccessibilityModifier", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptOperator", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptArrowFunc", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptMethodAccessor", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptMember", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "typescriptTypeReference", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "typescriptTemplateSB", { fg = c.onedarkYellowOrange, bg = "NONE" })
	hl(0, "typescriptArrowFuncArg", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptParamImpl", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptFuncComma", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptCastKeyword", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptCall", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptCase", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptReserved", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "typescriptDefault", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptDecorator", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "typescriptPredefinedType", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "typescriptClassHeritage", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "typescriptClassExtends", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptClassKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptBlock", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptDOMDocProp", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptTemplateSubstitution", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptClassBlock", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptFuncCallArg", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptIndexExpr", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptConditionalParen", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptArray", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "typescriptES6SetProp", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptObjectLiteral", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptTypeParameter", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "typescriptEnumKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptEnum", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "typescriptLoopParen", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptParenExp", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptModule", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "typescriptAmbientDeclaration", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptFuncTypeArrow", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "typescriptInterfaceHeritage", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "typescriptInterfaceName", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "typescriptInterfaceKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptInterfaceExtends", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptGlobal", { fg = c.onedarkBlueGreen, bg = "NONE" })
	hl(0, "typescriptAsyncFuncKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptFuncKeyword", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "typescriptGlobalMethod", { fg = c.onedarkYellow, bg = "NONE" })
	hl(0, "typescriptPromiseMethod", { fg = c.onedarkYellow, bg = "NONE" })

	-- XML
	hl(0, "xmlTag", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "xmlTagName", { fg = c.onedarkBlue, bg = "NONE" })
	hl(0, "xmlEndTag", { fg = c.onedarkBlue, bg = "NONE" })

	-- TS Rainbow
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
	hl(0, "gitcommitOnBranch", { fg = c.onedarkGray, bg = "NONE" })
	hl(0, "gitcommitBranch", { fg = c.onedarkPink, bg = "NONE" })
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

	-- NvimTree
	--[[ hl(0, "NvimTreeRootFolder", { fg = c.onedarkFront, bg = "NONE", bold = true }) ]]
	--[[ hl(0, "NvimTreeGitDirty", { fg = c.onedarkYellow, bg = "NONE" }) ]]
	--[[ hl(0, "NvimTreeGitNew", { fg = c.onedarkGreen, bg = "NONE" }) ]]
	--[[ hl(0, "NvimTreeImageFile", { fg = c.onedarkViolet, bg = "NONE" }) ]]
	--[[ hl(0, "NvimTreeEmptyFolderName", { fg = c.onedarkGray, bg = "NONE" }) ]]
	--[[ hl(0, "NvimTreeFolderName", { fg = c.onedarkFront, bg = "NONE" }) ]]
	--[[ hl(0, "NvimTreeSpecialFile", { fg = c.onedarkPurple, bg = "NONE", underline = true }) ]]
	--[[ hl( ]]
	--[[ 	0, ]]
	--[[ 	"NvimTreeNormal", ]]
	--[[ 	{ fg = c.onedarkFront, bg = opts.disable_nvimtree_bg and c.onedarkBack or c.onedarkLeftDark } ]]
	--[[ ) ]]
	--[[ hl( ]]
	--[[ 	0, ]]
	--[[ 	"NvimTreeCursorLine", ]]
	--[[ 	{ fg = "NONE", bg = opts.disable_nvimtree_bg and c.onedarkCursorDarkDark or c.onedarkLeftMid } ]]
	--[[ ) ]]
	--[[ hl( ]]
	--[[ 	0, ]]
	--[[ 	"NvimTreeVertSplit", ]]
	--[[ 	{ fg = opts.disable_nvimtree_bg and c.onedarkSplitDark or c.onedarkBack, bg = c.onedarkBack } ]]
	--[[ ) ]]
	--[[ hl(0, "NvimTreeEndOfBuffer", { fg = opts.disable_nvimtree_bg and c.onedarkCursorDarkDark or c.onedarkLeftDark }) ]]
	--[[ hl( ]]
	--[[ 	0, ]]
	--[[ 	"NvimTreeOpenedFolderName", ]]
	--[[ 	{ fg = "NONE", bg = opts.disable_nvimtree_bg and c.onedarkCursorDarkDark or c.onedarkLeftDark } ]]
	--[[ ) ]]
	--[[]]
	-- Bufferline
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
		{ fg = "NONE", bg = isDark and c.onedarkPopupHighlightGray or c.onedarkPopupHighlightLightBlue }
	)
	hl(
		0,
		"LspReferenceRead",
		{ fg = "NONE", bg = isDark and c.onedarkPopupHighlightGray or c.onedarkPopupHighlightLightBlue }
	)
	hl(
		0,
		"LspReferenceWrite",
		{ fg = "NONE", bg = isDark and c.onedarkPopupHighlightGray or c.onedarkPopupHighlightLightBlue }
	)

	-- Nvim compe
	hl(0, "CmpItemKindVariable", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "CmpItemKindInterface", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "CmpItemKindText", { fg = c.onedarkLightBlue, bg = "NONE" })
	hl(0, "CmpItemKindFunction", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "CmpItemKindMethod", { fg = c.onedarkPink, bg = "NONE" })
	hl(0, "CmpItemKindKeyword", { fg = c.onedarkFront, bg = "NONE" })
	hl(0, "CmpItemKindProperty", { fg = c.onedarkFront, bg = "NONE" })
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
		hl(0, "NvimTreeFolderIcon", { fg = c.onedarkBlue, bg = "NONE" })
		hl(0, "NvimTreeIndentMarker", { fg = c.onedarkLineNumber, bg = "NONE" })

		hl(0, "LspFloatWinNormal", { fg = c.onedarkFront, bg = "NONE" })
		hl(0, "LspFloatWinBorder", { fg = c.onedarkFront, bg = "NONE" })
		hl(0, "LspSagaHoverBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaSignatureHelpBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaCodeActionBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaDefPreviewBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspLinesDiagBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaRenameBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaBorderTitle", { fg = c.onedarkCursorDark, bg = "NONE" })
		hl(0, "LSPSagaDiagnosticTruncateLine", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaDiagnosticBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaDiagnosticBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaShTruncateLine", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaShTruncateLine", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaDocTruncateLine", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaRenameBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "LspSagaLspFinderBorder", { fg = c.onedarkLineNumber, bg = "NONE" })

		hl(0, "TelescopePromptBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "TelescopeResultsBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "TelescopePreviewBorder", { fg = c.onedarkLineNumber, bg = "NONE" })
		hl(0, "TelescopeNormal", { fg = c.onedarkFront, bg = "NONE" })
		hl(0, "TelescopeSelection", { fg = c.onedarkFront, bg = c.onedarkPopupHighlightBlue })
		hl(0, "TelescopeMultiSelection", { fg = c.onedarkFront, bg = c.onedarkPopupHighlightBlue })
		hl(0, "TelescopeMatching", { fg = c.onedarkMediumBlue, bg = "NONE", bold = true })
		hl(0, "TelescopePromptPrefix", { fg = c.onedarkFront, bg = "NONE" })

		-- symbols-outline
		-- white fg and lualine blue bg
		hl(0, "FocusedSymbol", { fg = "#ffffff", bg = c.onedarkUiBlue })
		hl(0, "SymbolsOutlineConnector", { fg = c.onedarkLineNumber, bg = "NONE" })
	else
		hl(0, "NvimTreeFolderIcon", { fg = c.onedarkDarkBlue, bg = "NONE" })
		hl(0, "NvimTreeIndentMarker", { fg = c.onedarkTabOther, bg = "NONE" })

		hl(0, "LspFloatWinNormal", { fg = c.onedarkFront, bg = "NONE" })
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

		hl(0, "TelescopePromptBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "TelescopeResultsBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "TelescopePreviewBorder", { fg = c.onedarkTabOther, bg = "NONE" })
		hl(0, "TelescopeNormal", { fg = c.onedarkFront, bg = "NONE" })
		hl(0, "TelescopeSelection", { fg = c.onedarkBack, bg = c.onedarkPopupHighlightBlue })
		hl(0, "TelescopeMultiSelection", { fg = c.onedarkBack, bg = c.onedarkPopupHighlightBlue })
		hl(0, "TelescopeMatching", { fg = c.onedarkDarkBlue, bg = "NONE", bold = true, nil })
		hl(0, "TelescopePromptPrefix", { fg = c.onedarkFront, bg = "NONE" })

		-- symbols-outline
		-- white fg and lualine blue bg
		hl(0, "FocusedSymbol", { fg = c.onedarkBack, bg = "#AF00DB" })
		hl(0, "SymbolsOutlineConnector", { fg = c.onedarkTabOther, bg = "NONE" })
	end
end

theme.link_highlight = function()
	-- Legacy groups for official git.vim and diff.vim syntax
	hl(0, "diffAdded", { link = "DiffAdd" })
	hl(0, "diffChanged", { link = "DiffChange" })
	hl(0, "diffRemoved", { link = "DiffDelete" })
	-- Nvim compe
	hl(0, "CompeDocumentation", { link = "Pmenu" })
	hl(0, "CompeDocumentationBorder", { link = "Pmenu" })
	hl(0, "CmpItemKind", { link = "Pmenu" })
	hl(0, "CmpItemKindClass", { link = "CmpItemKindConstructor" })
	hl(0, "CmpItemKindModule", { link = "CmpItemKindKeyword" })
	hl(0, "CmpItemKindOperator", { link = "TSOperator" })
	hl(0, "CmpItemKindReference", { link = "TSParameterReference" })
	hl(0, "CmpItemKindValue", { link = "TSField" })
	hl(0, "CmpItemKindField", { link = "TSField" })
	hl(0, "CmpItemKindEnum", { link = "TSField" })
	hl(0, "CmpItemKindSnippet", { link = "TSText" })
	hl(0, "CmpItemKindColor", { link = "cssColor" })
	hl(0, "CmpItemKindFile", { link = "TSURI" })
	hl(0, "CmpItemKindFolder", { link = "TSURI" })
	hl(0, "CmpItemKindEvent", { link = "TSConstant" })
	hl(0, "CmpItemKindEnumMember", { link = "TSField" })
	hl(0, "CmpItemKindConstant", { link = "TSConstant" })
	hl(0, "CmpItemKindStruct", { link = "TSStructure" })
	hl(0, "CmpItemKindTypeParameter", { link = "TSParameter" })
end

return theme
