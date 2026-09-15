# 📇 Contacts & Chat App — Flutter

A Flutter application featuring a contacts list with availability status and a simple chat screen, built with clean widget architecture and reusable components.

> **Note:** This project focuses on UI and local app flow. The chat screen includes a working message input field, but sent messages are not stored, displayed, or persisted — there is no backend or real messaging functionality.

<br>

## 📱 Preview

<!-- Add your demo GIF or screenshots here after uploading them to the repo -->
<p align="center">
  <img src="demo.gif" width="300">
</p>

<br>

## ✨ Key Features

- **Contacts List Screen** — Scrollable list of contacts with avatar, name, and online/offline availability status
- **Contact Card Widget** — Reusable card component showing contact info, a quick call button, and a more-options menu
- **Navigation to Chat** — Tapping a contact navigates to a dedicated chat screen for that contact
- **Chat Screen** — Custom app bar showing contact info with call and video icons, plus a styled message input field
- **Custom Theming** — Consistent color scheme applied across screens using a shared green accent color

<br>

## 🛠️ Built With

- [Flutter](https://flutter.dev)
- [Dart](https://dart.dev)

<br>

## 🚀 Getting Started

Clone the repository and run it locally:

```bash
git clone https://github.com/ahhmeddmahmoud/contacts-chat-app.git
cd contacts-chat-app
flutter pub get
flutter run
```

<br>

## 🧠 What I Practiced

- Structuring a multi-screen Flutter app with clean navigation (`Navigator.push`)
- Building reusable, parameterized widgets (`ContactCard`)
- Managing simple local state with `StatefulWidget` and `setState`
- Designing a consistent visual identity across multiple screens
- Working with a basic data model (`Contact`) and static sample data

<br>

## 📌 Planned Improvements

- 🔜 Store and display sent messages in the chat screen
- 🔜 Firebase integration for real-time messaging and contact data
- 🔜 Search functionality for the contacts list
- 🔜 Add/edit contact functionality

<br>

## 👤 Author

**Ahmed Mahmoud**
Flutter Developer | Computer Science Student

- GitHub: [@ahhmeddmahmoud](https://github.com/ahhmeddmahmoud)
- LinkedIn: [Ahmed Mahmoud](https://www.linkedin.com/in/ahmed-mahmoud-5b033a386)
- Email: ahmedsaada500@gmail.com
