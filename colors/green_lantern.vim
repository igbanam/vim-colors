if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "green_lantern"
let s:nord_vim_version="0.19.0"
set background=dark

let s:gtln0_gui = "#2E403D"
let s:gtln1_gui = "#3B524F"
let s:gtln2_gui = "#435E5A"
let s:gtln3_gui = "#4C6A65"
let s:gtln3_gui_bright = "#618882"
let s:gtln4_gui = "#D8E9E6"
let s:gtln5_gui = "#E5F0EE"
let s:gtln6_gui = "#ECF4F2"
let s:gtln7_gui = "#8FBC95"
let s:gtln8_gui = "#88D0A4"
let s:gtln9_gui = "#81C1AC"
let s:gtln10_gui = "#5EAC96"
let s:gtln11_gui = "#BF61B8"
let s:gtln12_gui = "#D070A9"
let s:gtln13_gui = "#EB8B9B"
let s:gtln14_gui = "#BEAF8C"
let s:gtln15_gui = "#9B8EB4"

let s:gtln1_term = "0"
let s:gtln3_term = "8"
let s:gtln5_term = "7"
let s:gtln6_term = "15"
let s:gtln7_term = "14"
let s:gtln8_term = "6"
let s:gtln9_term = "4"
let s:gtln10_term = "12"
let s:gtln11_term = "1"
let s:gtln12_term = "11"
let s:gtln13_term = "3"
let s:gtln14_term = "2"
let s:gtln15_term = "5"

let s:gtln3_gui_brightened = [
  \ s:gtln3_gui,
  \ "#4E6D68",
  \ "#50706A",
  \ "#52736E",
  \ "#557671",
  \ "#577974",
  \ "#597C77",
  \ "#5B7F79",
  \ "#5D827C",
  \ "#5F857E",
  \ "#618882",
  \ "#638B84",
  \ "#668E88",
  \ "#68918B",
  \ "#6A948D",
  \ "#6D9690",
  \ "#6F9891",
  \ "#729A93",
  \ "#759C96",
  \ "#789E97",
  \ "#7BA19A",
\ ]

let g:nord_bold = get(g:, "nord_bold", 1)
let s:bold = (g:nord_bold == 0) ? "" : "bold,"

let g:nord_underline = get(g:, "nord_underline", 1)
let s:underline = (g:nord_underline == 0) ? "NONE," : "underline,"

let g:nord_italic = get(g:, "nord_italic", (has("gui_running") || $TERM_ITALICS == "true"))
let s:italic = (g:nord_italic == 0) ? "" : "italic,"

let g:nord_italic_comments = get(g:, "nord_italic_comments", 0)
let s:italicize_comments = (g:nord_italic_comments == 0) ? "" : get(s:, "italic")

let g:nord_uniform_status_lines = get(g:, "nord_uniform_status_lines", 0)

let g:nord_bold_vertical_split_line = get(g:, "nord_bold_vertical_split_line", 0)
if exists("g:nord_comment_brightness")
  echohl WarningMsg
  echomsg 'nord: warning: Variable g:nord_comment_brightness has been deprecated and will be removed in version 1.0.0!' .
                   \' The comment color brightness has been increased by 10% by default.' .
                   \' Please see https://github.com/nordtheme/vim/issues/145 for more details.'
  echohl None
  let g:nord_comment_brightness = 10
endif
let g:nord_cursor_line_number_background = get(g:, "nord_cursor_line_number_background", 0)
let g:nord_uniform_diff_background = get(g:, "nord_uniform_diff_background", 0)

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", s:bold, "")
call s:hi("Italic", "", "", "", "", s:italic, "")
call s:hi("Underline", "", "", "", "", s:underline, "")

"+--- Editor ---+
call s:hi("ColorColumn", "", s:gtln1_gui, "NONE", s:gtln1_term, "", "")
call s:hi("Cursor", s:gtln0_gui, s:gtln4_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:gtln1_gui, "NONE", s:gtln1_term, "NONE", "")
call s:hi("Error", s:gtln4_gui, s:gtln11_gui, "", s:gtln11_term, "", "")
call s:hi("iCursor", s:gtln0_gui, s:gtln4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:gtln3_gui, "NONE", s:gtln3_term, "NONE", "", "")
call s:hi("MatchParen", s:gtln8_gui, s:gtln3_gui, s:gtln8_term, s:gtln3_term, "", "")
call s:hi("NonText", s:gtln2_gui, "", s:gtln3_term, "", "", "")
call s:hi("Normal", s:gtln4_gui, s:gtln0_gui, "NONE", "NONE", "", "")
call s:hi("Pmenu", s:gtln4_gui, s:gtln2_gui, "NONE", s:gtln1_term, "NONE", "")
call s:hi("PmenuSbar", s:gtln4_gui, s:gtln2_gui, "NONE", s:gtln1_term, "", "")
call s:hi("PmenuSel", s:gtln8_gui, s:gtln3_gui, s:gtln8_term, s:gtln3_term, "", "")
call s:hi("PmenuThumb", s:gtln8_gui, s:gtln3_gui, "NONE", s:gtln3_term, "", "")
call s:hi("SpecialKey", s:gtln3_gui, "", s:gtln3_term, "", "", "")
call s:hi("SpellBad", s:gtln11_gui, s:gtln0_gui, s:gtln11_term, "NONE", "undercurl", s:gtln11_gui)
call s:hi("SpellCap", s:gtln13_gui, s:gtln0_gui, s:gtln13_term, "NONE", "undercurl", s:gtln13_gui)
call s:hi("SpellLocal", s:gtln5_gui, s:gtln0_gui, s:gtln5_term, "NONE", "undercurl", s:gtln5_gui)
call s:hi("SpellRare", s:gtln6_gui, s:gtln0_gui, s:gtln6_term, "NONE", "undercurl", s:gtln6_gui)
call s:hi("Visual", "", s:gtln2_gui, "", s:gtln1_term, "", "")
call s:hi("VisualNOS", "", s:gtln2_gui, "", s:gtln1_term, "", "")

"+- Vim 8 Terminal Colors -+
if has('terminal')
  let g:terminal_ansi_colors = [s:gtln1_gui, s:gtln11_gui, s:gtln14_gui, s:gtln13_gui, s:gtln9_gui, s:gtln15_gui, s:gtln8_gui, s:gtln5_gui, s:gtln3_gui, s:gtln11_gui, s:gtln14_gui, s:gtln13_gui, s:gtln9_gui, s:gtln15_gui, s:gtln7_gui, s:gtln6_gui]
endif

if has('nvim')
  "+- Neovim Terminal Colors -+
  let g:terminal_color_0 = s:gtln1_gui
  let g:terminal_color_1 = s:gtln11_gui
  let g:terminal_color_2 = s:gtln14_gui
  let g:terminal_color_3 = s:gtln13_gui
  let g:terminal_color_4 = s:gtln9_gui
  let g:terminal_color_5 = s:gtln15_gui
  let g:terminal_color_6 = s:gtln8_gui
  let g:terminal_color_7 = s:gtln5_gui
  let g:terminal_color_8 = s:gtln3_gui
  let g:terminal_color_9 = s:gtln11_gui
  let g:terminal_color_10 = s:gtln14_gui
  let g:terminal_color_11 = s:gtln13_gui
  let g:terminal_color_12 = s:gtln9_gui
  let g:terminal_color_13 = s:gtln15_gui
  let g:terminal_color_14 = s:gtln7_gui
  let g:terminal_color_15 = s:gtln6_gui

  "+- Neovim Support -+
  call s:hi("healthError", s:gtln11_gui, s:gtln1_gui, s:gtln11_term, s:gtln1_term, "", "")
  call s:hi("healthSuccess", s:gtln14_gui, s:gtln1_gui, s:gtln14_term, s:gtln1_term, "", "")
  call s:hi("healthWarning", s:gtln13_gui, s:gtln1_gui, s:gtln13_term, s:gtln1_term, "", "")
  call s:hi("TermCursorNC", "", s:gtln1_gui, "", s:gtln1_term, "", "")

  "+- Neovim Diagnostics API -+
  call s:hi("DiagnosticWarn", s:gtln13_gui, "", s:gtln13_term, "", "", "")
  call s:hi("DiagnosticError" , s:gtln11_gui, "", s:gtln11_term, "", "", "")
  call s:hi("DiagnosticInfo" , s:gtln8_gui, "", s:gtln8_term, "", "", "")
  call s:hi("DiagnosticHint" , s:gtln10_gui, "", s:gtln10_term, "", "", "")
  call s:hi("DiagnosticUnderlineWarn" , s:gtln13_gui, "", s:gtln13_term, "", "undercurl", "")
  call s:hi("DiagnosticUnderlineError" , s:gtln11_gui, "", s:gtln11_term, "", "undercurl", "")
  call s:hi("DiagnosticUnderlineInfo" , s:gtln8_gui, "", s:gtln8_term, "", "undercurl", "")
  call s:hi("DiagnosticUnderlineHint" , s:gtln10_gui, "", s:gtln10_term, "", "undercurl", "")

  "+- Neovim DocumentHighlight -+
  call s:hi("LspReferenceText", "", s:gtln3_gui, "", s:gtln3_term, "", "")
  call s:hi("LspReferenceRead", "", s:gtln3_gui, "", s:gtln3_term, "", "")
  call s:hi("LspReferenceWrite", "", s:gtln3_gui, "", s:gtln3_term, "", "")

  "+- Neovim LspSignatureHelp -+
  call s:hi("LspSignatureActiveParameter", s:gtln8_gui, "", s:gtln8_term, "", s:underline, "")
endif

"+--- Gutter ---+
call s:hi("CursorColumn", "", s:gtln1_gui, "NONE", s:gtln1_term, "", "")
if g:nord_cursor_line_number_background == 0
  call s:hi("CursorLineNr", s:gtln4_gui, "", "NONE", "", "NONE", "")
else
  call s:hi("CursorLineNr", s:gtln4_gui, s:gtln1_gui, "NONE", s:gtln1_term, "NONE", "")
endif
call s:hi("Folded", s:gtln3_gui, s:gtln1_gui, s:gtln3_term, s:gtln1_term, s:bold, "")
call s:hi("FoldColumn", s:gtln3_gui, s:gtln0_gui, s:gtln3_term, "NONE", "", "")
call s:hi("SignColumn", s:gtln1_gui, s:gtln0_gui, s:gtln1_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:gtln8_gui, "", s:gtln8_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:gtln1_gui, "", s:gtln1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:gtln4_gui, s:gtln11_gui, "NONE", s:gtln11_term, "", "")
call s:hi("ModeMsg", s:gtln4_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("Question", s:gtln4_gui, "", "NONE", "", "", "")
if g:nord_uniform_status_lines == 0
  call s:hi("StatusLine", s:gtln8_gui, s:gtln3_gui, s:gtln8_term, s:gtln3_term, "NONE", "")
  call s:hi("StatusLineNC", s:gtln4_gui, s:gtln1_gui, "NONE", s:gtln1_term, "NONE", "")
  call s:hi("StatusLineTerm", s:gtln8_gui, s:gtln3_gui, s:gtln8_term, s:gtln3_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:gtln4_gui, s:gtln1_gui, "NONE", s:gtln1_term, "NONE", "")
else
  call s:hi("StatusLine", s:gtln8_gui, s:gtln3_gui, s:gtln8_term, s:gtln3_term, "NONE", "")
  call s:hi("StatusLineNC", s:gtln4_gui, s:gtln3_gui, "NONE", s:gtln3_term, "NONE", "")
  call s:hi("StatusLineTerm", s:gtln8_gui, s:gtln3_gui, s:gtln8_term, s:gtln3_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:gtln4_gui, s:gtln3_gui, "NONE", s:gtln3_term, "NONE", "")
endif
call s:hi("WarningMsg", s:gtln0_gui, s:gtln13_gui, s:gtln1_term, s:gtln13_term, "", "")
call s:hi("WildMenu", s:gtln8_gui, s:gtln1_gui, s:gtln8_term, s:gtln1_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:gtln6_gui, s:gtln10_gui, s:gtln6_term, s:gtln10_term, s:underline, "")
call s:hi("Search", s:gtln1_gui, s:gtln8_gui, s:gtln1_term, s:gtln8_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:gtln4_gui, s:gtln1_gui, "NONE", s:gtln1_term, "NONE", "")
call s:hi("TabLineFill", s:gtln4_gui, s:gtln1_gui, "NONE", s:gtln1_term, "NONE", "")
call s:hi("TabLineSel", s:gtln8_gui, s:gtln3_gui, s:gtln8_term, s:gtln3_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:gtln4_gui, "", "NONE", "", "NONE", "")

if g:nord_bold_vertical_split_line == 0
  call s:hi("VertSplit", s:gtln2_gui, s:gtln0_gui, s:gtln3_term, "NONE", "NONE", "")
else
  call s:hi("VertSplit", s:gtln2_gui, s:gtln1_gui, s:gtln3_term, s:gtln1_term, "NONE", "")
endif

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Character", s:gtln14_gui, "", s:gtln14_term, "", "", "")
call s:hi("Comment", s:gtln3_gui_bright, "", s:gtln3_term, "", s:italicize_comments, "")
call s:hi("Conceal", "", "NONE", "", "NONE", "", "")
call s:hi("Conditional", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Constant", s:gtln4_gui, "", "NONE", "", "", "")
call s:hi("Decorator", s:gtln12_gui, "", s:gtln12_term, "", "", "")
call s:hi("Define", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Delimiter", s:gtln6_gui, "", s:gtln6_term, "", "", "")
call s:hi("Exception", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Float", s:gtln15_gui, "", s:gtln15_term, "", "", "")
call s:hi("Function", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("Identifier", s:gtln4_gui, "", "NONE", "", "NONE", "")
call s:hi("Include", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Keyword", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Label", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Number", s:gtln15_gui, "", s:gtln15_term, "", "", "")
call s:hi("Operator", s:gtln9_gui, "", s:gtln9_term, "", "NONE", "")
call s:hi("PreProc", s:gtln9_gui, "", s:gtln9_term, "", "NONE", "")
call s:hi("Repeat", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Special", s:gtln4_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:gtln13_gui, "", s:gtln13_term, "", "", "")
call s:hi("SpecialComment", s:gtln8_gui, "", s:gtln8_term, "", s:italicize_comments, "")
call s:hi("Statement", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("StorageClass", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("String", s:gtln14_gui, "", s:gtln14_term, "", "", "")
call s:hi("Structure", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("Tag", s:gtln4_gui, "", "", "", "", "")
call s:hi("Todo", s:gtln13_gui, "NONE", s:gtln13_term, "NONE", "", "")
call s:hi("Type", s:gtln9_gui, "", s:gtln9_term, "", "NONE", "")
call s:hi("Typedef", s:gtln9_gui, "", s:gtln9_term, "", "", "")
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

"+-----------+
"+ Languages +
"+-----------+
call s:hi("asciidocAttributeEntry", s:gtln10_gui, "", s:gtln10_term, "", "", "")
call s:hi("asciidocAttributeList", s:gtln10_gui, "", s:gtln10_term, "", "", "")
call s:hi("asciidocAttributeRef", s:gtln10_gui, "", s:gtln10_term, "", "", "")
call s:hi("asciidocHLabel", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("asciidocListingBlock", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("asciidocMacroAttributes", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("asciidocOneLineTitle", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("asciidocPassthroughBlock", s:gtln9_gui, "", s:gtln9_term, "", "", "")
call s:hi("asciidocQuotedMonospaced", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("asciidocTriplePlusPassthrough", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

call s:hi("awkCharClass", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("awkPatterns", s:gtln9_gui, "", s:gtln9_term, "", s:bold, "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit
hi! link cConstant Type

call s:hi("cmakeGeneratorExpression", s:gtln10_gui, "", s:gtln10_term, "", "", "")

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("cssDefinition", s:gtln7_gui, "", s:gtln7_term, "", "NONE", "")
call s:hi("cssIdentifier", s:gtln7_gui, "", s:gtln7_term, "", s:underline, "")
call s:hi("cssStringQ", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:gtln8_gui, "", s:gtln8_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("dtExecKey", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("dtLocaleKey", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("dtNumericKey", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("dtTypeKey", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

if g:nord_uniform_diff_background == 0
  call s:hi("DiffAdd", s:gtln14_gui, s:gtln0_gui, s:gtln14_term, "NONE", "inverse", "")
  call s:hi("DiffChange", s:gtln13_gui, s:gtln0_gui, s:gtln13_term, "NONE", "inverse", "")
  call s:hi("DiffDelete", s:gtln11_gui, s:gtln0_gui, s:gtln11_term, "NONE", "inverse", "")
  call s:hi("DiffText", s:gtln9_gui, s:gtln0_gui, s:gtln9_term, "NONE", "inverse", "")
else
  call s:hi("DiffAdd", s:gtln14_gui, s:gtln1_gui, s:gtln14_term, s:gtln1_term, "", "")
  call s:hi("DiffChange", s:gtln13_gui, s:gtln1_gui, s:gtln13_term, s:gtln1_term, "", "")
  call s:hi("DiffDelete", s:gtln11_gui, s:gtln1_gui, s:gtln11_term, s:gtln1_term, "", "")
  call s:hi("DiffText", s:gtln9_gui, s:gtln1_gui, s:gtln9_term, s:gtln1_term, "", "")
endif
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("elixirModuleDeclaration", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("elixirAlias", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("elixirAtom", s:gtln6_gui, "", s:gtln6_term, "", s:bold, "")

call s:hi("gitconfigVariable", s:gtln7_gui, "", s:gtln7_term, "", "", "")

call s:hi("goBuiltins", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link goConstants Keyword

" fatih/vim-go
call s:hi("gomodVersion", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("gomodGoVersion", s:gtln8_gui, "", s:gtln8_term, "", "", "")

call s:hi("helpBar", s:gtln3_gui, "", s:gtln3_term, "", "", "")
call s:hi("helpHyperTextJump", s:gtln8_gui, "", s:gtln8_term, "", s:underline, "")

call s:hi("htmlArg", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("htmlLink", s:gtln4_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:gtln7_gui, "", s:gtln7_term, "", "", "")

call s:hi("lessClass", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("markdownCode", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("markdownFootnote", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("markdownId", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("markdownIdDeclaration", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("markdownH1", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("markdownLinkText", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("markdownUrl", s:gtln4_gui, "", "NONE", "", "NONE", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:gtln7_gui, "", s:gtln7_term, "", "", "")

call s:hi("phpClasses", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("phpDocTags", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("podVerbatimLine", s:gtln4_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("rubySymbol", s:gtln6_gui, "", s:gtln6_term, "", s:bold, "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("rustAttribute", s:gtln10_gui, "", s:gtln10_term, "", "", "")
call s:hi("rustEnum", s:gtln7_gui, "", s:gtln7_term, "", s:bold, "")
call s:hi("rustMacro", s:gtln8_gui, "", s:gtln8_term, "", s:bold, "")
call s:hi("rustModPath", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("rustPanic", s:gtln9_gui, "", s:gtln9_term, "", s:bold, "")
call s:hi("rustTrait", s:gtln7_gui, "", s:gtln7_term, "", s:italic, "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:hi("sassClass", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("sassId", s:gtln7_gui, "", s:gtln7_term, "", s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("vimMapRhs", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("vimNotation", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("xmlCdataStart", s:gtln3_gui_bright, "", s:gtln3_term, "", s:bold, "")
call s:hi("xmlNamespace", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:gtln13_gui, "", s:gtln13_term, "", "", "")
call s:hi("ALEErrorSign" , s:gtln11_gui, "", s:gtln11_term, "", "", "")
call s:hi("ALEWarning" , s:gtln13_gui, "", s:gtln13_term, "", "undercurl", "")
call s:hi("ALEError" , s:gtln11_gui, "", s:gtln11_term, "", "undercurl", "")

" Coc
" > neoclide/coc.vim
call s:hi("CocWarningHighlight" , s:gtln13_gui, "", s:gtln13_term, "", "undercurl", "")
call s:hi("CocErrorHighlight" , s:gtln11_gui, "", s:gtln11_term, "", "undercurl", "")
call s:hi("CocWarningSign", s:gtln13_gui, "", s:gtln13_term, "", "", "")
call s:hi("CocErrorSign" , s:gtln11_gui, "", s:gtln11_term, "", "", "")
call s:hi("CocInfoSign" , s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("CocHintSign" , s:gtln10_gui, "", s:gtln10_term, "", "", "")

if has('nvim')
  " Neovim LSP
  " > neovim/nvim-lspconfig
  call s:hi("LspCodeLens", s:gtln3_gui_bright, "", s:gtln3_term, "", "", "")
  if has("nvim-0.5")
    call s:hi("LspDiagnosticsDefaultWarning", s:gtln13_gui, "", s:gtln13_term, "", "", "")
    call s:hi("LspDiagnosticsDefaultError" , s:gtln11_gui, "", s:gtln11_term, "", "", "")
    call s:hi("LspDiagnosticsDefaultInformation" , s:gtln8_gui, "", s:gtln8_term, "", "", "")
    call s:hi("LspDiagnosticsDefaultHint" , s:gtln10_gui, "", s:gtln10_term, "", "", "")
    call s:hi("LspDiagnosticsUnderlineWarning" , s:gtln13_gui, "", s:gtln13_term, "", "undercurl", "")
    call s:hi("LspDiagnosticsUnderlineError" , s:gtln11_gui, "", s:gtln11_term, "", "undercurl", "")
    call s:hi("LspDiagnosticsUnderlineInformation" , s:gtln8_gui, "", s:gtln8_term, "", "undercurl", "")
    call s:hi("LspDiagnosticsUnderlineHint" , s:gtln10_gui, "", s:gtln10_term, "", "undercurl", "")
  endif

  " Gitsigns
  " > lewis6991/gitsigns.nvim
  hi! link GitSignsCurrentLineBlame Comment
endif

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:gtln14_gui, "", s:gtln14_term, "", "", "")
call s:hi("GitGutterChange", s:gtln13_gui, "", s:gtln13_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:gtln11_gui, "", s:gtln11_term, "", "", "")
call s:hi("GitGutterDelete", s:gtln11_gui, "", s:gtln11_term, "", "", "")

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd", s:gtln14_gui, "", s:gtln14_term, "", "", "")
call s:hi("SignifySignChange", s:gtln13_gui, "", s:gtln13_term, "", "", "")
call s:hi("SignifySignChangeDelete", s:gtln11_gui, "", s:gtln11_term, "", "", "")
call s:hi("SignifySignDelete", s:gtln11_gui, "", s:gtln11_term, "", "", "")

" Sneak
" > justinmk/vim-sneak
hi! link Sneak Search

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:gtln11_gui, "", s:gtln11_term, "", "", "")
call s:hi("gitcommitUntrackedFile", s:gtln11_gui, "", s:gtln11_term, "", "", "")
call s:hi("gitcommitSelectedFile", s:gtln14_gui, "", s:gtln14_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:gtln4_gui, s:gtln3_gui, "", s:gtln3_term, "", "")
call s:hi("jediFat", s:gtln8_gui, s:gtln3_gui, s:gtln8_term, s:gtln3_term, s:underline.s:bold, "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-clap
" > liuchengxu/vim-clap
call s:hi("ClapDir", s:gtln4_gui, "", "", "", "", "")
call s:hi("ClapDisplay", s:gtln4_gui, s:gtln1_gui, "", s:gtln1_term, "", "")
call s:hi("ClapFile", s:gtln4_gui, "", "", "NONE", "", "")
call s:hi("ClapMatches", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("ClapNoMatchesFound", s:gtln13_gui, "", s:gtln13_term, "", "", "")
call s:hi("ClapSelected", s:gtln7_gui, "", s:gtln7_term, "", s:bold, "")
call s:hi("ClapSelectedSign", s:gtln9_gui, "", s:gtln9_term, "", "", "")
let s:clap_matches = [
        \ [s:gtln8_gui,  s:gtln8_term] ,
        \ [s:gtln9_gui,  s:gtln9_term] ,
        \ [s:gtln10_gui, s:gtln10_term] ,
        \ ]
for s:nord_clap_match_i in range(1,12)
  let clap_match_color = s:clap_matches[s:nord_clap_match_i % len(s:clap_matches) - 1]
  call s:hi("ClapMatches" . s:nord_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
  call s:hi("ClapFuzzyMatches" . s:nord_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
endfor
unlet s:nord_clap_match_i
hi! link ClapCurrentSelection PmenuSel
hi! link ClapCurrentSelectionSign ClapSelectedSign
hi! link ClapInput Pmenu
hi! link ClapPreview Pmenu
hi! link ClapProviderAbout ClapDisplay
hi! link ClapProviderColon Type
hi! link ClapProviderId Type

" vim-indent-guides
" > nathanaelkane/vim-indent-guides
call s:hi("IndentGuidesEven", "", s:gtln1_gui, "", s:gtln1_term, "", "")
call s:hi("IndentGuidesOdd", "", s:gtln2_gui, "", s:gtln3_term, "", "")

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:gtln11_gui, "", "", s:gtln11_term, "", "")

" vim-signature
" > kshenoy/vim-signature
call s:hi("SignatureMarkText", s:gtln8_gui, "", s:gtln8_term, "", "", "")

" vim-startify
" > mhinz/vim-startify
call s:hi("StartifyFile", s:gtln6_gui, "", s:gtln6_term, "", "", "")
call s:hi("StartifyFooter", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("StartifyHeader", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("StartifyNumber", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("StartifyPath", s:gtln8_gui, "", s:gtln8_term, "", "", "")
hi! link StartifyBracket Delimiter
hi! link StartifySlash Normal
hi! link StartifySpecial Comment

"+--- Languages ---+
" Haskell
" > neovimhaskell/haskell-vim
call s:hi("haskellPreProc", s:gtln10_gui, "", s:gtln10_term, "", "", "")
call s:hi("haskellType", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link haskellPragma haskellPreProc

" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:gtln8_gui, "", s:gtln8_term, "", s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" Pandoc
" > vim-pandoc/vim-pandoc-syntax
call s:hi("pandocDefinitionBlockTerm", s:gtln7_gui, "", s:gtln7_term, "", s:italic, "")
call s:hi("pandocTableDelims", s:gtln3_gui, "", s:gtln3_term, "", "", "")
hi! link pandocAtxHeader markdownH1
hi! link pandocBlockQuote markdownBlockquote
hi! link pandocCiteAnchor Operator
hi! link pandocCiteKey pandocReferenceLabel
hi! link pandocDefinitionBlockMark Operator
hi! link pandocEmphasis markdownItalic
hi! link pandocFootnoteID pandocReferenceLabel
hi! link pandocFootnoteIDHead markdownLinkDelimiter
hi! link pandocFootnoteIDTail pandocFootnoteIDHead
hi! link pandocGridTableDelims pandocTableDelims
hi! link pandocGridTableHeader pandocTableDelims
hi! link pandocOperator Operator
hi! link pandocPipeTableDelims pandocTableDelims
hi! link pandocReferenceDefinition pandocReferenceLabel
hi! link pandocReferenceLabel markdownLinkText
hi! link pandocReferenceURL markdownUrl
hi! link pandocSimpleTableHeader pandocAtxHeader
hi! link pandocStrong markdownBold
hi! link pandocTableHeaderWord pandocAtxHeader
hi! link pandocUListItemBullet Operator

if has('nvim')
  " tree-sitter
  " > nvim-treesitter/nvim-treesitter
  hi! link TSAnnotation Annotation
  hi! link TSConstBuiltin Constant
  hi! link TSConstructor Function
  hi! link TSEmphasis Italic
  hi! link TSFuncBuiltin Function
  hi! link TSFuncMacro Function
  hi! link TSStringRegex SpecialChar
  hi! link TSStrong Bold
  hi! link TSStructure Structure
  hi! link TSTagDelimiter TSTag
  hi! link TSUnderline Underline
  hi! link TSVariable Variable
  hi! link TSVariableBuiltin Keyword
endif

" TypeScript
" > HerringtonDarkholme/yats.vim
call s:hi("typescriptBOMWindowMethod", s:gtln8_gui, "", s:gtln8_term, "", s:italic, "")
call s:hi("typescriptClassName", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("typescriptDecorator", s:gtln12_gui, "", s:gtln12_term, "", "", "")
call s:hi("typescriptInterfaceName", s:gtln7_gui, "", s:gtln7_term, "", s:bold, "")
call s:hi("typescriptRegexpString", s:gtln13_gui, "", s:gtln13_term, "", "", "")
" TypeScript JSX
 call s:hi("tsxAttrib", s:gtln7_gui, "", s:gtln7_term, "", "", "")
hi! link typescriptOperator Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptAssign Operator
hi! link typescriptMember Identifier
hi! link typescriptDOMStorageMethod Identifier
hi! link typescriptArrowFuncArg Identifier
hi! link typescriptGlobal typescriptClassName
hi! link typescriptBOMWindowProp Function
hi! link typescriptArrowFuncDef Function
hi! link typescriptAliasDeclaration Function
hi! link typescriptPredefinedType Type
hi! link typescriptTypeReference typescriptClassName
hi! link typescriptTypeAnnotation Structure
hi! link typescriptDocNamedParamType SpecialComment
hi! link typescriptDocNotation Keyword
hi! link typescriptDocTags Keyword
hi! link typescriptImport Keyword
hi! link typescriptExport Keyword
hi! link typescriptTry Keyword
hi! link typescriptVariable Keyword
hi! link typescriptBraces Normal
hi! link typescriptObjectLabel Normal
hi! link typescriptCall Normal
hi! link typescriptClassHeritage typescriptClassName
hi! link typescriptFuncTypeArrow Structure
hi! link typescriptMemberOptionality Structure
hi! link typescriptNodeGlobal typescriptGlobal
hi! link typescriptTypeBrackets Structure
hi! link tsxEqual Operator
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxTagName tsxIntrinsicTagName

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("mkdFootnote", s:gtln8_gui, "", s:gtln8_term, "", "", "")
call s:hi("mkdRule", s:gtln10_gui, "", s:gtln10_term, "", "", "")
call s:hi("mkdLineBreak", s:gtln9_gui, "", s:gtln9_term, "", "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" PHP
" > StanAngeloff/php.vim
call s:hi("phpClass", s:gtln7_gui, "", s:gtln7_term, "", "", "")
call s:hi("phpClassImplements", s:gtln7_gui, "", s:gtln7_term, "", s:bold, "")
hi! link phpClassExtends phpClass
hi! link phpFunction Function
hi! link phpMethod Function
hi! link phpUseClass phpClass

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:gtln8_gui, "", s:gtln8_term, "", s:bold, "")
  endfor
else
  let s:vimwiki_hcolor_guifg = [s:gtln7_gui, s:gtln8_gui, s:gtln9_gui, s:gtln10_gui, s:gtln14_gui, s:gtln15_gui]
  let s:vimwiki_hcolor_ctermfg = [s:gtln7_term, s:gtln8_term, s:gtln9_term, s:gtln10_term, s:gtln14_term, s:gtln15_term]
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:vimwiki_hcolor_guifg[s:i-1] , "", s:vimwiki_hcolor_ctermfg[s:i-1], "", s:bold, "")
  endfor
endif
call s:hi("VimwikiLink", s:gtln8_gui, "", s:gtln8_term, "", s:underline, "")
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:gtln7_gui, "", s:gtln7_term, "", "", "")

"+------------+
"+ Public API +
"+------------+
"+--- Functions ---+

function! NordPalette() abort
  let ret = {}
  for color in range(16)
    execute 'let ret["nord'.color.'"] = s:nord'.color.'_gui'
  endfor
  let ret["gtln3_bright"] = s:gtln3_gui_bright
  return ret
endfunction

