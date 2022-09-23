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

		onedarkSplitLight = "#898989",
		onedarkSplitDark = "#48425b",
		onedarkSplitThumb = "#404754",

		onedarkCursorDarkDark = "#2d3139",
		onedarkCursorDark = "#51504F",
		onedarkCursorLight = "#c8c8c8",
		onedarkSelection = "#383e4a",
		onedarkSelectioNFg = "#FFFFFF",

		onedarkDiffRedDark = "#9a353d",
		onedarkDiffRedLightLight = "#ffebe9",
		onedarkDiffGreenDark = "#109868",
		onedarkDiffGreenLight = "#E6FFEC",
        onedarkDiffOrande = "#e0af68",
		onedarkSearchCurrent = "#5c6370",
		onedarkSearch = "#484e5b",
		onedarkFoldBackground = "#202d39",

		-- Syntax colors
		onedarkGray = "#65717d",
		onedarkViolet = "#c678dd",
		onedarkBlue = "#61afef",
		onedarkDarkBlue = "#223E55",
		onedarkMediumBlue = "#56b6c2",
		onedarkLightBlue = "#52adf2",
		onedarkGreen = "#89ca78",
		onedarkBlueGreen = "#89ddff",
		onedarkLightGreen = "#98c379",
		onedarkRed = "#e86671",
		onedarkOrange = "#d18c4e",
		onedarkLightRed = "#f65866",
		onedarkYellowOrange = "#cd9731",
		onedarkYellow = "#e5c07b",
		onedarkPink = "#c679dd",
		onedarkPurple = "#c678dd",
	}
end

return colors
