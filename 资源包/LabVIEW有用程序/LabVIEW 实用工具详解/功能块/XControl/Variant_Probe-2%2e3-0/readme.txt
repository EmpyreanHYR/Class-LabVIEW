Variant Probe V2.3
Copyright © 2009, Ton Plomp
All rights reserved.

Author:
Ton Plomp
tcplomp@gmail.com

Distribution:
This code was downloaded from:
http://lavag.org/index.php?app=downloads&showfile=19

Description:
A custrom probe to put on a variant.
It will create a tree based on the variant data, and populate the tree with the data, the attributes of the variant will be shown as well. 
The datatype description will betermine the color of the tree items.
Historical data is available as well.

Version 2.0 introduces a Variant Tree XControl which can be used in any project. Located under the user.lib palette, it gives great flexibility to 
the programmer. 
The programmer has the posibility to give the end user permissions for the following actions:
-Reset
	This will reset the whole tree contents
-Traverse Variant Attbributes
	This will enable/disable the traversion of variant attributes
-Colorize
	This will enable/disable coloring of the actual datatype

All of these customizations are available as properties/methods for the actual XControl as well.

Installation method 1:
Install the VariantProbe_2.0-1.ogp using VIPM (www.jkisoft.com/vipm)

Installation method 2:
Place the contents of the user.lib folder inside the LabVIEW user.lib folder.

and you have a custom VariantProbe and xcontrol

Don't forget to remove the old version manually if needed!

To use it add a probe to a variant datatype or to an array of variant's.

It can pause if the data changes, and will notify you if a change happens.

Dependencies:
The following OpenG packages should be installed:
oglib_string>=2.6
oglib_lvdata>=2.8
oglib_comparison>=2.3
oglib_error>=2.0


Known issues:
Is slow on large variants.

Support:
If you have any problems with this code or want to suggest features:
http://lavag.org/index.php?showtopic=10269


Version History:
2.3:	Fixed a bug that caused attributes not to be traversed on certain data-types
2.2:	Fixed a relinking bug
2.1:	Fixes a bug where unnamed cluster elements where used (http://lavag.org/topic/10269-discuss-variantprobe/page__view__findpost__p__67677)
2.0:	Added an XControl
		Show XControl in palette (under user.lib controls)
		Add coloring
		Add 'user permissions' on XControl
		Add Reset on XControl
		Add optionally traversing attributes on XControl
		Add optionally colorizing on XControl
		Add optionally restting on XControl
1.2.0:	Upgraded to LabVIEW 8.5 to use Inheritanct
	Support for Waveforms, timestamps and dynamic datatypes (thanks to Osvaldo)
	Added probe for an array of Variants
	Distributed as one .llb and added OGP installer
	If a Variant hasn't changed it's not decomposed (optimization)
1.1.0:  Support for attributes of variants
1.0.1: 	Controls placed on a seperate pane
		Resize tree to upper pane
		Hide unused columns
		Limited maximum history length (default 10)
		Window resizable
1.0.0: Initial release of the code.

License:

This code is distributed under the BSD License
Copyright © 2009, Ton Plomp
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the name of the Ton Plomp nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.