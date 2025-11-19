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

# Sports World

## Assignment 2
### Explain how I implemented the checklist above step-by-step (not just by following the tutorial).
I implemented the checklist by first setting up and creating the project. After setting up the project, in `main/models.py` I added product models with the required fields: name, price, description, thumbnail, category, and is_featured. Then, I updated the view and template to send the app name, my name, and my class to the template. I also updated the routing in `main/urls.py` and `sports_world/urls.py`. After that, I ran a local test, and since the test was correct, I deployed the app to PWS.

### Create a diagram showing the client request to the Django-based web application and its response, and explain the relationship between urls.py, views.py, models.py, and the HTML file in the diagram.
Diagram link: [Insert Link Here]
* **urls.py:** Maps the URL to the view.
* **models.py:** Defines the database structure.
* **html file:** Displays the data in the browser.

### Explain the role of settings.py in a Django project!
It stores global configurations like installed apps, middleware, databases, allowed hosts, static files, and environment variables.

### How does database migration work in Django?
When I change the model, I need to run `makemigrations` for Django to create migration files. After that, I run `migrate` so Django can change and update the database structure.

### In my opinion, among all existing frameworks, why is the Django framework chosen as the starting point for learning software development?
Because it has a clear structure (MVT), comes with built-in features, is used in many apps, is capable of documentation, and has a strong community.

---

## Assignment 3

### Why do we need data delivery in implementing a platform?
We need data delivery so that different parts of the app (frontend, backend, mobile, API) can share and use the same data. Without data delivery, they cannot communicate.

### In my opinion, which is better, XML or JSON? Why is JSON more popular than XML?
JSON is better because it is simpler, shorter, and faster to read. XML is too heavy with tags. JSON is more popular because it works easily with JavaScript and modern apps.

### What is the purpose of the is_valid() method in Django forms, and why do we need it?
It checks if the form data is correct and safe. If valid, I can save it to the database. If not, Django will show errors.

### Why do we need a csrf_token when making forms in Django? What can happen if we don't include a csrf_token in a Django form? How can this be exploited by an attacker?
We need `csrf_token` to stop CSRF attacks. Without it, attackers can trick users into sending fake requests (like deleting data) without permission.

### Explain how I implemented the checklist above step-by-step (not just following the tutorial).
I made a Product model with fields like name, price, description, thumbnail, category, and is_featured. Then I created `forms.py` for product input. In `views.py` I added list, add, detail, XML, and JSON views. I updated `urls.py` for each route. I made templates (`main.html`, `add_product.html`, `product_detail.html`, and `base.html`). After testing locally, I checked data with Postman, then pushed everything to GitHub.

---

## Assignment 4

### What is Django's AuthenticationForm? Explain its advantages and disadvantages.
Django's `AuthenticationForm` is a built-in Django form used to handle user login. It checks the user's username and password. This built-in form helps developers manage the login functionality more easily.

### What is the difference between authentication and authorization? How does Django implement the two concepts?
Authentication means checking the identity of users, usually by verifying their username and password so the web application can recognize the user. Authorization means ensuring that each account can only access the resources or perform actions that are meant for them. In Django, after it checks the identity of the user, it ensures that the user has the appropriate permissions to access specific views or resources based on their roles and permissions.

### What are the benefits and drawbacks of using sessions and cookies in storing the state of a web application?
Sessions store data on the server, making them more secure since they do not expose sensitive information to the user. However, sessions can be slower compared to cookies. Cookies, on the other hand, are faster because they store data on the user's side. However, if not handled properly, cookies can be insecure and vulnerable.

### In web development, is the usage of cookies secure by default, or is there any potential risk that we should be aware of? How does Django handle this problem?
Cookies are not secure by default. They can be vulnerable to attacks like Cross-Site Scripting (XSS) or Cross-Site Request Forgery (CSRF) if not handled properly. These risks happen when hackers can access or change the data stored in cookies. Django helps protect against these risks by adding built-in security options, like the `HttpOnly` flag to stop JavaScript from accessing cookies and the `Secure` flag to make sure cookies are only sent over HTTPS. Django also stores sensitive data in sessions on the server, rather than in cookies.

### Explain how I implemented the checklist above step-by-step (not just following the tutorial).
To make cookies secure in my project, I made sure I did not store sensitive data in cookies. I kept sensitive information like passwords or personal data on the server using Django sessions. I implemented the login, register, and logout views using Django's built-in forms and connected them to the templates.

---

## Assignment 5

### CSS Selector Priority
CSS specificity hierarchy: inline styles > IDs > classes/attributes/pseudo-classes > elements. `!important` overrides all. When specificity is equal, the last rule in the source order wins.

### Responsive Design
Ensures apps work across all devices, improves UX, boosts SEO, and maintains a single codebase instead of separate versions.

* **Responsive Example:** Twitter, Shopee
* **Non-responsive Example:** Older news websites

### Box Model
* **Content:** The main content.
* **Padding:** Space around the content.
* **Border:** Surrounds the padding.
* **Margin:** Space outside the border.

### Layout System
* **Flexbox:** A layout system that arranges items in a single direction (row or column). Suitable for navbars and button groups.
* **Grid:** A layout system that arranges items in both rows and columns at the same time. Suitable for complex page structures.

### Implementation Steps
I created Edit and Delete buttons for each product card, visible only to the product owner. I customized the design with SportsWorld branding using green for Sports and blue for World. All buttons use rounded corners so it looks modern. Each product category has a specific color to make it more noticeable (orange for shoes, purple for jersey, brown for equipment). The layout is fully responsive with a grid system that adapts from 1 to 3 columns based on screen size, and prices are displayed in Rp.

---

## Assignment 6

### What is the difference between synchronous request and asynchronous request?
Synchronous waits for the server to respond before continuing, while asynchronous can keep working without waiting.

### How does AJAX work in Django (request–response flow)?
AJAX sends data to a Django view using JavaScript. The view processes it and returns JSON, which updates the page without reloading.

### What are the advantages of using AJAX compared to regular rendering in Django?
AJAX makes the page faster and smoother because it updates parts of the page without reloading everything.

### How do I ensure security when using AJAX for Login and Register features in Django?
I use `csrf_token`, validate input on the server, and use HTTPS to protect user data.

### How does AJAX affect user experience (UX) on websites?
It makes websites feel faster, smoother, and more interactive for users.

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
