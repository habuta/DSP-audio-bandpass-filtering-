class Multiset:

  def __init__(self, elements=[]):
    self.store = dict()
    for val in elements:
      self.store[val] = self.store.get(val, 0) + 1

  def add(self, val):
    # adds one occurrence of val from the multiset, if any
    self.store[val] = self.store.get(val, 0) + 1

  def remove(self, val):
        # removes one occurrence of val from the multiset, if any
    cnt = self.store.get(val, 0)
    if cnt > 0:
      if cnt == 1:
        del self.store[val]
      else:
        self.store[val] = cnt - 1

  def __contains__(self, val):
    # returns True when val is in the multiset, else returns False
    return self.store.get(val, 0) != 0
    
  def __len__(self):
    # returns the number of elements in the multiset
    return sum(self.store.values())

  def __str__(self):
    return ", ".join([f'({i} : {j})' for i, j in self.store.items()])
