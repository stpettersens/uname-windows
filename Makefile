make:
	tcc uname.c

package:
	7z -tzip u uname_win64.zip uname.exe LICENSE
	sha256_chksum uname_win64.zip

upload:
	sha256_chksum uname-win64-setup.ps1
	@echo
	@copyparty_sync

clean:
	del uname.exe
