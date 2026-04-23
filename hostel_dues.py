import mysql.connector
import smtplib

# -------- DATABASE CONNECTION --------
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="database password",   # your MySQL password
    database="hostel"
)

cursor = db.cursor()
print(" Connected to MySQL")

# -------- EMAIL FUNCTION --------
def send_email(to_email, name):
    sender = "your email"
    app_password = "your app password"   # no spaces

    message = f"""Subject: Hostel No-Dues Certificate

Dear {name},

Your hostel dues are cleared.
You are eligible to get your admit card.

Regards,
Hostel Office
"""

    try:
        server = smtplib.SMTP("smtp.gmail.com", 587)
        server.starttls()
        server.login(sender, app_password)
        server.sendmail(sender, to_email, message)
        server.quit()

        print("📧 Email sent successfully")

    except Exception as e:
        print(" Email failed:", e)


# -------- INPUT --------
roll = input("\nEnter Roll No: ")

# -------- FETCH DATA --------
query = """
SELECT name, mess_bill, hostel_bill, total_bill, paid_amount, email
FROM hostel_dues
WHERE roll_no = %s
"""

cursor.execute(query, (roll,))
data = cursor.fetchone()

# -------- LOGIC --------
if data:
    name, mess, hostel_bill, total, paid, email = data

    due = total - paid

    print("\n--- STUDENT DETAILS ---")
    print("Name:", name)
    print("Mess Bill:", mess)
    print("Hostel Bill:", hostel_bill)
    print("Total Bill:", total)
    print("Paid:", paid)
    print("Due:", due)

    if due == 0:
        print("\nStatus: CLEARED ")
        print("No-Dues Certificate can be issued")

        send = input("Send email? (y/n): ")

        if send.lower() == 'y':
            if email:
                send_email(email, name)
            else:
                print(" No email found in database")

    else:
        print("\nStatus: PENDING ")
        print("⚠ Clear dues before getting No-Dues")

else:
    print(" Student not found")


