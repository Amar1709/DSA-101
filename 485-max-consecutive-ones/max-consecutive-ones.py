class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        x=0
        ans=0
        for i in nums:
            if i == 1:
                x+=1
            else:
                x=0
            if x>ans:
                ans=x
        return ans
        
                

        