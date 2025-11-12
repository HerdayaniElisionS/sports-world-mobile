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


# Assignment 8

---

### 1. Explain the difference between Navigator.push() and Navigator.pushReplacement() in Flutter. In what context of your application is each best used?

**Navigator.push()** opens a new page on top of the current page, so we can go back to the previous page by pressing the back button. In my project i use it when the user presses the **Create Products** button on the home page to open the Add Product form.

**Navigator.pushReplacement()** replaces the current page with a new one, so the user cannot go back.In this project use it in the **Drawer** to move between the Home and Add Product pages so I do not need to go back to the old page.

---

### 2. How do you use hierarchy widgets like Scaffold, AppBar, and Drawer to build a consistent page structure in your application?

**Scaffold** gives every page the same main structure, such as the body, app bar, and the drawer.
**AppBar** shows the top bar with the app title **SportsWorld**.
**Drawer** gives a side bar for easier navigation between pages in a mobile apps.
I used these three widgets on every page, so the app layout looks clean and consistent.

---

### 3. In the context of user interface design, what are the advantages of using layout widgets like Padding, SingleChildScrollView, and ListView when displaying form elements? Provide usage examples from your application.

- **Padding** adds space around widgets so they do not look too close together.
- **SingleChildScrollView** makes the page scrollable when the keyboard opens or when the form is long.
- **ListView** or **Column** helps arrange input fields vertically in a clear way.

In my app, I use **Padding** around input boxes and **SingleChildScrollView** in the Add Product form so users can scroll through all fields easily.

---

### 4. How do you set the color theme so that your Football Shop has a visual identity that is consistent with the shop brand?

To make the Football Shop look more consistent and match its visual identity, I changed several parts of the app design.
I set the main color theme in **main.dart** using **ThemeData** with blue and green colors to represent the brand.
I also changed the **AppBar** to have a rounded shape and a light grey background, while keeping the logo text colored with **Sports** in green and **World** in blue.
The **Drawer** was also restyled with a grey background and the same colorful logo text, making it match the rest of the app.
In addition, I made the buttons and cards more rounded to create a softer and modern look.
By applying the same color palette and rounded style to all main parts like the app bar, drawer, and buttons, so the design match more with the web version of this project.
