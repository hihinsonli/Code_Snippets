import datetime

def convert_timestamp_to_readable(timestamp_ms):
    # Convert milliseconds to seconds (since Python expects seconds)
    timestamp_s = timestamp_ms / 1000

    # Convert to datetime
    human_readable_date = datetime.datetime.utcfromtimestamp(timestamp_s).strftime('%Y-%m-%d %H:%M:%S')

    return human_readable_date

def main():
    # Ask the user to input a timestamp in milliseconds
    user_input = input("Please enter a timestamp in milliseconds: ")
    
    # Check if the input is a valid number
    try:
        timestamp_ms = int(user_input)
        print("Human-readable date:", convert_timestamp_to_readable(timestamp_ms))
    except ValueError:
        print("Invalid input. Please enter a numeric timestamp.")

if __name__ == "__main__":
    main()
