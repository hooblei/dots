

let s:N1 = [ '#080808', '#87ffaf', 121, 237 ]
let s:N2 = [ '#f4cf86', '#45413b', 244, 234 ]
let s:N3 = [ '#8cffba', '#242321', 252, 234 ]

let s:file = [ '#ff2c4b', s:N3[1], 196, s:N3[3], '' ]

let s:I1 = [ '#080808', '#ff5f00', 234, 121 ]
"let s:I2 = [ s:N2[0], s:N2[1], s:N2[2], s:N2[3] ] " dirtyblonde    & facebook
let s:I2 = [ '#f4cf86', '#45413b', 242, 234 ]
let s:I3 = s:I2


let s:V1 = [ '#141413', '#ffa724', 121, 232 ] " blackestgravel & orange
let s:V2 = s:N2
let s:V3 = s:N2
let s:V4 = s:N2

let s:PA = [ '#f4cf86' , 222 ]
let s:RE = [ '#ff9eb8' , 203 ]
let s:IA = [ s:I2[0], s:I2[1], s:I2[2], 232, '' ]

let g:airline#themes#vrsl#normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3, s:file)

let g:airline#themes#vrsl#insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3, s:file)

let g:airline#themes#vrsl#visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3, s:file)

let g:airline#themes#vrsl#replace = copy(airline#themes#vrsl#insert)

let g:airline#themes#vrsl#inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA, s:file)
