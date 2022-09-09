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
		onedarkSelection = "#1E611E",
		onedarkSelectioNFg = "#FFFFFF",
		onedarkLineNumber = "#005454",

		onedarkDiffRedDark = "#4B1818",
		onedarkDiffRedLight = "#6F1313",
		onedarkDiffRedLightLight = "#FB0101",
		onedarkDiffGreenDark = "#373D29",
		onedarkDiffGreenLight = "#4B5632",
		onedarkSearchCurrent = "#515c6a",
		onedarkSearch = "#613315",

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
		onedarkGreen = "#98c378",
		onedarkBlueGreen = "#89ddff",
		onedarkLightGreen = "#B5CEA8",
		onedarkRed = "#ef596f",
		onedarkOrange = "#d8985f",
		onedarkLightRed = "#FF9CAC",
		onedarkYellowOrange = "#d19a66",
		onedarkYellow = "#e5c07b",
		onedarkPink = "#C586C0",
		onedarkPurple = "#d55fde",
	}
end

return colors
