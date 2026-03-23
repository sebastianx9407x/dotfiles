return {
	"saghen/blink.cmp",
	opts = {
		sources = {
			providers = {
				snippets = {
					opts = {
						friendly_snippets = false,
					},
				},
			},
		},
		completion = {
			menu = {
				draw = {
					columns = {
						{ "label" },
					},
				},
			},
			ghost_text = {
				enabled = false,
			},
		},
	},
}
