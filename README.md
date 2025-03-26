# 🛍️ Product_Details_Application


A Flutter application with login authentication, product listing from an API, search functionality, and detailed product pages using Provider for state management.
📌 Features

✔ Login Screen
    *Hardcoded authentication (admin/admin@123)
    *Input validation with error handling

✔ Home Screen (Product List)
    *Fetches product data from DummyJSON API
    *Displays product image, title
    *Search bar to filter products dynamically

✔ Product Details Screen
    *Displays full product information (image, title, description, price, discount, rating, stock, brand)

✔ State Management
    *Implemented using Provider

✔ Navigation & UI
    *Responsive UI with smooth navigation
    *Uses Flutter's Material Design

🛠️ Technologies Used
    Flutter (Dart)
    Provider (State Management)
    HTTP (API Requests)

📸 Screenshots

🔹 Login Screen ![product](https://github.com/user-attachments/assets/c83c30ba-3c42-4576-a217-9709992b5073)
🔹 Home Screen with Search ![login](https://github.com/user-attachments/assets/814621eb-3dfb-4ba5-82a2-95f5ae88b4a8)
🔹 Product Details Screen ![home](https://github.com/user-attachments/assets/5fca443e-87af-4dfa-a4d8-ca614c031ea8)



⚡ Getting Started
1️⃣ Clone the Repository

git clone  https://github.com/bharat1009/product_detail_application

cd product_details_app

2️⃣ Install Dependencies
flutter pub get

3️⃣ Run the App
flutter run



📂 Project Structure

/lib
│── /models         # Data models
│── /services       # API calls
│── /providers      # State management
│── /screens        # UI Screens
│── main.dart       # Entry point
