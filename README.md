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


Here is the complete README file, including the new **Assignment 7 (Flutter Integration)** section based on our discussion, formatted with "me" instead of "you" as requested.


---

## Assignment 9

### Explain why we need to create a Dart model when fetching/sending JSON data. What are the consequences of directly mapping Map<String, dynamic> without using a model?
We need a Dart Model to turn raw JSON text into safe code objects. If I don't use a model, I have to use raw Maps. This is risky because the code can't check if data is text or a number before running. Using a model stops crashes by checking data types and handling empty data automatically.

### What is the purpose of the http and CookieRequest packages in this assignment? Explain the difference between their roles.
* **http:** The basic tool in Dart to send data to the internet. It sends requests but doesn't save any info after the request is done.
* **CookieRequest:** A wrapper that uses `http` but adds extra features. It saves the session cookie from the server so the app remembers who I am and keeps me logged in.

### Explain why the CookieRequest instance needs to be shared across all components in the Flutter application.
I must share the exact same `CookieRequest` object across the whole app because this object holds the session data (login proof). If I make a new object for a new screen, that object is empty, and the server will think I am logged out.

### Explain the connectivity configuration required for Flutter to communicate with Django.
* **10.0.2.2:** Lets the Android emulator connect to the computer's local server.
* **ALLOWED_HOSTS:** Tells Django to accept connections from the emulator.
* **CORS:** Allows the mobile app to talk to the web server on a different port.
* **Consequence:** If I miss these, the phone can't reach the server, and the connection fails.

### Describe the data transmission mechanism—from user input to being displayed in Flutter.
1.  **Input:** I type into a form.
2.  **Send:** Flutter converts it to JSON and sends a POST request.
3.  **Process:** Django validates and saves to the database.
4.  **Response:** Django sends a success message.
5.  **Display:** Flutter sees the success and refreshes the screen.

### Explain the authentication mechanism for login, registration, and logout.
When I log in, Flutter sends my data to Django. Django verifies it, creates a session, and sends a cookie back. `CookieRequest` saves this cookie. For every next action, the app sends this cookie to prove it's me. When I logout, the session is destroyed.

### Explain how I implemented the checklist above step-by-step.
1.  **Django:** I created a view to send data as JSON.
2.  **Packages:** I installed `provider` and `pbp_django_auth`.
3.  **Model:** I converted the JSON structure into a Dart file.
4.  **State:** I used `Provider` to share `CookieRequest` with every screen.
5.  **Screens:** I built the login page, a list page using `FutureBuilder`, and a form page.
