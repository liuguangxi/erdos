To solve this problem, we need to find the number of ways to place $n$ non-attacking rooks on an $n \times n$ chessboard such that the arrangement is **symmetric about the center** (invariant under 180-degree rotation).

### Mathematical Explanation

1.  **Symmetry Condition**:
    *   An arrangement is symmetric about the center if for every rook placed at position $(r, c)$, there is also a rook at the symmetric position $(n-1-r, n-1-c)$ (using 0-based indexing).
    *   **Case 1: $n$ is even ($n=2k$)**. There is no central row or column. The rows and columns are divided into $k$ symmetric pairs (e.g., row $0$ and row $n-1$ form a pair). If we place a rook in row $i$, the symmetry forces a rook in row $n-1-i$.
        *   We consider the first $k$ rows. For each row, we must choose a column such that the symmetry is maintained.
        *   This reduces to pairing the $k$ row pairs with $k$ column pairs ($k!$ ways) and for each pair, choosing one of 2 orientations ($2^k$ ways).
        *   Formula: $W(2k) = k! \times 2^k$.
    *   **Case 2: $n$ is odd ($n=2k+1$)**. There is a central square at $(k, k)$.
        *   For the arrangement to be symmetric, the rook in the middle row *must* be placed in the middle column (the center of the board).
        *   Once the center is occupied, we are left with arranging rooks on the remaining $2k$ rows and $2k$ columns, which reduces to the even case.
        *   Formula: $W(2k+1) = W(2k) = k! \times 2^k$.

2.  **General Formula**:
    For a board of size $n$, let $k = \lfloor n/2 \rfloor$.
    The total number of centrally symmetric non-attacking rook arrangements is:
    $$ \text{Ways} = k! \times 2^k \pmod{10^9 + 7} $$

Therefore the required answer is 876668380
