#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

nodejs_version=14

facilmap_version=3.4.0

#=================================================
# PERSONAL HELPERS
#=================================================

facilmap_add_config() {
    mkdir -p "$install_dir/etc"
    ynh_add_config --template="../conf/config.env" --destination="$install_dir/etc/facilmap.env"
}

facilmap_set_permissions() {
    chown -R root:root $install_dir
    mkdir -p "$install_dir/lib/node_modules/facilmap-server/cache"
    chown -R facilmap:facilmap "$install_dir/lib/node_modules/facilmap-server/cache"
}

facilmap_install_app() {
    chown -R "$app":"$app" $install_dir

    pushd "$install_dir"
        ynh_exec_as "$app" "$ynh_node_load_PATH" "$ynh_npm" install --prefix "$install_dir" -g facilmap-server@"$facilmap_version"
    popd
}

facilmap_create_user() {
#REMOVEME?     ynh_system_user_create --username=$app --home_dir="$install_dir"
    mkdir -p "$install_dir"
}

facilmap_create_db() {
#REMOVEME?     ynh_mysql_setup_db --db_user=$db_user --db_name=$db_name --db_pwd=$db_pwd
    echo "ALTER DATABASE $db_name CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci" | ynh_mysql_connect_as --user=$db_user --password=$db_pwd --database=$db_name
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
