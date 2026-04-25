# 
Never miss a disconnected charger again. This tool adds an instant notification sound when your Windows 11 laptop starts or stops charging.

⚡ Charger-Connect-Dissconnect-Alert
> **Restoring the missing charger connect and disconnect notification sound Windows 11.**

---

## 💎WHATS THIS UTILITY
` STATUS: STABLE `  |  ` VERSION: 1.0.0 `  |  ` IMPACT: ULTRA-LIGHT (0% CPU) `

Windows 11 removed the native power notification sounds. This tool is a **refined, automated solution** designed to bring back that essential feedback with zero system overhead.

---

## 🚀 MANUAL DEPLOYMENT GUIDE
Follow these exact steps to integrate the tool into your system manually.

### 1. Create the System Folder
To ensure the tool is permanent and safe:
*   Open your C: Drive.
*   Create a new folder named `Scripts`.
*   The final path must be: `C:\Scripts`

### 2. Move the Core Files
Place the following files from this repository into **`C:\Scripts\`**:
*   `ChargerSound.ps1` (The Engine)
*   `LaunchCharger.vbs` (The Stealth Launcher)
*   `Connect.wav` (Sound for plugging in)
*   `Disconnect.wav` (Sound for unplugging)

### 3. Set the Auto-Start (Startup)
To make the chime work automatically every time you log in:
1.  Press **`Win + R`** on your keyboard.
2.  Type **`shell:startup`** and hit **Enter**.
3.  Go to `C:\Scripts`, **Right-click** the `LaunchCharger.vbs` file, and select **show more option --> create shortcut --> then cut that shortcut**.
4.  Inside the Startup folder, **Right-click** in the empty space and select **Paste Shortcut the name shortcut should be LaunchCharger.vbs same as the name inside** C:\Scripts **.

---

## 🔊 CUSTOMIZING YOUR SOUNDS
You can use any audio you like! 
1.  Find any `.wav` file (Note: `.mp3` is not supported).
2.  Rename the file to **`Connect.wav`** or **`Disconnect.wav`**.
3.  Replace the files in **`C:\Scripts`** with your new ones.
4.  **To Apply Changes:** Open Task Manager, end any "Windows PowerShell" tasks, and double-click `LaunchCharger.vbs`.

---

## 🛠️ THE ARCHITECTURE
Built for reliability and stealth.

■ **STEALTH EXECUTION**
Using the VBScript wrapper, the tool runs as a phantom process. No console windows, no taskbar icons, no clutter.

■ **EVENT-BASED MONITORING**
This version uses **WMI Event Listening**. It stays 100% idle and only "wakes up" the split second your charger is moved. This ensures **0% CPU usage** during normal operation.

---

## 📂 REPOSITORY MAP
```text
 📂 C:\Scripts
 ├── 📄 ChargerSound.ps1   <-- Power Detection Logic
 ├── 📄 LaunchCharger.vbs  <-- Silent Background Launcher
 ├── 🔊 Connect.wav        <-- Chime: Power Connected
 └── 🔊 Disconnect.wav     <-- Chime: Power Lost
```

---

## 💀 HOW TO REMOVE
1.  Open **Task Manager** (`Ctrl + Shift + Esc`).
2.  Find **Windows PowerShell**, right-click, and select **End Task**.
3.  win + R then type `shell:startup` and delete the **LaunchCharger** shortcut.
4.  Delete the `C:\Scripts` folder.

---

<p align="center">
  <b>Developed for the Windows Power User</b><br>

</p>
