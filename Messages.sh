#!/bin/sh

if [ ! -d i18n ]; then
    mkdir i18n
fi

if [ ! $QT5LUPDATE ]; then
    QT5LUPDATE=/usr/bin/lupdate; fi

if [ ! -x "$QT5LUPDATE" ]; then
    echo "${QT5LUPDATE} can not be found or is not executable."; echo "Use export QT5LUPDATE=/path/to/lupdate"; exit 1; fi


$QT5LUPDATE -no-obsolete -locations none -source-language en -target-language en cmd -ts i18n/cutelystcmd.en.ts

$QT5LUPDATE -no-obsolete -locations none -source-language en -target-language en wsgi -ts i18n/cutelystwsgi.en.ts

$QT5LUPDATE -no-obsolete -locations none -source-language en -target-language en -no-recursive Cutelyst -ts i18n/cutelystcore.en.ts

$QT5LUPDATE -no-obsolete -locations none -source-language en -target-language en Cutelyst/Plugins/Memcached -ts i18n/plugin_memcached.en.ts

$QT5LUPDATE -no-obsolete -locations none -source-language en -target-language en Cutelyst/Plugins/CSRFProtection -ts i18n/plugin_csrfprotection.en.ts

$QT5LUPDATE -no-obsolete -locations none -source-language en -target-language en Cutelyst/Plugins/View/Grantlee -ts i18n/plugin_view_grantlee.en.ts

$QT5LUPDATE -no-obsolete -locations none -source-language en -target-language en Cutelyst/Plugins/Utils/Validator -ts i18n/plugin_utils_validator.en.ts
