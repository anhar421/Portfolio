# Anna Harvey
# Search program to find board games within a SQL database that meet a certain criteria

import sqlite3
import mysql.connector
import pandas as pd


# Function to retrieve information based on title of the board game
def game_info():
    game = input(str('Enter the title of the board game you would like to play:\n')).upper()
    try:
        conn = sqlite3.connect('boardgames.db')
        cursor = conn.cursor()

        select_games_query = """SELECT * FROM games WHERE title = ?"""
        cursor.execute(select_games_query, (game,))
        record = cursor.fetchall()
        if len(record) == 0:
            print('There is no copy of %s in this collection.'%game)
        else:
            for row in record:
                print('Title =', row[0])
                print('Minimum # of players =', row[1])
                print('Maximum # of players =', row[2])
                print('Minimum age =', row[3])
                print('Minimum playing time =', row[4])
                print('Maximum playing time =', row[5])
                print('Game category =', row[6])
                print('Does it need an app? =', row[7])
                print('Amount of pieces involved =', row[8])
                print('Amount of space required =', row[9])
                print('Shelf # =', row[11])

    except mysql.connector.Error as error:
        print("Failed to get record from MySQL table: {}".format(error))


# Function to find game based on game attribute input
def find_game():
    # More attributes can be added as necessary
    players = input('How many people are playing?\n')
    time = input('Approximately how long do you have to play? (In minutes)\n')

    try:
        conn = sqlite3.connect('boardgames.db')
        cursor = conn.cursor()

        select_games_query = """SELECT * FROM games WHERE ? BETWEEN min_num and max_num AND 
        ? BETWEEN min_time and max_time"""
        cursor.execute(select_games_query, (players, time,))
        record = cursor.fetchall()

        for row in record:
            print('Title =', row[0])
            print('Minimum # of players =', row[1])
            print('Maximum # of players =', row[2])
            print('Minimum age =', row[3])
            print('Minimum playing time =', row[4])
            print('Maximum playing time =', row[5])
            print('Game category =', row[6])
            print('Does it need an app? =', row[7])
            print('Amount of pieces involved =', row[8])
            print('Amount of space required =', row[9])
            print('Shelf # =', row[11])
            print('\n*****\n')

        # Creates and prints a dataframe of selected games
        query = conn.execute("SELECT * From games")
        cols = [column[0] for column in query.description]
        df = pd.DataFrame(record, columns=cols)

        print(df)

        print('Total number of options =', len(record))

    except mysql.connector.Error as error:
        print("Failed to get record from MySQL table: {}".format(error))


# Function to retrieve expansion information based on title of the board game
def exp_info():
    game = input(str('Enter the title of the board game you want to find expansions for:\n')).upper()
    try:
        conn = sqlite3.connect('boardgames.db')
        cursor = conn.cursor()

        select_games_query = """SELECT * FROM expansions WHERE title = ?"""
        cursor.execute(select_games_query, (game,))
        record = cursor.fetchall()
        if len(record) == 0:
            print('There is no expansion for %s'%game)
        else:
            for row in record:
                print('Expansion Title =', row[1])
                print('Maximum # of players =', row[2])
                print('Minimum age =', row[3])
                print('Minimum playing time =', row[4])
                print('Maximum playing time =', row[5])
                print('Shelf # =', row[7])

    except mysql.connector.Error as error:
        print("Failed to get record from MySQL table: {}".format(error))

# Main function for board game search in database
def main():
    print("Welcome!\nLet's play a game!")
    while True:
        title = input(str('Do you know the name of the board game you would like to play? Please enter YES or NO.\n'))
        if title.upper() == 'YES':
            game_info()
        elif title.upper() == 'NO':
            print("Let's find you the right game.")
            find_game()
        else:
            print('Please enter YES or NO')
            continue
        # To search for an expansion
        exp = input(str('Do you want to find expansions for your game? Please enter YES or NO.\n'))
        if exp.upper() == 'YES':
            exp_info()
        elif exp.upper() == 'NO':
            more = input(str('Do you want to try again? Please enter YES or NO.\n'))
            if more.upper() == 'YES':
                continue
            elif more.upper() == 'NO':
                print('Have fun!')
                break
            else:
                print('Please enter YES or NO')
                continue
        else:
            print('Please enter YES or NO')
            continue
        # To search for a different game
        more = input(str('Do you want to try again? Please enter YES or NO.\n'))
        if more.upper() == 'YES':
            continue
        elif more.upper() == 'NO':
            print('Have fun!')
            break
        else:
            print('Please enter YES or NO')
            continue


if __name__ == '__main__':
    main()
