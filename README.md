# 📝 Notey

**Notey** is a sleek, cross-platform **Flutter** application built for **iOS** and **Android** that redefines note-taking.  
Whether you’re jotting down quick thoughts, creating to-do lists, recording voice memos, or setting reminders, Notey helps you stay **organized, creative, and productive** — all in one place.

The app is designed with an **offline-first approach** powered by **SQLite** so you never lose access to your notes, while optional **Supabase sync** keeps everything safe and accessible across devices.  
With **custom categories**, **end-to-end encryption**, **exporting capabilities**, **smart link detection**, **multi-language support**, and **dark/light themes**, Notey adapts to your workflow and lifestyle.

---

## ✨ Features

### 📒 Core Note-Taking
* Create, edit, and delete notes with a clean and intuitive UI.
* Organize your thoughts offline without worrying about losing them.
* Data is stored locally using **SQLite** for fast access and reliability.

### 🗂️ Custom Categories
* Group notes into **categories** (e.g., Work, Study, Personal).
* Add, edit, or delete categories to stay organized.
* Filter and search notes by category for quick access.

### ☁️ Cloud Sync (Supabase Integration)
* Secure authentication and cloud storage powered by **Supabase**.
* Sync your notes seamlessly across devices.
* Automatic backup ensures your notes are safe in the cloud.

### 🔒 End-to-End Encryption
* All notes are secured with **end-to-end encryption**.
* Only you can read your notes — not even the cloud provider.
* Perfect for storing private and sensitive information.

### 🖼️ Rich Media Support
* Attach **images** to your notes to capture visual ideas.
* Add **audio recordings** for quick reminders or lectures.
* Combine text, images, and voice for richer content.

### 📤 Export Notes
* Export individual or multiple notes into:
  * **Plain text (.txt)**
  * **PDF documents (.pdf)**
  * **Word documents (.docx)**
* Share notes with others or back them up outside the app.

### 🎨 Customization & Personalization
* Change **font sizes** for easier reading.
* Choose **text and background colors** to match your style.
* Switch instantly between **Dark Mode** 🌙 and **Light Mode** ☀️ for eye comfort.

### 🔗 Smart Links
* Automatically detects URLs inside notes.
* Tap to open websites, emails, or phone numbers directly.

### ⏰ Reminders & Notifications
* Set **alarms and reminders** for specific notes.
* Get **push notifications** so you never miss an important task.

### 📴 Offline-First
* Notes are saved locally with **SQLite** by default.
* Continue working without internet access.
* Changes sync to **Supabase** automatically once reconnected.

### 🌍 Multi-Language Support
* Supports **multiple languages** including:
  * **English**
  * **Arabic**
  * **French**
  * **Spanish**
  * **German**
* Dynamic localization so users can switch languages seamlessly.

---

## 🚀 Getting Started

### Prerequisites
* [Flutter](https://flutter.dev/docs/get-started/install) installed
* [Supabase](https://supabase.com/) project set up
* iOS or Android device/emulator

### Installation
```bash
# Clone the repo
git clone https://github.com/your-username/notey.git

# Move into the project directory
cd notey

# Install dependencies
flutter pub get

# Run the app
flutter run

---

## 📸 Screenshots

| Notes List                                       | Categories                                       | Export                                   |
| ------------------------------------------------ | ------------------------------------------------ | ---------------------------------------- |
| ![Notes List](assets/screenshots/notes_list.png) | ![Categories](assets/screenshots/categories.png) | ![Export](assets/screenshots/export.png) |

---

## 🛠️ Built With

* [Flutter](https://flutter.dev/) – UI toolkit for cross-platform apps
* [Supabase](https://supabase.com/) – Authentication, cloud sync, and storage
* [SQLite](https://pub.dev/packages/sqflite) – Offline-first local database
* \[Bloc / Cubit / Provider] – Robust state management
* [Local Notifications](https://pub.dev/packages/flutter_local_notifications) – Alarms & reminders
* [pdf](https://pub.dev/packages/pdf) & [printing](https://pub.dev/packages/printing) – Export to PDF
* [docx](https://pub.dev/packages/docx_template) – Export to Word
* **Custom Encryption Layer** – End-to-end security for user data

---

## 📅 Roadmap

* [ ] Markdown / rich text editing support
* [ ] Note tagging system with colors & priorities
* [ ] Collaborative notes (share & edit with friends in real time)
* [ ] Widgets for quick note access

---

## 🤝 Contributing

We love contributions ❤️!
If you’d like to improve Notey, fork the repo and submit a pull request.

---

## 📄 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## ❤️ Acknowledgements

* Flutter Community 🚀
* Supabase Team ☁️
* SQLite for reliable offline storage 📦
* Everyone who contributes to making note-taking smarter 🎉

---
