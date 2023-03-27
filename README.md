# WS1UEM_RemoveJava
Use Workspace ONE UEM to remove all versions of Java
If you want to remove all versions of Java on all of your Windows 10/11 PCs enrolled into Workspace ONE UEM, you can use this PowerShell script in conjunction with a Freestyle Orchestrator (also part of WS1) workflow.

Step 1: Add the script.
- In the Workspace ONE UEM console, navigate to Resources -> Scripts
- Click ADD and choose Windows
- Give the script a name, like "Remove All Java installed" (remember it becuase you'll need the name later)
- On the next screen change the Timout to 120 seconds (probably not neccessary but may help with slower PCs)
- For Code, either upload the file RemoveJava.ps1 that you can download from this project, or copy paste in its contents
- On the next screen just click Save.

Step 2: Create a Freestyle Orchestrator workflow
- In the Workspace ONE UEM console, navigate to Freestyle Orchestrator (its directly in the root navigation tree)
- For Platform, choose Windows
- Give the Workflow a name like "Remove All Java"
- Click + and choose Condition
- Choose Application Exists
- Type java in the field to the right of Contains.  The 3 fields in the row should show Application Contains java
- Click Additional Settings
- Its up to you if you want to enable these, but 
   "Re-evaluate condition" will keep re-evaluating if an app with java in its name is installed which will account for people re-installing Java
   "Evaluate condition without user logged in" might be useful to have the workflow run no matter of nobody is logged in.
 - Click THEN
 - Click ADD -> Action -> Script
 - Click in the Search field and your script should appear in the list below.  Click SELECT to select it.
 - Click Save and Publish
 
 Publish the Workflow to a small user group of people who you want to test with.  Modify the scope of users later.
 
 Please let me know if you have any questions.  Send an email to ibanyan@gmail.com
