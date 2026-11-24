#!/usr/bin/env python3
import subprocess
import sys


def run_command(command):
    """Executes a system command with sudo privileges."""
    try:
        # standardizing command as a list for secure execution
        full_command = ["sudo"] + command
        print(f"Running: {' '.join(full_command)}")

        # Run command and pipe output to terminal in real-time
        subprocess.run(full_command, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}", file=sys.stderr)
        sys.exit(1)


def main():
    # 1. Update package lists
    run_command(["apt-get", "update"])

    # 2. Install packages (nginx, jq, net-tools)
    run_command(["apt-get", "install", "-y", "nginx", "jq", "net-tools"])

    # 3. Start Nginx service
    run_command(["systemctl", "start", "nginx"])

    # 4. Enable Nginx service to start on boot
    run_command(["systemctl", "enable", "nginx"])

    print("Provisioning complete successfully!")


if __name__ == "__main__":
    main()
