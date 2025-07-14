# Import Module
from tkinter import *

# create root window
root = Tk()

# root window title and dimension
root.title("First Qt Program")


root.geometry(newGeometry="400x300")

#adding a label to the root window
lbl = Label(root, text = "Are you a Geek?")
lbl.grid()

def clicked():
    print("Yes")
    lbl.configure(text="You clicked Yes")
button = Button(root, text = "Yes",command=clicked)
button.grid()

# all widgets will be here
# Execute Tkinter
root.mainloop()