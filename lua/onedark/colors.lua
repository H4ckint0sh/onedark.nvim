local colors = {}

if vim.o.background == "dark" then
	colors = {
		None = "NONE",
		Front = "#abb2bf",
		Back = "#282c34",
		White = "#bbbbbb",
		Comment = "#5c6370",

		TabCurrent = "#1E1E1E",
		TabOther = "#2f333d",
		TabOutside = "#252526",

		Border = "#2d3139",
		BackDark = "#383e4a",
		LeftLight = "#4e5666",

		PopupFront = "#f8fafd",
		PopupBack = "#1d1f23",

		SplitLight = "#898989",
		SplitDark = "#48425b",
		SplitThumb = "#404754",

		CursorDarkDark = "#2d3139",
		CursorDark = "#51504F",
		CursorLight = "#c8c8c8",
		Selection = "#383e4a",
		SelectioNFg = "#FFFFFF",

		DiffDelete = "#9a353d",
		DiffDeleteLight = "#ffebe9",
		DiffAdd = "#109868",
		DiffAddLight = "#E6FFEC",
		DiffChange = "#e0af68",
		SearchCurrent = "#5c6370",
		Search = "#484e5b",
		FoldBackground = "#202d39",

		-- Syntax colors
		Gray      = "#65717d",
		Violet    = "#c678dd",
		Blue      = "#61afef",
		DarkBlue  = "#223E55",
		Cyan      = "#56b6c2",
		Hint      = "#52adf2",
		Green     = "#89ca78",
		BlueGreen = "#89ddff",
		Info      = "#98c379",
		Red       = "#f65866",
		Orange    = "#d18c4e",
		Error     = "#f65866",
		Warning   = "#cd9731",
		Yellow    = "#e5c07b",
		Pink      = "#c679dd",
		Purple    = "#c678dd",
	}
end

return colors
