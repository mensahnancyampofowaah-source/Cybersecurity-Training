# This program allows users to add, view, and remove tasks stored in a file.
# Tasks are saved in 'todo.txt'.

import os

# Load tasks from file
def load_tasks(filename='todo.txt'):
    if os.path.exists(filename):
        with open(filename, 'r') as file:
            return [line.strip() for line in file.readlines()]
    return []

# Save tasks to file
def save_tasks(tasks, filename='todo.txt'):
    with open(filename, 'w') as file:
        for task in tasks:
            file.write(task + '\n')

# Display menu and handle user choices
def main():
    tasks = load_tasks()
    while True:
        print("\nTodo List Menu:")
        print("1. Add task")
        print("2. View tasks")
        print("3. Remove task")
        print("4. Quit")
        choice = input("Enter your choice: ")
        
        if choice == '1':
            task = input("Enter new task: ")
            tasks.append(task)
            print("Task added successfully.")
        elif choice == '2':
            if not tasks:
                print("No tasks found.")
            else:
                print("Tasks:")
                for i, task in enumerate(tasks, 1):
                    print(f"{i}. {task}")
        elif choice == '3':
            if not tasks:
                print("No tasks to remove.")
            else:
                try:
                    index = int(input("Enter task number to remove: ")) - 1
                    if 0 <= index < len(tasks):
                        removed = tasks.pop(index)
                        print(f"Removed: {removed}")
                    else:
                        print("Invalid task number.")
                except ValueError:
                    print("Please enter a valid number.")
        elif choice == '4':
            save_tasks(tasks)
            print("Tasks saved. Goodbye!")
            break
        else:
            print("Invalid choice!. Try again.")

if __name__ == "__main__":
    main()