# Windows Server Remediation: Debugging Challenge

Welcome to your Windows Automation Capstone. In this scenario, you are stepping in to clean up a mess left behind by a junior colleague, and the clock is ticking before the upcoming TekCon event.

## 🛑 The Scenario
That junior administrator who went on a ski trip and left you with a broken Bash script last month? They are back. Management reassigned them to the Windows Server Infrastructure team to help prepare the network for TekCon. 

Yesterday, they were tasked with writing an automated "Server Remediator" script in PowerShell. The script is supposed to find applications hogging too much CPU, terminate them, and then verify that the Windows Firewall service is actively running. 

Unsurprisingly, the script is broken. It throws red syntax errors, fails to kill any processes, and the logic is deeply flawed. The junior admin pushed the broken code here and left for an "early lunch."

## 🎯 Your Mission
Download this broken Windows environment, diagnose the failures, use your AI assistant to translate the error messages, and repair the PowerShell script until it successfully executes.

### Rules of Engagement
1. **No Manual Fixing:** You must practice the AI Debugging workflow. Feed the code and the exact error messages to your AI assistant.
2. **Understand the Objects:** PowerShell is an object-oriented language. When the AI gives you a solution, read it carefully to understand exactly what properties or methods it is fixing before you paste it.
3. **The Instructor is a Ghost:** If you ask for help, the only question you will get in return is: *"What did your AI assistant say when you fed it the exact error message?"*

---

## 🛠️ Execution Protocol

### Phase 1: Infiltration 
Open your standard Windows PowerShell terminal in VS Code. Clone this repository to your local machine:
```powershell
git clone [https://github.com/wyocyberrange/broken-win-remediator.git](https://github.com/wyocyberrange/broken-win-remediator.git)
cd broken-win-remediator
