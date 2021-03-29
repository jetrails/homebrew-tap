class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/1.2.0/jrctl-1.2.0-darwin.tar.gz"
	sha256 "a5f2c450dd1d1504575072c4f2cda16f085d0312fb675842eb5ceddc94d54546"
	version "1.2.0"

	def install
		bin.install "bin/jrctl_darwin_amd64" => "jrctl"
		man1.install "man/jrctl-firewall-allow.1"
		man1.install "man/jrctl-firewall-list.1"
		man1.install "man/jrctl-firewall.1"
		man1.install "man/jrctl-secret-create.1"
		man1.install "man/jrctl-secret-delete.1"
		man1.install "man/jrctl-secret-read.1"
		man1.install "man/jrctl-secret.1"
		man1.install "man/jrctl-server-list.1"
		man1.install "man/jrctl-server-restart.1"
		man1.install "man/jrctl-server-version.1"
		man1.install "man/jrctl-server.1"
		man1.install "man/jrctl-transfer-receive.1"
		man1.install "man/jrctl-transfer-send.1"
		man1.install "man/jrctl-transfer.1"
		man1.install "man/jrctl.1"
	end

	test do
		system "#{bin}/jrctl", "-v"
	end

	def caveats
		"Bash completions are available but were not installed. For more info see:\n\n" +
		"    $ jrctl completion --help\n\n"
	end

end
