local colors = {}

if vim.o.background == "dark" then
	colors = {
		onedarkNone = "NONE",
		onedarkFront = "#abb2bf",
		onedarkBack = "#282c34",
		onedarkWhite = "#bbbbbb",
		onedarkDisabled = "#5c6370",

		onedarkTabCurrent = "#1E1E1E",
		onedarkTabOther = "#2f333d",
		onedarkTabOutside = "#252526",

		onedarkLeftDark = "#2d3139",
		onedarkLeftMid = "#383e4a",
		onedarkLeftLight = "#4e5666",

		onedarkPopupFront = "#f8fafd",
		onedarkPopupBack = "#1d1f23",
		onedarkPopupHighlightBlue = "#73b8f1",
		onedarkPopupHighlightGray = "#2d3139",
		onedarkPopupHighlightGreen = "#677696",

		onedarkSplitLight = "#898989",
		onedarkSplitDark = "#48425b",
		onedarkSplitThumb = "#404754",

		onedarkCursorDarkDark = "#2d3139",
		onedarkCursorDark = "#51504F",
		onedarkCursorLight = "#c8c8c8",
		onedarkSelection = "#383e4a",
		onedarkSelectioNFg = "#FFFFFF",
		onedarkLineNumber = "#c679dd",

		onedarkDiffRedDark = "#be4f44",
		onedarkDiffRedLight = "#c24038",
		onedarkDiffRedLightLight = "#f44747",
		onedarkDiffGreenDark = "#004545",
		onedarkDiffGreenLight = "#006060",
		onedarkSearchCurrent = "#5c6370",
		onedarkSearch = "#484e5b",

		onedarkContext = "#314365",
		onedarkContextCurrent = "#42557b",

		onedarkFoldBackground = "#202d39",

		-- Syntax colors
		onedarkGray = "#65717d",
		onedarkViolet = "#66017a",
		onedarkBlue = "#61afef",
		onedarkDarkBlue = "#223E55",
		onedarkMediumBlue = "#2bbac5",
		onedarkLightBlue = "#52adf2",
		onedarkGreen = "#89ca78",
		onedarkBlueGreen = "#89ddff",
		onedarkLightGreen = "#98c379",
		onedarkRed = "#ef596f",
		onedarkOrange = "#e06c60",
		onedarkLightRed = "#FF9CAC",
		onedarkYellowOrange = "#d19a66",
		onedarkYellow = "#e5c07b",
		onedarkPink = "#c679dd",
		onedarkPurple = "#d55fde",
	}
end

return colors
