class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/2.0.0/jrctl-2.0.0-darwin.tar.gz"
	sha256 "1029c00caf3a8bde30b642851126281d0c4a51a8f8aa7af2e6b7b21d8da27f7c"
	version "2.0.0"

	def install
		bin.install "bin/jrctl_darwin_amd64" => "jrctl"
		man1.install "man/jrctl-firewall-allow-cloudflare.1"
		man1.install "man/jrctl-firewall-allow.1"
		man1.install "man/jrctl-firewall-deny.1"
		man1.install "man/jrctl-firewall-list.1"
		man1.install "man/jrctl-firewall-unallow-cloudflare.1"
		man1.install "man/jrctl-firewall-unallow.1"
		man1.install "man/jrctl-firewall-undeny.1"
		man1.install "man/jrctl-firewall.1"
		man1.install "man/jrctl-secret-create.1"
		man1.install "man/jrctl-secret-delete.1"
		man1.install "man/jrctl-secret-read.1"
		man1.install "man/jrctl-secret.1"
		man1.install "man/jrctl-server-ingest.1"
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
