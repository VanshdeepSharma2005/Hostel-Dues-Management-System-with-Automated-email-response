# 🏠 Hostel Dues Management System

A Python-based system to manage hostel fee records, calculate pending dues, and automatically send No-Dues confirmation emails to students.

---

## 🚀 Features
- Fetch student details using Roll Number
- Calculate total dues (mess + hostel fees)
- Show payment status (CLEARED / PENDING)
- Automatically send email when dues are cleared
- Simple terminal-based interface

---

## 🛠️ Technologies Used
- Python
- MySQL
- SMTP (Email Automation)
- VS Code

---

## ⚙️ How It Works
1. Enter Roll Number  
2. System fetches student data from database  
3. Calculates pending dues  
4. Displays status:
   - CLEARED → No-Dues certificate eligible  
   - PENDING → Payment required  
5. Option to send email if cleared  

---

## 📂 Project Structure
```
hostel_dues.py   # Main Python file
```

---

## 📌 Setup Instructions
1. Install dependencies:
   ```bash
   pip install mysql-connector-python
   ```

2. Update database credentials in code

3. Add your Gmail and App Password for email sending

4. Run the project:
   ```bash
   python hostel_dues.py
   ```

---

## 💡 Future Improvements
- GUI using Tkinter or Web App
- PDF certificate generation
- Admin dashboard
- Payment integration

---

## 👨‍💻 Author
Vanshdeep Sharma
