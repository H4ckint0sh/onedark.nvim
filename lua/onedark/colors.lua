local colors = {}

if vim.o.background == "dark" then
	colors = {
		onedarkNone = "NONE",
		onedarkFront = "#a6b2c0",
		onedarkBack = "#282c34",
		onedarkWhite = "#bbbbbb",
		onedarkDisabled = "#5c6370",

		onedarkTabCurrent = "#1E1E1E",
		onedarkTabOther = "#2D2D2D",
		onedarkTabOutside = "#252526",

		onedarkLeftDark = "#252526",
		onedarkLeftMid = "#373737",
		onedarkLeftLight = "#636369",

		onedarkPopupFront = "#EEFFE3",
		onedarkPopupBack = "#001B1A",
		onedarkPopupHighlightBlue = "#73b8f1",
		onedarkPopupHighlightGray = "#002626",
		onedarkPopupHighlightGreen = "#002626",

		onedarkSplitLight = "#898989",
		onedarkSplitDark = "#444444",
		onedarkSplitThumb = "#424242",

		onedarkCursorDarkDark = "#002020",
		onedarkCursorDark = "#51504F",
		onedarkCursorLight = "#AEAFAD",
		onedarkSelection = "#383e4a",
		onedarkSelectioNFg = "#FFFFFF",
		onedarkLineNumber = "#005454",

		onedarkDiffRedDark = "#4B1818",
		onedarkDiffRedLight = "#e05252",
		onedarkDiffRedLightLight = "#FB0101",
		onedarkDiffGreenDark = "#373D29",
		onedarkDiffGreenLight = "#4B5632",
		onedarkSearchCurrent = "#42557b",
		onedarkSearch = "#484e5b",

		onedarkContext = "#003535",
		onedarkContextCurrent = "#335d5d",

		onedarkFoldBackground = "#202d39",

		-- Syntax colors
		onedarkGray = "#005454",
		onedarkViolet = "#646695",
		onedarkBlue = "#52adf2",
		onedarkDarkBlue = "#223E55",
		onedarkMediumBlue = "#2bbac5",
		onedarkLightBlue = "#89ddff",
		onedarkGreen = "#89ca78",
		onedarkBlueGreen = "#89ddff",
		onedarkLightGreen = "#98c378",
		onedarkRed = "#ef596f",
		onedarkOrange = "#e06c75",
		onedarkLightRed = "#FF9CAC",
		onedarkYellowOrange = "#d8995f",
		onedarkPink = "#c679dd",
		onedarkPurple = "#d55fde",
	}
end

return colors
