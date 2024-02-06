=====================
suse-linux-enterprise
=====================
Use an SUSE Linux Enterprise cloud image as the baseline for built disk images. The images are
located in distribution specific sub directories under

    https://download.suse.com

Environment Variables
---------------------

DIB_RELEASE
  :Required: No
  :Default: 15-SP5
  :Description: Set the desired SUSE Linux Enterprise release.

DIB_CLOUD_IMAGES
  :Required: Yes
  :Default: https://test.site
  :Description: Set the desired URL directory to fetch the images from (Without the image file name).

SLE_IMAGE_FILE
  :Required: Yes
  :Default: SLES15-SP5-Minimal-VM
  :Description: Part of the image filename related to the version and size.

SLE_IMAGE_FLAVOR
  :Required: Yes
  :Default: Cloud-QU1
  :Description: Part of the image filename related to the type and the releade date (Ex: QU1 = Quaterly Update 1).

REPOS_LIST:
  :Required: Yes
  :Default: sle-module-python3
  :Description: List of modules to enable from SCC or RMT.

REG_METHOD:
  :Required: Yes
  :Default:
  :Description: Select RMT or SCC for regsitration method. Value can be "rmt" or "scc".

RMT_IP_ADDR:
  :Required: Yes if REG_METHOD=rmt
  :Default: 192.168.0.1
  :Description: IP adress of the RMT server.

RMT_SERVER:
  :Required: Yes if REG_METHOD=rmt
  :Default: rmt.local
  :Description: FQDN of the RMT server.

RMT_CERT_FINGERPRINT:
  :Required: Yes if REG_METHOD=rmt
  :Default: AA:AA:AA
  :Description: sha1 RMT CA certificat fingerprint.

REG_CODE:
  :Yes if REG_METHOD=scc
  :Default: 123456789
  :Description: Registration code used in SCC to register the product.


Notes:

* Unregistration is done at the end of the build process. All the registration data are cleaned.

* There are very frequently new automated builds that include changes that
  happen during the product maintenance. The download directories contain an
  unversioned name and a versioned name. The unversioned name will always
  point to the latest image, but will frequently change its content. The versioned
  one will never change content, but will frequently be deleted and replaced
  by a newer build with a higher version-release number.
