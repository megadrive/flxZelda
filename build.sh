#!/bin/bash

~/.flex/bin/mxmlc -static-link-runtime-shared-libraries src/Main.as

mkdir bin
echo '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="480" height="384" id="Main" align="middle"> <param name="movie" value="flxZelda.swf"/> <!--[if !IE]>--> <object type="application/x-shockwave-flash" data="flxZelda.swf" width="480" height="384"> <param name="movie" value="flxZelda.swf"/> <!--<![endif]--> <a href="http://www.adobe.com/go/getflash">     <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player"/> </a> <!--[if !IE]>--> </object> <!--<![endif]--></object>' > bin/index.html
mv -f src/Main.swf bin/flxZelda.swf # automatically overwrite
