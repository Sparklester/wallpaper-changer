# wallpaper-changer
Superimposes a user-defined wallpaper over the default, script-loaded wallpaper on Gencat Lenovos.

# Structure
This package works using a combination of two files, the main script ([`wp-changer.ps1`](wp-changer.ps1)) and a batch file ([`exec-policies-wrecker.bat`](exec-policies-wrecker.bat)) which executes the script bypassing all user-level execution policies. The script forces the wallpaper to be changed without directly overwriting the registry key for the wallpaper, updating it almost immediately. The batch file is to be run as a as a startup task from the Task Scheduler, thus switching the wallpaper in a timely fashion shortly after the Gencat BGInfo script changes it.

A template for a minimized (stealth) task is included in [`wp-changer-task.xml`](wp-changer-task.xml). To add it, first make sure to edit it accordingly wherever indicated by the comments to make sure your Windows username and the user's folder name match those of your computer. The file can then be imported right away within the Task Scheduler app. The arguments should all point at the location of the batch file, which runs the PowerShell script on its same directory. It is thereby recommended to place all the files and wallpaper in the same directory.

# How to use
- Download and place all the files in one folder. I recommend using an `%Appdata%` directory, such as `C:\Users\NameSurname\AppData\Roaming\Scripts\wallpaper-changer`, replacing `NameSurname` with your username and creating all the necessary subdirectories under `\Roaming\` to fit the template.
- Modify [`wp-changer-task.xml`](wp-changer-task.xml) with your preferred text editor as indicated above.
- Edit [`wp-changer.ps1`](wp-changer.ps1) with your editor and modify the path to your wallpaper where indicated by the inline comment.
- Import [`wp-changer-task.xml`](wp-changer-task.xml) into the Task Scheduler.
- Enjoy

# License
This solution uses the MIT license. Please see the file [`LICENSE.md`](LICENSE.md) in the main directory of the repository for more details.
