git ls-files| grep -e .[as]bp | xargs sed -i -r -e 's/	sub /	Sub /I' -e 's/End *Sub/End Sub/I' -e 's/Exit *Sub/ExitSub/I'
git ls-files| grep -e .[as]bp | xargs sed -i -r -e 's/	Function /	Function /I' -e 's/End *Function/End Function/I' -e 's/Exit *Sub/ExitFunction/I'

git ls-files| grep -e .[as]bp | xargs sed -i -r -e 's/End *if/endif/I' -e 's/else *if/else if/I' -e 's/	if/	if/Ig' -e 's/then/then/I' -e 's/else/else/Ig'
git ls-files| grep -e .[as]bp | xargs sed -i -r -e 's/[ 	]+$//g'

git ls-files| grep -e .[as]bp | xargs sed -i -r -e 's/,[ 	]*/, /g'
git ls-files| grep -e .[as]bp | xargs sed -i -e "s/=/ = /g" -e "s/<>/ <> /g" -e "s/= *>/ >= /g" -e "s/> *=/ >= /g" -e "s/< *=/ <= /g" -e "s/= *</ <= /g"
git ls-files| grep -e .[as]bp | xargs sed -i -e "s/DWord/DWord/gI" -e "s/ As Long/ As Long/gI" -e "s/ As / As /gI"
git ls-files| grep -e .[as]bp | xargs sed -i -e "s/sizeof/sizeof/gI" -e "s/Dim /Dim /gI" -e "s/ifdef/ifdef/gI"

@REM ==== FIXUP ====
@REM duplicate whitespace test
@REM convert LF to CRLF (これをしないと大幅にバグる)
@REM ===罫線を復元
git ls-files| grep -e .[as]bp | xargs sed -i -r -e 's/ +/ /g' -e 's/$/\r/g' -e "s/= = /==/g"

