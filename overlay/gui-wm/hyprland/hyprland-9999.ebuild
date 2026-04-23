EAPI=8

inherit git-r3 cmake

DESCRIPTION="Hyprland - dynamic tiling Wayland compositor"
HOMEPAGE="https://hypr.land/"
EGIT_REPO_URI="https://github.com/hyprwm/Hyprland.git"
EGIT_BRANCH="main"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

IUSE="X"

DEPEND="
	dev-libs/wayland
	dev-libs/wayland-protocols
	dev-libs/libinput
	dev-libs/libdrm
	dev-libs/libevdev
	dev-libs/libxkbcommon
	sys-apps/dbus
	x11-libs/libxcb
	x11-libs/xcb-util
	x11-libs/xcb-util-errors
	x11-libs/xcb-util-wm
	x11-libs/xcb-util-image
	x11-libs/xcb-util-keysyms
	media-libs/mesa
"

RDEPEND="${DEPEND}"

BDEPEND="
	${DEPEND}
	dev-build/cmake
	dev-vcs/git
	virtual/pkgconfig
"
