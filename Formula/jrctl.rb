class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/1.0.1/jrctl_darwin_amd64"
	sha256 "fedc74da9622b9cd3d2d9d86e29cdecad5588c1c9a7299ea556180c5f9ee3b82"
	version "1.0.1"

	def install
		bin.install "jrctl_darwin_amd64" => "jrctl"
	end

	test do
		system "#{bin}/jrctl", "--help"
	end

end
