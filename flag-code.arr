use context essentials2021
include image


horizontel-white = rectangle(220, 40, "solid", "white")


vertical-white = rectangle(40, 160, "solid", "white")


horizontel-blue = rectangle(220, 20, "solid", "blue")


vertical-blue = rectangle(20, 160, "solid", "blue")



flaggBackground-white = overlay-align("middle", "center", horizontel-white, rectangle(220, 160, "solid", "red"))


whiteVertical-background = overlay-xy(vertical-white, -60, 0, flaggBackground-white)


horizontelBlue-allFlag = overlay-align("middle", "center",horizontel-blue, whiteVertical-background)


overlay-xy(vertical-blue, -70, 0, horizontelBlue-allFlag)
