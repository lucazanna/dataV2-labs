#solution 1
def queue(queuers,pos):
    #your code here
    ticketsToBuy = queuers[pos]

    time = 0
    while ticketsToBuy > 0:
      time += 1
      
      # if the first in file has more tickets to buy then he goes to the back of the list, otherwise he leaves
      if queuers[0] == 1 :
          queuers.pop(0)
      else:
          queuers.append(queuers.pop(0)-1)

      # my friend moves ahead
      if (pos == 0):
          pos = len(queuers)-1
          ticketsToBuy += -1
      else :
          pos += -1
          
    return time
    
#solution 2
def queue(queuers,pos):
    return sum(min(queuer, queuers[pos] - (place > pos)) for place, queuer in enumerate(queuers))
