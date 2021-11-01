import sqlite3

#connect to database
conn = sqlite3.connect('boardgames.db')
cursor = conn.cursor()

# #create the game expansions table
# cursor.execute("CREATE TABLE expansions "
#                "(title VARCHAR,"
#                "exp_title VARCHAR,"
#                "emax_num INT(3), "
#                "emin_age INT(3),"
#                "emin_time INT(3),"
#                "emax_time INT(3),"
#                "exp_copies INT(3),"
#                "shelf VARCHAR(6));")

# Function to collect user input information about boardgames in collection.
def exp_entry():
    try:
        e_title = input('Base Game Title:').upper()
        e_exptitle = input('Expansion Title:').upper()
        e_maxnum = int(input('Maximum number of players (enter number):'))
        e_age = int(input('Minimum age recommended (enter number):'))
        e_mintime = int(input('Minimum playing time (enter number in minutes):'))
        e_maxtime = int(input('Maximum playing time (enter number in minutes):'))
        e_copies = int(input('Number of copies (enter number):'))
        e_shelf = input('Enter shelf number:')
        cursor.execute("""
        INSERT INTO expansions(title, exp_title, emax_num, emin_age, emin_time, emax_time, exp_copies, shelf)
        VALUES (?,?,?,?,?,?,?)
        """, (e_title, e_exptitle, e_maxnum, e_age, e_mintime, e_maxtime, e_copies, e_shelf))
        conn.commit()
        print('Data entered successfully.')

    except ValueError:
        print('Please input correct value')
        pass

# Main function to keep program in a loop until all games have been entered
def main():
    print('Welcome!')
    print('Please enter board game expansion information below:')
    while True:
        exp_entry()
        more = input('Would you like to enter another expansion? Please enter "YES" or "NO":\n').upper()
        if more == 'YES':
            continue
        elif more == 'NO':
            conn.close()
            if conn:
                conn.close()
                print("\nThe SQLite connection is closed.")
                print('\nThanks for playing')
            exit(0)
        else:
            print('Please enter a valid response')
            continue
        break


if __name__ == '__main__':
    main()
