cask "keep-it" do
  version "1.8.18"
  sha256 "672e24466a8120d259c45d8ff49559b5bb9a06bc835049ff9ab989c89efec128"

  url "https://reinventedsoftware.com/keepit/downloads/KeepIt_#{version}.dmg"
  appcast "https://reinventedsoftware.com/keepit/downloads/keepit.xml"
  name "Keep It"
  desc "Notebook, scrapbook and organizer tool"
  homepage "https://reinventedsoftware.com/keepit/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Keep It.app"

  zap trash: [
    "~/Library/Containers/com.reinvented.Keep-It-Indexing",
    "~/Library/Containers/com.reinvented.Keep-It-Metadata",
    "~/Library/Containers/com.reinvented.Keep It",
  ]
end
