# wallpaper-changer
Superimposes a user-defined wallpaper over the default, script-loaded wallpaper on Gencat Lenovos.

# Usage
This package works using a combination of two files, the main script ([`wp-changer.ps1`](wp-changer.ps1)) and a batch file ([`exec-policies-wrecker.bat`](exec-policies-wrecker.bat)) which executes the script bypassing all user-level execution policies. The batch file is to be run as a as a startup task from the Task Scheduler, thus switching the wallpaper in a timely fashion shortly after the Gencat BGInfo script changes it.

A template for a minimized (stealth) task is included in [`wp-changer-task.xml`](wp-changer-task.xml). To add it, first make sure to edit it accordingly wherever indicated by the comments to make sure your Windows username and the user's folder name match those of your computer. The file can then be imported right away within the Task Scheduler app.

# License
This solution uses the MIT license. Please see the file [`LICENSE.md`](LICENSE.md) in the main directory of the repository for more details.
