[turn on word wrap to read clearly]
PTA IP Address V1.0.1
Copyright © 2007, PrimeTest Automation, Inc.
All rights reserved.

Author:
Dan Press
<email: dan.press@primetest.com>
<alternate email: press@ieee.org>

Distribution:
This code was downloaded from:
http://forums.lavag.org/index.php?automodule=downloads

Instructions:
This code has been tested to run under LabVIEW 8.2.1 and 8.5.0.  Just unzip the code into any folder of your chosing and select the file "IP Address.xctl" as a control.

Features:
- Exists as a string control / indicator for IP addresses
- Provides a convenient way to enter an IP address
- Filters all but number keys
- Advances through the four bytes of an IP address automatically

Support:
If you have any problems with this code or want to suggest features, please post to the LAVA forum.

Version History:
1.0.0:
Initial release of the code.

1.0.1:
Added custom icon to the block diagram terminal (thanks Mike!)
Fixed vertical resize (very short) on drop in 8.2.
Added support for backspace and delete.
Using character values instead of scancodes for key down filter event.
Learned that the decimal point in the keypad and the delete key have the same scancode.
Added documentation to the XControl properties.

License:
This code is distributed under the BSD License

Copyright © 2007, PrimeTest Automation, Inc.
All rights reserved.

Author:
Dan Press
<email: dan.press@primetest.com>
<alternate email: press@ieee.org>

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    * Neither the name of PrimeTest Automation nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.