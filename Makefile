.PHONY: all verify

# F-Droid PGP Key
# https://f-droid.org/ja/docs/Verifying_Downloaded_APK/
FDROID_PGP_KEY = 37D2C98789D8311948394E3E41E7044E1DBA2E89

all: verify

verify: F-Droid.apk F-Droid.apk.asc
	gpg --keyserver keyserver.ubuntu.com --recv-key $(FDROID_PGP_KEY)
	gpg --verify F-Droid.apk.asc F-Droid.apk

F-Droid.apk:
	curl -O https://f-droid.org/F-Droid.apk

F-Droid.apk.asc:
	curl -O https://f-droid.org/F-Droid.apk.asc
