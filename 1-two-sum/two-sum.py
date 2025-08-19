class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        numMap = {}
        length = len(nums)
        for i in range(length):
            diff = target - nums[i]
            if diff in numMap:
                return [numMap[diff], i]
            numMap[nums[i]] = i
        return []
