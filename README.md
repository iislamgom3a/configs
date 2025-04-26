## 📁 What's Inside?

### 1. `vs-code-profiles/`
A folder that holds a VS Code profile designed for competitive programming in c++.  
It helps you get your workspace ready with the right settings in no time.

---

### 2. `vim/`
A folder that contains a `.vimrc` file with a simple and clean Vim configuration:
- Line numbers
- Smart searching
- Auto indentation
- Dark theme
- System clipboard support
- And a few more tweaks to make coding feel nice!

---

### 3. `.bashrc`
A `.bashrc` snippet with two handy functions:

#### ➡️ `cp`
Quickly compile and run a C++ file, then remove the output binary.

**Usage example:**
```bash
cp my_code.cpp
```
- Compiles `my_code.cpp`
- Runs the executable
- Deletes `a.out` after execution to keep your folder clean

---

#### ➡️ `contest`
Sets up a contest folder with input/output text files and starter C++ files (`a.cpp`, `b.cpp`, etc.).

**Usage example:**
```bash
contest round123 5
```
- Creates a folder named `round123`
- Inside it, creates:
  - `in.txt`
  - `out.txt`
  - `a.cpp`, `b.cpp`, `c.cpp`, `d.cpp`, `e.cpp`

---

