SCRIPT_DIR_PATH="$(dirname "$(realpath "$0")")"

wget -P "$SCRIPT_DIR_PATH" "https://github.com/schrodinger/pymol-open-source/archive/refs/tags/v3.1.0.tar.gz"

MD5SUM=$(md5sum "${SCRIPT_DIR_PATH}/v3.1.0.tar.gz" | awk '{print $1}') 
{
    echo "${MD5SUM}  v3.1.0.tar.gz"
} > "${SCRIPT_DIR_PATH}/v3.1.0.tar.gz.md5"

tar -xzvf ${SCRIPT_DIR_PATH}/v3.1.0.tar.gz
