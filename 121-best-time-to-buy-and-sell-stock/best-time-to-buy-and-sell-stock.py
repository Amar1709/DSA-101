class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        minValSoFar=prices[0]
        maxP=0
        for i in range(1,len(prices)):
            P=prices[i]-minValSoFar
            if minValSoFar>prices[i]:
                minValSoFar=prices[i]
            elif P>maxP:
                maxP=P
        return maxP

        