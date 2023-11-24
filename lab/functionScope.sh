#! bin/bash
var=first_text_aaa
function fx {
	local var=second_text_bbb
	echo $var
	}
echo $var
fx
echo $var
