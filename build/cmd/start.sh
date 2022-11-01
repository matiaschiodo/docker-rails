#!/bin/sh
for lock_file in yarn.lock Gemfile.lock; do
    new_lock_file="/tmp/${lock_file}"
    if [ -f "${lock_file}" ]; then
        diff="$(diff "${new_lock_file}" "${lock_file}")"
        if [ "${diff}" != "" 2>/dev/null ]; then
            cp "${new_lock_file}" "${lock_file}"
        fi
    else
        cp "${new_lock_file}" "${lock_file}"
    fi
done

pid=${APP_PATH}/tmp/pids/server.pid
if [ -f $pid ]; then
    rm $pid
fi

SECRET_KEY_BASE=$(bundle exec rails secret) bundle exec rails s -b 0.0.0.0 -e development
