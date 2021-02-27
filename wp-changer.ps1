
#  _______________________________/\\\______________________        
#   ______________________________\/\\\______________________       
#    ______________________________\/\\\______________________      
#     _____/\\\\\\\\_____/\\\\\\\\__\/\\\____________/\\\\\____     
#      ___/\\\//////____/\\\/////\\\_\/\\\\\\\\\____/\\\///\\\__    
#       __/\\\__________/\\\\\\\\\\\__\/\\\////\\\__/\\\__\//\\\_   
#        _\//\\\________\//\\///////___\/\\\__\/\\\_\//\\\__/\\\__  
#         __\///\\\\\\\\__\//\\\\\\\\\\_\/\\\\\\\\\___\///\\\\\/___ 
#          ____\////////____\//////////__\/////////______\/////_____

#------------------------------------------------------------------------#
# ScriptName : wp-changer.ps1                                      		 #
# Description : Force a Desktop wallpaper Refresh w/o going through reg  #
#                                                                   	 #
# Date : 08 February 2021                                              	 #
#------------------------------------------------------------------------#

#Modify Path to the picture accordingly to reflect your infrastructure
$imgPath="C:\Users\DavidCebotari\AppData\Roaming\Scripts\wallpaper-changer\bliss.jpg"
$code = @' 
using System.Runtime.InteropServices; 
namespace Win32{ 
    
     public class Wallpaper{ 
        [DllImport("user32.dll", CharSet=CharSet.Auto)] 
         static extern int SystemParametersInfo (int uAction , int uParam , string lpvParam , int fuWinIni) ; 
         
         public static void SetWallpaper(string thePath){ 
            SystemParametersInfo(20,0,thePath,3); 
         }
    }
 } 
'@

add-type $code 

#Apply the Change on the system 
[Win32.Wallpaper]::SetWallpaper($imgPath)