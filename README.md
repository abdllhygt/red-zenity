# red-zenity
Cross-platform dialog boxes for Red language

![alt info](https://image.ibb.co/jCdW0T/0.png)
```red
wsize 300x200 zenity/info "Hi! Programming is more easy with <b>Red-Zenety</b>"
```

#### Error
![alt info](https://image.ibb.co/nxzeLT/2.png)
```red
zenity/error "Error!"
```
#### Question
![alt info](https://image.ibb.co/n1q8Eo/4.png)
```red
zenity/question "Did you like it?"
```

#### Entry
![alt info](https://image.ibb.co/iahYfT/5.png)
```red
zenity/entry
```

#### Password
![alt info](https://image.ibb.co/mA4qS8/9.png)
```red
zenity/password
```

#### Calendar
![alt info](https://image.ibb.co/kYxzLT/6.png)
```red
zenity/calendar
```

#### Select Color
![alt info](https://image.ibb.co/iXoTEo/7.png)
```red
zenity/color
```

#### Select Color Palette
![alt info](https://image.ibb.co/ndmtfT/7_1.png)
```red
zenity/palette
```

#### Scale
![alt info](https://image.ibb.co/hQXc78/8.png)
```red
zenity/scale
```

#### List
![alt info](https://image.ibb.co/eVNMZo/10.png)
```red
wsize 600x500 zenity/list ["numbers" "languages" "difficult point" "family"] [
  [1 "english"    6.5 "germanic"]
  [2 "chinese"    9   "chinese"]
  [3 "turkish"    8   "altaic"]
  [4 "kazakh"     8   "altaic"]
  [5 "korean"     8   "altaic"]
  [6 "spanish"    4.5 "latin"]
  [7 "portuguese" 5   "latin"]
  [8 "indonesian" 3   "malayo"]
  [9 "liwara"     1   "conlang"]
]
```

