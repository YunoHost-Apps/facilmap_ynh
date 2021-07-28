#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies=""

nodejs_version=14

facilmap_version=3.4.0

#=================================================
# PERSONAL HELPERS
#=================================================

facilmap_add_config() {
    mkdir -p "$final_path/etc"
    ynh_add_config --template="../conf/config.env" --destination="$final_path/etc/facilmap.env"
}

facilmap_set_permissions() {
    chown -R root:root $final_path
    mkdir -p "$final_path/lib/node_modules/facilmap-server/cache"
    chown -R facilmap:facilmap "$final_path/lib/node_modules/facilmap-server/cache"
}

facilmap_install_app() {
    chown -R "$app":"$app" $final_path

    pushd "$final_path"
        ynh_exec_as "$app" "$ynh_node_load_PATH" "$ynh_npm" install --prefix "$final_path" -g facilmap-server@"$facilmap_version"
    popd
}

facilmap_create_user() {
    ynh_system_user_create --username=$app --home_dir="$final_path"
    mkdir -p "$final_path"
}

facilmap_create_db() {
    ynh_mysql_setup_db --db_user=$db_user --db_name=$db_name --db_pwd=$db_pwd
    echo "ALTER DATABASE $db_name CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci" | ynh_mysql_connect_as --user=$db_user --password=$db_pwd --database=$db_name
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
