import mysql.connector, smtplib

# DB CONNECT
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Vansh@123",
    database="hostel"
)
cursor = db.cursor()

# EMAIL FUNCTION
def send_email(to_email, name):
    try:
        with smtplib.SMTP("smtp.gmail.com", 587) as s:
            s.starttls()
            s.login("shikhavansh1980@gmail.com", "skykxlrofxyrfqxl")
            s.sendmail("shikhavansh1980@gmail.com", to_email,
                       f"Subject: Hostel No-Dues\n\nDear {name},\n\nYour dues are cleared.\n\nRegards,\nHostel Office")
        print("Email sent")
    except Exception as e:
        print("Email failed:", e)

# INPUT
roll = input("Enter Roll No: ")

# FETCH
cursor.execute("""
SELECT name, mess_bill, hostel_bill, total_bill, paid_amount, email
FROM hostel_dues WHERE roll_no=%s
""", (roll,))
data = cursor.fetchone()

# LOGIC
if not data:
    print("Student not found")
else:
    name, mess, hostel, total, paid, email = data
    due = total - paid

    print(f"\n{name} | Total: {total} | Paid: {paid} | Due: {due}")

    if due == 0:
        print("BILL is CLEARED, No dues")
        if input("Send email? (y/n): ").lower() == 'y' and email:
            send_email(email, name)
    else:
        print("PENDING - Clear dues first")
