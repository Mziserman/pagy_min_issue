i1 = Instance.create!

5.times do
  e = Event.create!
  i1.events += [e, e, e, e, e, e, e, e, e, e, e, e]
end
