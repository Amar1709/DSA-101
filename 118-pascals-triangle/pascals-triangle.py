class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        if numRows>=1:
            ans=[[1]]
            a=[]
            b=[1]
            n=2

            while n<=numRows:
                a.append(1)
                for i in range(1,n-1):
                    a.append(b[i] + b[i-1])
                a.append(1)
                ans.append(a)
                b=a
                a=[]
                n=n+1
            return ans
        else:
            return [[]]
                    
        