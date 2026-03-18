let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:gtln0 = ["#2E403D", "NONE"]
let s:gtln1 = ["#3B524F", 0]
let s:gtln2 = ["#435E5A", "NONE"]
let s:gtln3 = ["#4C6A65", 8]
let s:gtln4 = ["#D8E9E6", "NONE"]
let s:gtln5 = ["#E5F0EE", 7]
let s:gtln6 = ["#ECF4F2", 15]
let s:gtln7 = ["#8FBC95", 14]
let s:gtln8 = ["#88D0A4", 6]
let s:gtln9 = ["#81C1AC", 4]
let s:gtln10 = ["#5EAC96", 12]
let s:gtln11 = ["#BF61B8", 1]
let s:gtln12 = ["#D070A9", 11]
let s:gtln13 = ["#EB8B9B", 3]
let s:gtln14 = ["#BEAF8C", 2]
let s:gtln15 = ["#9B8EB4", 5]

let s:p.normal.left = [ [ s:gtln1, s:gtln8 ], [ s:gtln5, s:gtln1 ] ]
let s:p.normal.middle = [ [ s:gtln5, s:gtln3 ] ]
let s:p.normal.right = [ [ s:gtln5, s:gtln1 ], [ s:gtln5, s:gtln1 ] ]
let s:p.normal.warning = [ [ s:gtln1, s:gtln13 ] ]
let s:p.normal.error = [ [ s:gtln1, s:gtln11 ] ]

let s:p.inactive.left =  [ [ s:gtln1, s:gtln8 ], [ s:gtln5, s:gtln1 ] ]
let s:p.inactive.middle = g:nord_uniform_status_lines == 0 ? [ [ s:gtln5, s:gtln1 ] ] : [ [ s:gtln5, s:gtln3 ] ]
let s:p.inactive.right = [ [ s:gtln5, s:gtln1 ], [ s:gtln5, s:gtln1 ] ]

let s:p.insert.left = [ [ s:gtln1, s:gtln6 ], [ s:gtln5, s:gtln1 ] ]
let s:p.replace.left = [ [ s:gtln1, s:gtln13 ], [ s:gtln5, s:gtln1 ] ]
let s:p.visual.left = [ [ s:gtln1, s:gtln7 ], [ s:gtln5, s:gtln1 ] ]

let s:p.tabline.left = [ [ s:gtln5, s:gtln3 ] ]
let s:p.tabline.middle = [ [ s:gtln5, s:gtln3 ] ]
let s:p.tabline.right = [ [ s:gtln5, s:gtln3 ] ]
let s:p.tabline.tabsel = [ [ s:gtln1, s:gtln8 ] ]

let g:lightline#colorscheme#green_lantern#palette = lightline#colorscheme#flatten(s:p)

