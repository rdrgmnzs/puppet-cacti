Facter.add(:database_created) do
  confine :kernel => :linux
  setcode do
    version = Facter::Util::Resolution.exec('/usr/bin/mysql \'-NBe show databases LIKE "cacti"\';')
    if version
      version.match(/cacti/).to_s
    else
      nil
    end
  end
end
