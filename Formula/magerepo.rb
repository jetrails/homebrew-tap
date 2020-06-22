class Magerepo < Formula

	desc "Cross-platform CLI tool to interact with the MageRepo API"
	homepage "https://github.com/magerepo/magerepo-cli"
	url "https://github.com/magerepo/magerepo-cli/releases/download/2.0.1/magerepo-cli-macos"
	sha256 "f0784622581b42971148bef19603930bc58ae5767d4d926b10e408b42cc5cf35"
	version "2.0.1"
	depends_on "curl"

	def install
		bin.install "magerepo-cli-macos"
		mv bin/"magerepo-cli-macos", bin/"magerepo"
	end

end
