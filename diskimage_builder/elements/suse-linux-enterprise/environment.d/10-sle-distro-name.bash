export DISTRO_NAME=sle
export DIB_RELEASE=${DIB_RELEASE:-15.5}
export EFI_BOOT_DIR="EFI/BOOT"
export DIB_INIT_SYSTEM=systemd
case ${DIB_RELEASE} in
    15.5) export SLE_REPO_DIR=SLE_${DIB_RELEASE} ;;
    *) echo "Unsupported SLE release: ${DIB_RELEASE}"; exit 1 ;;
esac

export DIB_DISTRIBUTION_MIRROR=${DIB_DISTRIBUTION_MIRROR:-https://download.suse.com}

