#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  -a, --add-user USERNAME        Add a new user"
    echo "  -d, --delete-user USERNAME     Delete an existing user"
    echo "  -m, --modify-user USERNAME     Modify an existing user"
    echo "  -g, --add-group GROUPNAME      Add a new group"
    echo "  -r, --delete-group GROUPNAME   Delete an existing group"
    echo "  -h, --help                     Display this help message"
}

# Function to add a new user
add_user() {
    read -p "Enter username: " username
    read -p "Enter full name: " fullname
    read -p "Enter home directory (default: /home/$username): " homedir
    homedir=${homedir:-/home/$username}
    read -p "Enter default shell (default: /bin/bash): " shell
    shell=${shell:-/bin/bash}

    useradd -m -c "$fullname" -d "$homedir" -s "$shell" "$username"
    if [ $? -eq 0 ]; then
        echo "User $username added successfully."
    else
        echo "Failed to add user $username."
    fi
}

# Function to delete a user
delete_user() {
    read -p "Enter username to delete: " username
    userdel -r "$username"
    if [ $? -eq 0 ]; then
        echo "User $username deleted successfully."
    else
        echo "Failed to delete user $username."
    fi
}

# Function to modify a user
modify_user() {
    read -p "Enter username to modify: " username
    read -p "Enter new full name: " fullname
    read -p "Enter new home directory: " homedir
    read -p "Enter new default shell: " shell

    usermod -c "$fullname" -d "$homedir" -s "$shell" "$username"
    if [ $? -eq 0 ]; then
        echo "User $username modified successfully."
    else
        echo "Failed to modify user $username."
    fi
}

# Function to add a new group
add_group() {
    read -p "Enter group name: " groupname
    groupadd "$groupname"
    if [ $? -eq 0 ]; then
        echo "Group $groupname added successfully."
    else
        echo "Failed to add group $groupname."
    fi
}

# Function to delete a group
delete_group() {
    read -p "Enter group name to delete: " groupname
    groupdel "$groupname"
    if [ $? -eq 0 ]; then
        echo "Group $groupname deleted successfully."
    else
        echo "Failed to delete group $groupname."
    fi
}

# Main script logic
if [ $# -eq 0 ]; then
    usage
    exit 1
fi

case "$1" in
    -a|--add-user)
        add_user
        ;;
    -d|--delete-user)
        delete_user
        ;;
    -m|--modify-user)
        modify_user
        ;;
    -g|--add-group)
        add_group
        ;;
    -r|--delete-group)
        delete_group
        ;;
    -h|--help)
        usage
        ;;
    *)
        echo "Invalid option: $1"
        usage
        exit 1
        ;;
esac
