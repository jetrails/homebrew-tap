class Magerepo < Formula

	desc "Cross-platform CLI tool to interact with the MageRepo API"
	homepage "https://github.com/magerepo/magerepo-cli"
	url "https://github.com/magerepo/magerepo-cli/releases/download/2.0.2/magerepo-cli-macos"
	sha256 "9e4e88cf93c77b9cb126b48c2a5a313ad8525d6fb97baad72b3112d10c23d1da"
	version "2.0.2"

	def install
		bin.install "magerepo-cli-macos" => "magerepo"
	end

	test do
		system "#{bin}/magerepo", "-v"
	end

end
