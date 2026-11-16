
# Bakery Delivery Log Analysis and Intrusion Triage

## Task 1: Linux Command Line Foundations via OverTheWire Bandit

**Intern:** Amaan Jahangir

**Client:** Golden Crust Bakery

**Technology:** Cyber Security

**Platform:** OverTheWire Bandit

---

## 1. Environment Setup

**Operating System:** Windows

**Terminal:** Windows PowerShell

**Tool:** OpenSSH Client

**SSH Version:**
(To be added)

---

## 2. Level 0 to Level 1

**Objective:** Retrieve the password for Level 1.

### Commands Used

```bash
ls
cat readme
```

### Explanation

- `ls`: Lists files and directories.
- `cat readme`: Displays the contents of the readme file.

### Result

Password retrieved successfully.

**Password for Level 1:** 6y2kwnwK6grgvwvpvLaa2T1cpFEKOhNR

### Screenshot Evidence

` screenshots/03-level-0-to-1.png `

---


## Level 1 → Level 2

**Objective:** Retrieve the password for Level 2.

### Commands Used

```bash
ls
cat ./-
```

### Explanation

- `ls`: Lists files in the current directory.
- `cat ./-`: Reads the contents of the file named "-".

### Result

Successfully retrieved the password for Level 2.

**Password for Level 2:** PK8fYLZg2hnHSz83plBL1iEPKdD3QToB

**Evidence:** screenshots/04-level-1-to-2.png


## Level 2 → Level 3

**Objective:** Retrieve the password for Level 3.

### Commands Used

```bash
ls
cat "spaces in this filename"
```

### Explanation

- `ls`: Lists files in the current directory.
- `cat`: Displays the contents of a file.
- Double quotation marks allow filenames containing spaces.

### Result

Successfully retrieved the password for Level 3.

**Password for Level 3:** 7ZZ2LFrykP2zEyvBl4m3clcL7tGYJPME

**Evidence:** screenshots/05-level-2-to-3.png


## Level 3 → Level 4

**Objective:** Find the hidden file containing the Level 4 password.

### Commands Used

```bash
ls
cd inhere
ls -la
cat .hidden
```

### Explanation

- `ls`: Lists files and directories.
- `cd inhere`: Enters the inhere directory.
- `ls -la`: Displays all files, including hidden files, with detailed information.
- `cat .hidden`: Displays the contents of the hidden file.

### Result

Successfully located the hidden file and retrieved
the password for Level 4.

**Password for Level 4:** xzTXq1rDJQVVAzdv5cHq1TQytTWufAMq

**Evidence:** screenshots/06-level-3-to-4.png


## Level 4 → Level 5

**Objective:** Identify the human-readable file and retrieve the Level 5 password.

### Commands Used

```bash
ls
cd inhere
ls
file ./*
cat ./-file07
```

**Note:** Replace `-file07` with the actual filename identified by your `file ./*` output.

### Explanation

- `ls`: Lists files and directories.
- `cd inhere`: Enters the inhere directory.
- `file ./*`: Identifies the type of every file.
- `cat`: Displays the contents of the identified text file.

### Result

Successfully identified the human-readable file and retrieved the password for Level 5.

**Password for Level 5:** 6C7h9GD8M6ai5nr7wo1RonrzFjj9yIrG

**Evidence:** screenshots/07-level-4-to-5.png


## 3. Conclusion

This task introduced basic Linux command-line operations
and SSH connections.

These commands are useful in cybersecurity because
security professionals use file navigation and file-reading
commands when investigating system and authentication logs.
