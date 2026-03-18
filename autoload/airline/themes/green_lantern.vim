let g:airline#themes#green_lantern#palette = {}

let s:gtln0_gui = "#2E403D"
let s:gtln1_gui = "#3B524F"
let s:gtln2_gui = "#435E5A"
let s:gtln3_gui = "#4C6A65"
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

let s:gtln0_term = "NONE"
let s:gtln1_term = "0"
let s:gtln2_term = "NONE"
let s:gtln4_term = "NONE"
let s:gtln11_term = "1"
let s:gtln14_term = "2"
let s:gtln13_term = "3"
let s:gtln9_term = "4"
let s:gtln15_term = "5"
let s:gtln8_term = "6"
let s:gtln5_term = "7"
let s:gtln3_term = "8"
let s:gtln12_term = "11"
let s:gtln10_term = "12"
let s:gtln7_term = "14"
let s:gtln6_term = "15"

let s:NMain = [s:gtln1_gui, s:gtln8_gui, s:gtln1_term, s:gtln8_term]
let s:NRight = [s:gtln1_gui, s:gtln9_gui, s:gtln1_term, s:gtln9_term]
let s:NMiddle = [s:gtln5_gui, s:gtln3_gui, s:gtln5_term, s:gtln3_term]
let s:NWarn = [s:gtln1_gui, s:gtln13_gui, s:gtln3_term, s:gtln13_term]
let s:NError = [s:gtln0_gui, s:gtln11_gui, s:gtln1_term, s:gtln11_term]
let g:airline#themes#green_lantern#palette.normal = airline#themes#generate_color_map(s:NMain, s:NRight, s:NMiddle)
let g:airline#themes#green_lantern#palette.normal.airline_warning = s:NWarn
let g:airline#themes#green_lantern#palette.normal.airline_error = s:NError

let s:IMain = [s:gtln1_gui, s:gtln14_gui, s:gtln1_term, s:gtln6_term]
let s:IRight = [s:gtln1_gui, s:gtln9_gui, s:gtln1_term, s:gtln9_term]
let s:IMiddle = [s:gtln5_gui, s:gtln3_gui, s:gtln5_term, s:gtln3_term]
let s:IWarn = [s:gtln1_gui, s:gtln13_gui, s:gtln3_term, s:gtln13_term]
let s:IError = [s:gtln0_gui, s:gtln11_gui, s:gtln1_term, s:gtln11_term]
let g:airline#themes#green_lantern#palette.insert = airline#themes#generate_color_map(s:IMain, s:IRight, s:IMiddle)
let g:airline#themes#green_lantern#palette.insert.airline_warning = s:IWarn
let g:airline#themes#green_lantern#palette.insert.airline_error = s:IError

let s:RMain = [s:gtln1_gui, s:gtln14_gui, s:gtln1_term, s:gtln14_term]
let s:RRight = [s:gtln1_gui, s:gtln9_gui, s:gtln1_term, s:gtln9_term]
let s:RMiddle = [s:gtln5_gui, s:gtln3_gui, s:gtln5_term, s:gtln3_term]
let s:RWarn = [s:gtln1_gui, s:gtln13_gui, s:gtln3_term, s:gtln13_term]
let s:RError = [s:gtln0_gui, s:gtln11_gui, s:gtln1_term, s:gtln11_term]
let g:airline#themes#green_lantern#palette.replace = airline#themes#generate_color_map(s:RMain, s:RRight, s:RMiddle)
let g:airline#themes#green_lantern#palette.replace.airline_warning = s:RWarn
let g:airline#themes#green_lantern#palette.replace.airline_error = s:RError

let s:VMain = [s:gtln1_gui, s:gtln7_gui, s:gtln1_term, s:gtln7_term]
let s:VRight = [s:gtln1_gui, s:gtln9_gui, s:gtln1_term, s:gtln9_term]
let s:VMiddle = [s:gtln5_gui, s:gtln3_gui, s:gtln5_term, s:gtln3_term]
let s:VWarn = [s:gtln1_gui, s:gtln13_gui, s:gtln3_term, s:gtln13_term]
let s:VError = [s:gtln0_gui, s:gtln11_gui, s:gtln1_term, s:gtln11_term]
let g:airline#themes#green_lantern#palette.visual = airline#themes#generate_color_map(s:VMain, s:VRight, s:VMiddle)
let g:airline#themes#green_lantern#palette.visual.airline_warning = s:VWarn
let g:airline#themes#green_lantern#palette.visual.airline_error = s:VError

let s:IAMain = [s:gtln5_gui, s:gtln3_gui, s:gtln5_term, s:gtln3_term]
let s:IARight = [s:gtln5_gui, s:gtln3_gui, s:gtln5_term, s:gtln3_term]
if g:nord_uniform_status_lines == 0
  let s:IAMiddle = [s:gtln5_gui, s:gtln1_gui, s:gtln5_term, s:gtln1_term]
else
  let s:IAMiddle = [s:gtln5_gui, s:gtln3_gui, s:gtln5_term, s:gtln3_term]
endif
let s:IAWarn = [s:gtln1_gui, s:gtln13_gui, s:gtln3_term, s:gtln13_term]
let s:IAError = [s:gtln0_gui, s:gtln11_gui, s:gtln1_term, s:gtln11_term]
let g:airline#themes#green_lantern#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
let g:airline#themes#green_lantern#palette.inactive.airline_warning = s:IAWarn
let g:airline#themes#green_lantern#palette.inactive.airline_error = s:IAError

let g:airline#themes#green_lantern#palette.normal.airline_term = s:NMiddle
let g:airline#themes#green_lantern#palette.insert.airline_term = s:IMiddle
let g:airline#themes#green_lantern#palette.replace.airline_term = s:RMiddle
let g:airline#themes#green_lantern#palette.visual.airline_term = s:VMiddle
let g:airline#themes#green_lantern#palette.inactive.airline_term = s:IAMiddle

