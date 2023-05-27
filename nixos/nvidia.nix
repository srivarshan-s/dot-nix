{ config, pkgs, ... }:

let
  nvidia-offload = pkgs.writeShellScriptBin "nvidia-offload" ''
    export __NV_PRIME_RENDER_OFFLOAD=1
    export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    export __VK_LAYER_NV_optimus=NVIDIA_only
    exec "$@"
  '';
in

{

	# Enable offload
	environment.systemPackages = [ nvidia-offload ];

	# NVIDIA drivers are unfree.
  nixpkgs.config.allowUnfree = true;

	# Enable NVIDIA driver
	services.xserver.videoDrivers = [ "nvidia" ];

	# Enable OpenGL
	hardware.opengl.enable = true;

	# Set the appropriate driver version
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;

	# nvidia-drm.modeset=1 is required for some wayland compositors
  hardware.nvidia.modesetting.enable = true;

	# Enable NVIDIA PRIME
	hardware.nvidia.prime = {

		# Enable offloading
    offload.enable = true;

    # Bus ID of the AMD GPU. You can find it using lspci, either under 3D or VGA
    amdgpuBusId = "PCI:5:0:0";

    # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
    nvidiaBusId = "PCI:1:0:0";

  };

}
