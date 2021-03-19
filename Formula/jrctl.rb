require "tmpdir"

class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/1.1.0/jrctl-1.1.0-darwin.tar.gz"
	sha256 "a2f50af17c64fc8470f2e74bb289214fdb154a5e128def759925c06d78163245"
	version "1.1.0"

	def install
		mkdir_p "/etc/jrctl"
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
		man1.install "man/jrctl.1"
	end

	test do
		system "#{bin}/jrctl", "-v"
	end

end
