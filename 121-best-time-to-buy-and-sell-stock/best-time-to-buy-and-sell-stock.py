class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        minValSoFar=prices[0]
        maxP=0
        for i in range(1,len(prices)):
            P=prices[i]-minValSoFar
            if P>maxP:
                maxP=P
            if minValSoFar>prices[i]:
                minValSoFar=prices[i]
        return maxP

        