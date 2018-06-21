Red[
  author: "Abdullah Yiğiterol"
]

comment {
--info              finished
--error             finished
--warning           finished
--question          finished
--notification      finished
--entry             finished
--calendar          finished
--file-selection    finished
--color-selection   finished
--scale             finished
--password          finished
--list              finished
--progress
--text-info
--forms
--display=DISPLAY
}

tsize: false

wsize: func [size [pair!]][
  tsize: rejoin["--width=" size/1 " " "--height=" size/2]
]

resetsize: func [][
  tsize: false
]

cleanlast: func [text [string!] return: [string!]][
  tlen: length? text
  remove at text tlen
  remove at text tlen
  return text
]

zenity: context [
  ttitle: copy ""

  title: func [text [string!]][
    zenity/ttitle: text
  ]

  info: func [text [string!]][
    text: rejoin["zenity --info --title '" zenity/ttitle "' --text '" text "'"]
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/console text
  ]

  error: func [text [string!]][
    text: rejoin["zenity --error --title '" zenity/ttitle "' --text '" text "'"]
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/console text
  ]

  warning: func [text [string!]][
    text: rejoin["zenity --error --title '" zenity/ttitle "' --text '" text "'"]
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/console text
  ]

  question: func [text [string!]][
    text: rejoin["zenity --question --title '" zenity/ttitle "' --text '" text "'"]
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/console text
  ]

  notification: func [text [string!]][
    text: rejoin["zenity --notification --title '" zenity/ttitle "' --text '" text "'"]
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/console text
  ]

  entry: func [return: [string!]][
    text: copy ""
    text: rejoin["zenity --entry --title '" zenity/ttitle "'"]
    printed: copy ""
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/output text printed
    printed: cleanlast printed
    return printed
  ]

  calendar: func [return: [string!]][
    text: copy ""
    text: rejoin["zenity --calendar --title '" zenity/ttitle "'"]
    printed: copy ""
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/output text printed
    printed: cleanlast printed
    return printed
  ]

  file: func [return: [string!]][
    text: copy ""
    text: rejoin["zenity --file-selection --title '" zenity/ttitle "'"]
    printed: copy ""
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/output text printed
    printed: cleanlast printed
    return printed
  ]

  color: func [return: [string!]][
    text: copy ""
    text: rejoin["zenity --color-selection --title '" zenity/ttitle "'"]
    printed: copy ""
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/output text printed
    printed: cleanlast printed
    return printed
  ]

  palette: func [return: [string!]][
    text: copy ""
    text: rejoin["zenity --color-selection --show-palette --title '" zenity/ttitle "'"]
    printed: copy ""
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/output text printed
    printed: cleanlast printed
    return printed
  ]

  scale: func [return: [integer!]][
    text: copy ""
    text: rejoin["zenity --scale --title '" zenity/ttitle "'"]
    printed: copy ""
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    call/output text printed
    printed: cleanlast printed
    return (to integer! printed)
  ]

  password: func [return: [string!]][
      text: copy ""
      text: rejoin["zenity --password --title '" zenity/ttitle "'"]
      printed: copy ""
      if tsize [text: rejoin[text " " tsize]]
      tsize: false
      call/output text printed
      printed: cleanlast printed
      return printed
  ]

  list: func [tblock [block!] eblock [block!]][
    text: copy ""
    text: rejoin["zenity --list \^/ --title '" zenity/ttitle "'"]
    if tsize [text: rejoin[text " " tsize]]
    tsize: false
    text: rejoin[text " \^/"]
    titles: copy ""
    elems: copy ""
    printed: copy ""
    foreach t tblock[
      t: rejoin["--column '" t "' "]
      append titles t
    ]
    append titles "\^/"
    foreach e eblock[
      elem: copy ""
      foreach i e[
        append elem rejoin["'" i "' "]
      ]
      append elems rejoin[elem "\^/"]
    ]
    elems: (cleanlast elems)
    elems: (cleanlast elems)
    call/output rejoin[text titles elems] printed
    printed: cleanlast printed
    return printed
  ]
]
