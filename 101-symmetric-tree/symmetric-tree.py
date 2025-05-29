# Definition for a binary tree node.
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
class Solution:
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        self.ans = self.isSym(root.left, root.right)
        return self.ans
    def isSym(self, lnode: Optional[TreeNode], rnode: Optional[TreeNode]) -> bool:
        if lnode is None and rnode is None:
            return True
        elif lnode is None or rnode is None:
            return False
        return lnode.val==rnode.val and self.isSym(lnode.left, rnode.right) and self.isSym(lnode.right, rnode.left)
        