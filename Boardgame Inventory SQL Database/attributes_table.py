#
# Anna Harvey
# Create a database for board game inventory information

import sqlite3

# connect to database
conn = sqlite3.connect('boardgames.db')
cursor = conn.cursor()

# create the game attributes table
# #cursor.execute("CREATE TABLE games "
#                "(title VARCHAR, "
#                "min_num INT(3), "
#                "max_num INT(3), "
#                "min_age INT(3),"
#                "min_time INT(3),"
#                "max_time INT(3),"
#                "cat VARCHAR,"
#                "app VARCHAR(3),"
#                "pieces VARCHAR(6),"
#                "space VARCHAR(5),"
#                "copies INT(3),"
#                "shelf VARCHAR(6));")

# Function to collect user input for information about boardgame expansions in the collection
def game_entry():
    try:
        g_title = input('Title:').upper()
        g_minnum = int(input('Minimum number of players (enter number):'))
        g_maxnum = int(input('Maximum number of players (enter number):'))
        g_age = int(input('Minimum age recommended (enter number):'))
        g_mintime = int(input('Minimum playing time (enter number in minutes):'))
        g_maxtime = int(input('Maximum playing time (enter number in minutes):'))
        g_cat = input('Game category/primary mechanic:').lower()
        g_app = input('Does it require a companion app? Please enter YES or NO:').lower()
        g_pieces = input('How many pieces are involved? Input SMALL if less than 3 types, '
                         'MEDIUM if less than 10, LARGE if more than 10:').lower()
        g_space = input('How much space does it need? Input SMALL for standard tabletop,'
                        'LARGE for large tabletop, or NONE for handheld game:').lower()
        g_copies = int(input('How many copies available? (Enter number):'))
        g_shelf = input('Input shelf number:')
        cursor.execute("""
        INSERT INTO games(title, min_num, max_num, min_age, min_time, max_time, cat, app, pieces, space, copies, shelf)
        VALUES (?,?,?,?,?,?,?,?,?,?,?,?)
        """, (g_title, g_minnum, g_maxnum, g_age, g_mintime, g_maxtime, g_cat, g_app, g_pieces, g_space, g_copies,
              g_shelf))
        conn.commit()
        print('Data entered successfully.')

    except ValueError:
        print('Please input correct value')
        return

# Main function to keep the program in a loop until all information has been collected
def main():
    print('Welcome!')
    print('Please enter board game information below:')
    while True:
        game_entry()
        more = input('Would you like to enter another game? Please enter "YES" or "NO":\n').upper()
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
