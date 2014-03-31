Facter.add("operatingsystemmajorrelease") do
  setcode do
    Facter.value("operatingsystemrelease").split('.')[0]
  end
end



