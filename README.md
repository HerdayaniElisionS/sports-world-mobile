# Assignment 7
---
### 1. What is a widget tree?
A widget tree is like a map of how the app’s UI is built. The top widget is the parent, and inside wicb is the child are the widgets. In my app, the MaterialApp holds the Scaffold, and inside that I have AppBar, Column, Row, GridView, Text, and more. They’re all connected so if the parent of the tree changes, the children will get an update too.

---

### 2. Widgets I used in this project
In this project I used:
* **MaterialApp** → the main app that gives theme, color, and navigation.
* **Scaffold** → provides the base 
* **AppBar** → the top bar that shows the title “SportsWorld”.
* **Padding** → adds space around widgets 
* **Column** → stacks widgets vertically.
* **Row** → puts widgets side by side horizontally.
* **Card** → shows info like my name, NPM, and class in a card style box.
* **Container** → helps set padding, size, and background for content.
* **Text** → shows static text like labels and messages.
* **SizedBox** → gives vertical spacing between parts of the layout.
* **Center** → centers its child in the middle of the screen.
* **GridView.count** → makes a grid layout for the buttons (All Products, My Products, Create Products).
* **Icon** → shows icons on each item card.
* **SnackBar** → shows a small message at the bottom after a button is pressed.
---
### 3. What does MaterialApp do?

MaterialApp is the very first widget that will be the base of the whole app. It gives access to the app’s color theme, routes, and Material Design look. This is often used as the root because it helps us manage the rest of the widgets easier

---

### 4. Difference between StatelessWidget and StatefulWidget

- A **StatelessWidget** never changes once it’s built. It just shows something on the screen and stays the same.
- A **StatefulWidget** can change while the app is running. For example, a counter.

In my project, I used StatelessWidget because my page only shows static info and buttons that don’t change any data.

---

### 5. What is BuildContext?

**BuildContext** helps Flutter understand where a widget is inside the app layout. It’s important because it lets widgets connect with other parts of the app to do things like show messages, change themes, or respond when a button is pressed. For example, it helps Flutter know which screen or scaffold should display a SnackBar, or what theme colors to apply.
Without it, widgets wouldn’t know how to interact with the rest of the app.

---

### 6. Hot Reload vs Hot Restart

- **Hot reload** updates the code instantly without restarting the whole app 
- **Hot restart** restarts everything from zero and rebuilds the app from the start.
