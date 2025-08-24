class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        x=0
        li=[]
        for i in nums:
            if i == 1:
                x+=1
            else:
                li.append(x)
                x=0
        li.append(x)
        return max(li)
        
                

        