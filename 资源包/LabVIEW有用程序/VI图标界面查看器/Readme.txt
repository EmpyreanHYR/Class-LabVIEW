RUAG ICON Editor v1.7 - 14.11.2006
Copyright © 2006, Martin Hasler
----------------------
This is the currend RUAG ICON Editor for LabVIEW 8.x
Have a lot of Fun with LabVIEW

Author:
Martin.Hasler
martin.hasler@aerodynamics.ch

Distribution:
This code was downloaded from:
[url=http://forums.lavag.org/index.php?automodule=downloads]http://forums.lavag.org/index.php?automodule=downloads[/url]

Description:
Copy the Files Icon.llb and RUAG-Icon-Editor.vi and description.txt into your LabVIEW 8.x/project/  Directory
If you start LabVIEW the next Time, the RUAG-ICON-Editor appears under LabVIEW Tools (Werkzeuge).

With the RUAG Icon Editor you can create or modify ICONS from Vi, Vit, Ctl.
The information about the ICON will be saved into the VI-Documentation.

=> First: Click  "Load Directory" 
=> Click "Tree-Control" to choose your VI to modify.
=> You can modify the colorsets by Editing the Color_Set.vi in the Icon.llb. Do not forget to click on: Save current values as default.

=> DO NOT USE THE FOLLOWING SINGN IN THE TITLE OR BODY!!    § 

=> Dobble -click your VI in the "Tree-Control" to open the VI.

Support:
If you have any problems with this code or want to suggest features:
[url=http://forums.lavag.org/index.php?showtopic=4471]http://forums.lavag.org/index.php?showtopic=4471[/url]

Version History:
    V1.0  The Original Version 1 was made by Pascal Helfenstein  phelfens@fhzh.ch 
    V1.1  You can reload the old Icon. 
                   You can Choose Color Sets. 
                   Help button. 
                   Changes will be saved into the VI documentation.  
    V1.2  You can Edit Icons in llb
                   You can Edit Icons from *.vit, *.ctl, *.vi
    V1.3  The Pictures (New Icon, Old Icon etc.) are bigger
                   Bug Fixed that you have to press "Write Icon" twice for Vi's which are in a Project.
    V1.4  More Documentation, (BD & FP) "Straighten the Code"
    V1.5  "Edit Documentation" included
    V1.5.1 Rearranged all Buttons. If you edit the Icon the first time, text=black, Title and Body= white 
    V1.5.2 If you edit a ICON the first time, a line feed will be added to the existing documentation.
    V1.6 If the entered ICON text is too long it will be cutted automatically. 
         Automatically add and remove Tags < B > and </B> to the Description. (Preview included) 
         Rearranged Buttons 
    V1.7 An Indicator is blinking and the cursor is set to busy while the tree control is updated
         Bug solved with old tree control paths
         Automatically generate a Documentation with Username, Date,  CTL Inputs and Outputs if they are connected to the connector pane (including their description)
         Open Frontpannel and Blockdiagramm by right-click to the Tree CTL or LLB-Content


License:
Creative Commons Attribution 2.5 License