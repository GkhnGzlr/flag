use context essentials2021
flag = rectangle(220,160,"solid","red") 
white1 = rectangle(40,160,"solid","white") 
white2 = rectangle(220,40,"solid","white") 
blue1 = rectangle(20,160,"solid","blue") 
blue2 = rectangle(220,20,"solid","blue")  
flag1 = put-image(white1,80,80,flag) 
flag2 = put-image(white2,110,80,flag1) 
flag3 = put-image(blue1,80,80,flag2) 
flag4 = put-image(blue2,110,80,flag3)  
flag4

# Proporsjonene til de ulike komponentene i det norske flagget er 6:1:2:1:12, eller 22:16, derfor er "redbg" 220px i lengde på x-aksen og 160px i y-aksen. 

redbg = rectangle(220, 160, "solid", "crimson")

# white-stripe-y/x har en bredde på 40px. Ut ifra proporsjonene så skal da egentlig de hvite stripene være 10px i bredden, men ved å gjøre de om til 40px så kan man heller legge de under de blå stripene. Da får man visuelt 4 striper til sammen, mens man egentlig bare har 2 striper tilsammen som er bredere. Da blir det ikke like mange linjer i koden, samtidig som filstørrelsen ikke blir like stor.


white-stripe-y = rectangle(40, 160, "solid", "white")

white-stripe-x = rotate(90, rectangle(40, 220, "solid", "white"))

blue-stripe-x = rectangle(20, 160, "solid", "blue")

blue-stripe-y = rotate(90, rectangle(20, 220, "solid", "blue"))

# Her har jeg brukt place-image funksjonen og plassert "bildene" lagvis, hvor det røde på flagget er bakgrunnen. For å få riktig plassering på stipene har jeg tenkt på flagget som et kordinat system ut ifra proporsjonene til flagget. 

place-image(blue-stripe-x, 80, 80, 
  place-image(blue-stripe-y, 110, 80,
    place-image(white-stripe-y, 80, 80,
      place-image(white-stripe-x, 110, 80,
              redbg))))


  overlay-xy(square(71, "solid", "fire-brick"),
  0, 0,
  overlay-xy(square(71, "solid", "fire-brick"),
    0, -130,
    overlay-xy(rectangle(150, 71, "solid", "fire-brick"),
      -140, 0,
      overlay-xy(rectangle(150, 71, "solid", "fire-brick"),
        -140, -130,
        overlay-xy(rectangle(35, 200, "solid", "midnight-blue"),
          -88, -0,
          overlay-xy(rectangle(290, 35, "solid", "midnight-blue"),
            -0, -83,
            rectangle(290,200, "solid", "white")))))))   
                  