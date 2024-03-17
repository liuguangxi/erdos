// Global setup
#set document(
  title: [Erdős Unofficial Offline Edition],
  author: ("Guangxi Liu")
)

#set page(
  paper: "a4"
)

#set text(
  font: "Minion Pro",
  size: 11pt
)

#let main-color = rgb("#03A9F4")
#let main-dark-color = rgb("#03A9F4").darken(50%)


// Cover
#[
#set text(font: "Myriad Pro")
#v(8em)
#text(size: 36pt)[
  #text(fill: main-color)[*Erdős*]
]
#v(-2em)
#text(size: 36pt)[
  *Unofficial Offline Edition*
]
#v(-2em)
#text(size: 18pt)[
  *Problem Set From
  #link("https://erdos.sdslabs.co")[#text(fill: main-color)[erdos.sdslabs.co]]*
]
#v(1em)
#text(size: 14pt)[
  Compiled by *Guangxi Liu*
]
#align(right + bottom)[
  #text(size: 14pt)[
    Revision #text(fill: main-color)[*v2024.1*] \
    March 2024
  ]
]
]


// Main body setup
#set page(
  header: [
    #set align(center)
    #box(width: 1fr, inset: (y: 5pt), stroke: (bottom: 0.75pt + main-dark-color))[
      #smallcaps[Erdős Unofficial Offline Edition]
    ]
  ],
  footer: [
    #set align(center)
    #text(number-type: "old-style")[
      Page #counter(page).display("1 of 1", both: true)
    ]
  ]
)

#counter(page).update(1)

#set par(
  justify: true
)

#let problem-heading(number, title) = {
  let bookmark-title = [Problem \##number: #title]

  pagebreak()

  set text(size: 0pt)
  heading(numbering: none, hide[#bookmark-title])

  set text(font: "Myriad Pro", size: 14pt)
  box(
    fill: main-dark-color,
    inset: (x: 8pt, y: 5pt),
    stroke: (bottom: 1.5pt + main-dark-color)
  )[
    #text(fill: white)[*#number*]
  ]
  box(
    inset: (x: 2pt, y: 5pt),
    stroke: (bottom: 1.5pt + main-dark-color)
  )[
    #text(fill: main-dark-color)[#h(10pt) *#title*]
  ]

  parbreak()
}

#let problem-tag(tags) = {
  set text(font: "Minion Pro", fill: white)
  v(0.5em)
  for tag in tags {
    box(
      fill: main-dark-color,
      inset: (x: 3pt, top: 3pt, bottom: 5pt)
    )[*#tag*]
    h(1em)
  }
  parbreak()
}


// Main body
//------------------------------------------------------------------------------
// Problem #1
#problem-heading(1, [Minimum Value])

Let there be a set of $N$ natural numbers $1, 2, 3, dots, N$. We are allowed to insert $+$ or $-$ sign in front of each number and add all the resultant numbers. The minimum non-negative value obtained is denoted as $D(N)$.

Find the value of $D(1) + D(2) + dots.c + D(19216812112)$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #2
#problem-heading(2, [Equation])

Let $x$ and $y$ be positive real numbers.

Using the equation $y^6 = x^6 + 8x^4 - 6x^2 + 8$, find the integral value of $3345x + 4321y^2$.

Your answer should not exceed $10^7$.

#problem-tag(("number theory", "polynomial"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #3
#problem-heading(3, [Largest Number])

Find the positive integer $n$ less than $100000$ for which the equation $x^2 = n y^2 + 1$ has the largest fundamental value of $x$. The fundamental value of $(x,y)$ is the smallest positive non-trivial integral solution to the equation. $(1,0)$ is the trivial solution.

*Note:* You can ignore those values of $n$ for which there are no fundamental solution to the given equation.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #4
#problem-heading(4, [Palindromes])

Find the sum of numbers less than or equal to $1000000000$ which are palindromes in binary, octal as well as hexadecimal base.

#problem-tag(("number theory", "palindrome"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #5
#problem-heading(5, [3 Musketeers])

There are $3$ people A, B and C. Three of them have positive integers written on their hats. One can only see the numbers written on others hats and can not see the number written on his own hat. The number on one of the hats is the sum of the numbers on the other $2$ hats. Now the following event occurs

- A was asked about the number on his hat. He replies "Don't know".
- B was asked about the number on his hat. He also replies "Don't know".
- C was asked about the number on his hat. He also replies "Don't know".
- A was asked again the number on his hat. He replies "$65$".

Find the product of the three numbers on the hats.

#problem-tag(("number theory", "implementation"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #6
#problem-heading(6, [Sum It Up])

Let $A$ be the sum of digits of $3334^3334$ when written in decimal notation and $B$ be the sum of digits of $A$.

What is the value of $2013$ times sum of digits of $B$?

#problem-tag(("number theory", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #7
#problem-heading(7, [Exponentiation])

$f(x,n) = x^2^1 + x^2^2 + x^2^3 + dots.c + x^2^n.$

You are given that $f(2,10) mod 1000000007 = 180974681$.

Calculate $(sum_(x=2)^(10^7) f(x,10^18)) mod 1000000007$.

#problem-tag(("number theory", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #8
#problem-heading(8, [Summation of Primes])

Find the sum of digits of all prime numbers below $10^9$.

#problem-tag(("number theory", "primes"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #9
#problem-heading(9, [Highly Divisible Number])

What is the smallest number to have over $300$ divisors?

#problem-tag(("number theory", "divisors"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #10
#problem-heading(10, [Number Spiral Diagonals])

Starting with the number $1$ and moving to the right in a clockwise direction a $5 times 5$ spiral is formed as follows:

#text(fill: main-dark-color, weight: "bold")[
```
21 22 23 24 25
20 07 08 09 10
19 06 01 02 11
18 05 04 03 12
17 16 15 14 13
```
]

It can be verified that the sum of the numbers on the diagonals is $101$.

What is the sum of numbers on the diagonals in a $10001 times 10001$ spiral formed in the same way?

#problem-tag(("path traversal", "matrices"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #11
#problem-heading(11, [Factorial])

Find $1000000008!$.

Give the answer modulo $1000000009$.

#problem-tag(("number theory", "modular", "primes"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #12
#problem-heading(12, [Prime Gaps])

A prime gap is the difference between two successive prime numbers. The $n$#super[th] prime gap is the difference between the $(n+1)$#super[th] and the $n$#super[th] prime numbers.

Using *12.txt*
#text(fill: main-dark-color)[#footnote[
  Source: #link("https://erdos.sdslabs.co/storage/files/problems/12.txt")[#text(fill: main-dark-color)[https://erdos.sdslabs.co/storage/files/problems/12.txt]]. This file is also attached to this PDF.
]],
find the largest prime gap for all the primes in the file.

#problem-tag(("number theory", "primes"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #13
#problem-heading(13, [Pandigital Primes])

A number is said to be pandigital if it contains each of the digits from $0$ to $9$ (and whose leading digit must be nonzero). Find the smallest pandigital prime number.

#problem-tag(("number theory", "primes", "pandigital"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #14
#problem-heading(14, [Count Fibonacci])

Find the number of Fibonacci numbers in the file *14.txt*
#text(fill: main-dark-color)[#footnote[
  Source: #link("https://erdos.sdslabs.co/storage/files/problems/14.txt")[#text(fill: main-dark-color)[https://erdos.sdslabs.co/storage/files/problems/14.txt]]. This file is also attached to this PDF.
]].

#problem-tag(("number theory", " fibonacci"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #15
#problem-heading(15, [Blind Fold])

In a game, played between $2$ players there is a circular field and one of the players is blindfolded, who stands in the center of the field. The other player stands at a fixed point on the circumference of the circular field. On the word *GO*, the blind-folded player starts running towards the edge of the field while the second player's aim is to run in and catch him before he moves out of the circle.

If the blind-folded player runs in a random direction with a constant speed $v$ while the second player runs towards the first player with a constant speed $m$ times $v$, what should be the value of $m$ such that the probability that the second player wins is $0.50$?

Report answer as $10^6 m$. If answer is not an integer, round it off to the nearest integer.

#problem-tag(("probabilities", "calculus"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #16
#problem-heading(16, [GCD])

Find the Greatest Common Divisor of $2^10^10 - 1$ and $2^8^8 - 1$.

Since the answer can be very large, enter the answer modulo $1000000007$.

#problem-tag(("number theory", "gcd"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #17
#problem-heading(17, [Magical Matrix])

Let $0 < t < u < v$, where $t$, $u$ and $v$ are integers. Now, there is a matrix $Q$ with three rows and $c$ columns where $c > 1$. The matrix is special in a way that each of its columns contains the three numbers $t$, $u$ and $v$ in some order. All the $3$ numbers must appear in every column. Sum of all numbers in row $1$ is $20$, sum in row $2$ is $10$ and in row $3$, the sum is $9$. The rows are numbered $1, 2, 3$ while columns are numbered $1, 2, dots, c$ and each cell in the matrix is denoted by a pair $(i,j)$, where $i = "row"$ and $j = "column"$. Now the cell $(2,c)$ contains $v$.

Calculate $sum(Q_(i,j) times (i+j))$ for the whole matrix.

#problem-tag(("matrices",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #18
#problem-heading(18, [Game])

Sandeep and Varun are playing a series of games. Each of them contributes Rs $1000$ to start. Varun's chance of winning an individual game is $3$ times that of Sandeep's. They make an agreement that whoever wins $5$ games first can take the entire money with him. After first $3$ games, Varun has won $1$ game and Sandeep has won $2$ games. Now they are bored and do not want to play further.

So they want to divide the money on the basis of the result of first $3$ games.

Let $x$ be the money Varun gets and $y$ be the money Sandeep gets. Find $x^y$. If $x$ and $y$ are not integers, round them to nearest integer. Since answer can be very large, enter the answer modulo $10^9+7$.

#problem-tag(("probabilities", "expectation value"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #19
#problem-heading(19, [Large Exponentiation])

Find the smallest natural number $n$ for which $201413^n mod 2097152 = 1$.

Since $n$ can be very large, enter answer as $n mod 1000000007$.

#problem-tag(("number theory", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #20
#problem-heading(20, [Fives and Sevens])

How many $20$-digit numbers are there which are formed using only the digits $5$ and $7$ and divisible by both $5$ and $7$.

#problem-tag(("number theory", "divisors", "combinatorics"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #21
#problem-heading(21, [Two Squares])

You are given $2$ squares such that sum of their area is $1$. You want to fit these $2$ squares inside a rectangle, without overlap, such that sides of the rectangle are parallel to the sides of the squares. Find the area of smallest such rectangle for which we can always fit the $2$ squares as per the given constraints.

Enter answer as $10000000 times "area"$. In case the answer is not an integer, return the answer rounded off to the nearest integer.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #22
#problem-heading(22, [Totient Function])

Let $X$ be the smallest number having $phi.alt(X)$ equal to $10^8$. Find the number of digits in the factorial of $X$.

$phi.alt$ stands for Euler's Totient Function.

#problem-tag(("number theory", "totient"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #23
#problem-heading(23, [Crack The Safe])

There is a safe with its $10$-digit keypad (as shown below) which is to be cracked.

#text(fill: main-dark-color, weight: "bold")[
```
9 8 7
6 5 4
3 2 1
0
```
]

The restriction of the password for that safe is that every pair of neighboring keys in the password is adjacent on the keypad. Adjacent keys are the ones that share a common edge. You know that the password is $10^9$ digits long. Let total number of possible passwords for this safe be $X$. Since $X$ can be very large, enter $X mod 10^9+7$.

#problem-tag(("implementation",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #24
#problem-heading(24, [Tangles])

We define the _LEVEL_ of a triangle as in the following image:

#align(center)[
  #v(5pt)
  #include "figures/p24_1.typ"
  #v(5pt)
]

Similarly we can define the _LEVEL_ of a hexagram. It's called level $n$ hexagram if it's joined by $12$ triangles, each one is a level $n$ triangle.

#align(center)[
  #v(5pt)
  #include "figures/p24_2.typ"
  #v(5pt)
]

Let us define $X(n)$ as the total number of triangles in a level $n$ hexagram. Then $X(n)$ can be written as a polynomial in terms on $n$.

Let $Y$ be the product of non-zero coefficients of polynomial $X(n)$. Find the factorial of $Y$. Since answer can be very large, enter the answer modulo $10^9+9$.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #25
#problem-heading(25, [Butter’s Prime Floor])

Let there be functions $f(N) = $ no. of primes $x <= N$ and $g(N) = integral_2^N (dif x)/ln(x)$.

Find the value of $floor(g(10^22) - f(10^22))$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #26
#problem-heading(26, [Cartman’s Challenge])

How many polynomials are there of degree $59$ with leading coefficient $1$ which cannot be factored in the field of \
#text(size: 10.5pt)[$4113101149215104800030529537915953170486139623539759933135949994882770404074832568499$]?

If your answer is $x$ then input $x mod 1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #27
#problem-heading(27, [When Kenny Guesses])

Let there be an expression $p(x) = floor(theta^3^n)$. The task is to approximate the value of $theta$ so that it gives prime for values from $n = 1$ to $n = 12$. Give the answer correct upto $14$ decimal places.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #28
#problem-heading(28, [Mrs Cartman’s Desire])

Mrs Cartman likes rotational symmetry (everything which is symmetric about the centre). She had a long cherished desire of playing chess. So Randy Marsh challenges her to solve the following puzzle:

She is asked to arrange the non-attacking rooks on the chessboard according to Mrs Cartman's fantasies, only if possible. She is given chessboards of different sizes ($n times n$) and asked what are the total number of ways of arranging $n$ rooks if $n$ varies from $1$ to $61$. Give the answer modulo $1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #29
#problem-heading(29, [Mr. Garrison Prepares for the Night])

Suppose that Mr Slave wants to buy $n$ sandals $s_1, s_2, s_3, s_4, dots, s_n$ and $n$ dresses $d_1, d_2, d_3, d_4, dots, d_n$, where $s_i$ is a must to have bought before buying $s_(i+1)$ and the same with $d_i$. Let the ordered ways to add these $2n$ things to the girl's clothing be $a(n)$, $n$ varies from $1$ to $60$. So calculate
#[
#show math.equation: it => [#set align(left); #it]
$ inline(
a(1) (((2207 + 987 sqrt(5))/2)^(1/16) + ((24476 - 10946 sqrt(5))/2)^(1/21)) +
a(2) (((24476 + 10946 sqrt(5))/2)^(1/21) + ((5778 - 2584 sqrt(5))/2)^(1/18)) + \
a(3) (((5778 + 2584 sqrt(5))/2)^(1/18) + ((76 - 34 sqrt(5))/2)^(1/9)) +
a(4) (((76 + 34 sqrt(5))/2)^(1/9) + ((47 - 21 sqrt(5))/2)^(1/8)) + dots.c + \
a(60) (((1860498 + 832040 sqrt(5))/2)^(1/30) + ((7881196 - 3524578 sqrt(5))/2)^(1/33))
) $
]
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #30
#problem-heading(30, [Respect My Authoritah!])

The wizard Cartman decides to color a torus with colors. Let the minimum number of colors required to color the $n$-holed torus be $m(n)$. He has a cube of iron. He asks the blacksmith token to cut it (as in a laser plane is passing through the cube) $n$ times. Let the number of different parts of the cube generated be $x(n)$. But he loves to work with prime numbers and so wants $x(n) - k$ and $x(n) + k$ to be prime. Let the smallest $k$ required to accomplish it be $f(n)$. Your task is to find out $sum_(n=2)^15 (m(n) times f(n))^n$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #31
#problem-heading(31, [When Butter Sums It Up])

The positive real numbers $x_0, x_1, x_2, dots, x_m$ satisfy $x_0 = x_m$ and $x_(i-1) + k/x_(i-1) = k x_i + 1/x_i$.

Let $x_0(k,m)$ be its maximum possible value of $x_0$.

If $k = 2$ and $m = 59$, find the summation of such $x_0(k,m)$ when you increase $k$ by $1$ and at the same time decrease $m$ by $2$ till both become equal.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #32
#problem-heading(32, [Japanese Robo Awesome-O])

Professor Chaos controls the robot Awesome-O by pressing the forward or back button. He presses the forward button $n$ times and the back button $n$ times, one at a time. It returns back to him after he presses the buttons $2n$ times.

Let $a(n,i)$ be the number of ways such that the number of moves in the forward direction do not exceed the number of moves in the backward direction and the number of positive moves in the forward direction equals the number of positive moves in backward direction _exactly_ for $i$ times.

Given $a(3,1) = 2$, $a(3,2) = 2$ and $a(3,3) = 1$.

Professor Chaos enters an $n times n$ square board. He can traverse from $(0,0)$ to $(n,n)$ in all possible ways but is restricted to $(1,0)$, $(0,1)$ and $(1,1)$ directions only. Let $b(n)$ be the number of steps _on line_ $x = y$ in _all_ possible paths on which Chaos can travel.

Given $b(2) = 6$.

Let $f(n) = sum_(i=1)^n a(n,i)^2$.

Find $sum_(n=1)^10 f(n) times b(n)$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #33
#problem-heading(33, [Angriff der Nazis])

In the quiet little mountain town of South Park, there is a square wheat farm $A B C D$ (sides parallel to N-S & E-W directions) with $A$ being towards North-West and $A\-B\-C\-D$ being in clockwise order. The town is attacked by Nazi Bombers and $5$ bombs are dropped on the field. Each bomb burns the crop in a radius of $12$ km. First bomb is dropped at a point $O$ such that $A O$ is $34$ km, $B O$ is $40$ km and $C O$ is $26$ km. Other bombs are dropped $10$ km north, $15$ km south, $30$ km east and $27$ km west, respectively of $O$.

Find the area of unburnt crop in the farm rounded upto $3$ decimal places.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #34
#problem-heading(34, [Jewish Factorials])

Find in how many ways can we write $100!$ as a sum of two or more consecutive positive numbers.

Give the answer $mod 1000000009$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #35
#problem-heading(35, [Cartman’s Large Growing Sequence])

Consider the fraction $(A K A)/(L O L) = 0.D B U G D B U G D B U G dots.c$.

This is a normal fraction which can be written as recurring decimals. Here, the same alphabets stand for the same digits. Find the sum $S$ of all such fractions with distinct values of the fraction. $S = p/q$ in its most simplified form. Answer $p times q$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #36
#problem-heading(36, [What’s the Answer Makey?])

Mrs. Broflovski, Kyle's mother asked Mr. Makey, "Kyle was visited by three wizards today. If you multiply their ages, you'll get $2450$, and together their age is $2$ less than your age. Can you tell me their ages?" After deep thought, the teacher said "No, I can't." Then Mrs. Broflovski said, "Of course you can't, but if I tell you that the oldest wizard is older than Kyle, you should be able to work out."

Give the sum of cubes of ages of the three wizards as well as Kyle.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #37
#problem-heading(37, [The Allowance Problem])

Stan gets his allowance on the $15$th day of every month, he gets $1$ dollar if its a Monday, $2$ dollars if it's a Tuesday, $3$ dollars if its a Wednesday and so on ... $7$ dollars if it's a Sunday. Then on a particular $15$th of a random month, find the expected value $e$ of the money Stan will be receiving. Give the integer after ignoring decimal in $e times 1000000$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #38
#problem-heading(38, [When Mr. Garrison Teaches Geometry])

A hexagon with area $A$ and consecutive sides of lengths $8$, $10$, $8$, $10$, $12$ and $12$ is inscribed in a circle. Let $N = 100A$, ignoring the decimal part which may be represented as $x^k y$, where $x, y, k > 1$. Take $Y$ as the average of all possible $y$s in the above expression and find the $Y$#super[th] prime number.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #39
#problem-heading(39, [XOR ’em Up])

Say $f(n) =$ bitwise XOR of all natural numbers up to a positive integer $n$.

Find $f(2^2013) mod 1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #40
#problem-heading(40, [Kyle’s Mysterious Sequences])

For a given integer $n$, Consider the following functions $G(n)$ and $F(n)$
$
G(n) &= sqrt(F(n) - (n-1)^2/n^2 F(n-1) + 1/n^2) \
F(n) &= 8 + (n-2)^2/n^2 F(n-2) \
F(1) &= F(2) = 8
$

Now consider the sequences
$
Y(n) &= sum {x | 0 < x < n, n mod x = 0} \
Z(n) &= Z(n-1) + Y(n) \
Z(0) &= Z(1) = 0
$

Find the value of $Z(1/(G(1000000000)-2))$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #41
#problem-heading(41, [Cartman Loves One Direction])

Find the number of occurrences of the digit $1$ in all natural numbers between $123456789$ to $1234567890$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #42
#problem-heading(42, [Medical Marijuana])

Men in South Park are suffering from vulva cancer and are getting doctor's reference for medical marijuana. The demand for the same has gone up. A transport company handling the shipments has $n$ identical articles which are to be shipped in $k$ identical trucks.

You simply have to find the total number of ways of distribution of those articles in the trucks.

Compute for $n = k = 10000$.

Answer $mod 1000000007$.

#problem-tag(("number theory", "integer partition", "dp"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #43
#problem-heading(43, [Game of Stacks])

Drake and Josh play a game to take a break from programming. In this game, there is a stack of $N$ sheets. Drake starts first and alternating turns, they remove an odd number of sheets in each turn and put them in a basket which is initially empty. After every turn they note down the count of the sheets in the basket and thus construct an increasing sequence of numbers. But then, Drake wonders, how many distinct games of this kind can they play such that the stack gets empty at last and there are exactly $k$ numbers in the sequence i.e. the game ends after k turns. Josh answers this when $N$ and $k$ were small. But now Drake who is also good in Mathematics asks you the same question with slight complications:

$N = 999999$ and $k = 5^p$ can be any number where $(2^(p-1)-1)/p$ is a perfect square, i.e. you have to take the sum for all such $k$!

Give your answer $mod 10^9+7$.

Note that distinct games generate distinct sequences.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #44
#problem-heading(44, [Power Sum])

Let $k = 4128^6 + 6^4128$.

What is $sum_(n=1)^17040384 ("units digit of" k^n + n^k)$?

#problem-tag(("number theory", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #45
#problem-heading(45, [One of Us])

Let $a(n)$ be defined as the number of terms in the sequence $2^1,2^2, dots, 2^n$ which begin with digit $1$.

Find $lim_(n arrow infinity) a(n)/n$.

Give your answer as the largest integer after multiplying by $10^6$.

#problem-tag(("calculus",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #46
#problem-heading(46, [When Butter Recurses])

Let us define a series $M$ such that $M(n-1) + M(n+1) = 5F(n)$ where $F(n)$ is the $n$#super[th] term of the Fibonacci sequence with $F(0) = 0$, $F(1) = 1$ and $M(0) = 2$.

Find the value of $product_(n=1)^9 M(2^n)$.

Give answer $mod 1000000007$.

#problem-tag(("number theory", "fibonacci"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #47
#problem-heading(47, [Stan’s Prime Challenge])

What is the number of primes of the form $4k+3$ between $8589934592$ and $17179869184$?

#problem-tag(("number theory", "primes"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #48
#problem-heading(48, [Mr Garrison Can’t Get a Period])

Consider $F(n)$ as the last $8$ digits of the $n$#super[th] Fibonacci number.

What is the period of $F(n)$?

#problem-tag(("number theory", "fibonacci"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #49
#problem-heading(49, [Hyper Sum of Fibonacci Numbers])

Let $F(n)$ be the $n$-th Fibonacci number. That is, $F(n)$ satisfies \
$F(0) = 0, quad F(1) = 1, quad F(n) = F(n-1) + F(n-2) "(if" n >= 2")"$.

Let $f_k (n)$ be the function such that \
$f_0(n) = F(n), quad f_k (n) = sum_(i = 1)^n f_(k-1) (i) "(if" k >= 1")"$.

You are given that $f_1 (1) = 1$, $f_2 (2) = 3$ and $f_10 (10) = 130965$.

Find $f_(10^8)(10^8) mod 1000000007$.

#problem-tag(("number theory", "fibonacci", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #50
#problem-heading(50, [Divisibility])

Find the base of a counting system, like decimal($10$), binary($2$) etc., less than $1000000$ in which maximum numbers follow the following property:

"If $x$ is divisible by $y$, sum of digits in $x$ will also be divisible by $y$."

In case there is more than 1 possible answer, then concatenate the possible answers in ascending order without any spaces in between. For example if the answers are $3$, $21$ and $54$ then your answer should be $32154$.

#problem-tag(("number theory", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #51
#problem-heading(51, [Probability of Squares])

Two numbers are chosen at random from $1$ to $10^16$. Let $p$ be the probability that their sum is a perfect square. Find integral part of $10^16 p$.

#problem-tag(("probabilities",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #52
#problem-heading(52, [Modular Roots])

Let $y = x * x$. Where $*$ is multiply modulo $N = 4776913109852041418248056622882488319$.

You have to find the smallest positive $x$ for $y = 739397$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #53
#problem-heading(53, [Harry and his Magical Boxes])

There are $7$ magical boxes each containing a label depicting a number. The labels of the boxes are given as $5,2,7,8,7,4,6$. Harry Potter goes to each jar once and shouts a spell. When Harry shouts a spell near a box with label $x$ he gets a random integer $n$ from the box such that, $1 <= n <= x$. Thus he gets a collection of seven numbers by shouting once near each box. One such collection is $4,2,1,2,6,4,6$. Two collections are same if one is a permutation of other. So $1,2,1,1,1,1,6$ is same as $2,1,1,1,1,1,6$. Now Harry expects you to tell the total number of different collections he can get by repeatedly performing this act.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #54
#problem-heading(54, [Find Tuples])

Let $S$ denote the set of all $6$-tuples $(X_1,X_2,X_3,X_4,X_5,X_6)$ of positive integers such that \
$X_1^2 + X_2^2 + X_3^2 + X_4^2 + X_5^2 = X_6^2$.

Consider the set $T = {X_1 X_2 X_3 X_4 X_5 X_6: (X_1,X_2,X_3,X_4,X_5,X_6) in S}$.

Find the *HCF*
#text(fill: main-dark-color)[#footnote[
  Highest Common Factor.
]]
of all members of $T$.

#problem-tag(("number theory", "gcd"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #55
#problem-heading(55, [Double Devils])

All numbers of the form `6_6_6_0_0_6_6_6_0_0`, where each `_` can be any single digit, are called double devil numbers (for example, $6160630507696864040$ is a double devil number).

Let $x$ be the unique number whose square is a double devil number. Find $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #56
#problem-heading(56, [Playing with Subgraphs])

Find the number of distinct sub-graphs of a complete graph of $n$ labelled vertices, such that the sub-graph is a spanning tree connecting all the vertices and the degree of no vertex is more than $3$.

Given $n$ equals $314159$, give your answer $mod 1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #57
#problem-heading(57, [Smallest Perimeter])

The sides of a triangle have integer lengths $k$, $m$ and $n$.

Assume that $k > m > n$ and ${3^k/10^4} = {3^m/10^4} = {3^n/10^4}$.

where ${x}$ denotes the fractional part of a number.

Determine the minimum value of the perimeter of the triangle.

#problem-tag(("number theory", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #58
#problem-heading(58, [Circle of Death])

Let $n$ be $10$ times the largest integer which cannot be represented as the sum of five non-zero perfect squares. Now, consider yourself standing in a circle of $n$ people (positioned 1 to $n$ around the circle), where every $k$#super[th] ($k = 10$) person is killed from the remaining ones standing except the last one. For example, if $n = 4$ and $k = 2$, then the order in which people will be killed is $2, 4, 3$. Hence person at position $1$ will be the survivor.

Let $p$ be the position you will choose so as to survive this game (be the last to be killed). Also, for $n = 40$, let $q$ be the smallest value of $k$ ($>1$) for which people are killed in the same order as they are standing (i.e. $1, 2, 3, dots$).

What is $(p times q) mod 1000000009$?

#problem-tag(("number theory", "dp"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #59
#problem-heading(59, [Ones and Zeros])

Let $S = 2^a + 2^b + 2^c + 2^d + 2^e$ where $a,b,c,d,e$ are distinct whole numbers.

Let $S_n$ be the $n$#super[th] number such that for all $i < n$, $S_i < S_n$ and for $i > n$, $S_i > S_n$.

Find $S_2131646 mod 10^9+7$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #60
#problem-heading(60, [Rolling Dice])

Alex has a $7$-sided regular dice. Every side has a distinct value between $1$ to $7$, each with equal probability of coming up in a roll. Alex rolls the dice once. Let the value obtained be equal to $S_1$. Now he rolls the dice $S_1$ number of times. Let the sum of values obtained in these $S_1$ rolls be equal to $S_2$. Now he rolls the dice $S_2$ number of times. Let the sum of the values obtained in these $S_2$ dice rolls be equal to $S_3$. This process is continued for an infinite number of times.

Find the expected value of $S_1182014$. If the answer is $x$, give your answer as $floor(x) mod 10^9+7$, where $floor(x)$ denotes the greatest integer less than or equal to $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #61
#problem-heading(61, [Derangements])

There are $n$ people and $n$ houses, such that every person owns exactly one distinct house. Out of these $n$ people, $k$ people are special ($k <= n$). You have to send every person to exactly one house such that no house has more than one person, and no special person goes to his own house. Let $S(n,k)$ be the number of ways of doing this. Find the value of $S(654321,123456)$. Give your answer $mod 10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #62
#problem-heading(62, [Magic in Boxland])

A magician lives in a mysterious Boxland that comprises of eight cities and all of them contain $6$ magic wands. Each wand has been colored with one of $n$ colors, such that no two wands in the same cities are of same color, and no two colors occur together in more than one city. The smallest number $n$ that satisfies this condition is used by the magician to create a ball-box challenge that contains a 2-D array of size $n times n$ of such boxes placed adjacent to each other satisfying following conditions:

- Every box that does not contain a ball shares a side with one which does.
- Given any pair of boxes that contain balls, there is a sequence of boxes containing balls, starting and ending with the given boxes, such that every two consecutive boxes of the sequence share a side.

Find the smallest number of balls that must be there inside those boxes multiplied by $3$.

(i.e. $"Answer" = ["Total number of balls inside the array of boxes"] times 3$)

#problem-tag(("combinatorics", "graphs", "greedy"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #63
#problem-heading(63, [Seat Yourself])

Let $x$ be the number of students seated around a round table. Then, let $k$ be the number of ways in which they change their seats resulting in an arrangement in which the students are either on the same seat or one of the seats adjacent to the original one.

Given that $x$ belongs to the set $(123345857,343139869)$, both not included, find the possible number of values of $k$ which are congruent to $111 mod 5$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #64
#problem-heading(64, [Polynomials])

Consider a polynomial of degree $3m$ such that \
$P(0) = P(3) = P(6) = dots.c = P(3m) = 2$ \
$P(1) = P(4) = P(7) = dots.c = P(3m-2) = 1$ \
$P(2) = P(5) = P(8) = dots.c = P(3m-1) = 0$ \
and $P(3m+1) = 6562$.

Find the value of $m$?
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #65
#problem-heading(65, [Identical Boxes])

You are given $2500$ identical boxes and $5000$ identical balls. Find the number of ways in which balls can be distributed such that each box contains at least one ball. Assume the capacity of each box to be infinite.

Give your answer $mod 10^9+7$.

*Note:* All permutations of boxes are counted as a single way as the boxes are identical.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #66
#problem-heading(66, [Reaching Point])

You have to reach point $(x_2,y_2)$ from $(x_1,y_1)$ by making jumps from one point to another but you have some limitations. You can only move in the direction of the line connecting these two points constantly aiming towards the destination point. Also from one point you can jump to only the next most nearest integral point on the line. For example, $(3,3)$ to $(6,6)$ then path has to be $(3,3) arrow (4,4) arrow (5,5) arrow (6,6)$ and this required $3$ jumps. But now the problem is the a jump comes at a heavy cost.

If the total number of jumps made to reach $(x_2,y_2)$ starting from $(x_1,y_1)$ is $n$, then the total cost for the journey is said to be the $("number of trailing zeroes in" n!)^n$.

Find the total cost for the journey from $(-10101099, 127898755387)$ to \
$(1137947000140424, 1607032990556) mod 10^9+7$.

#problem-tag(("number theory", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #67
#problem-heading(67, [Finding Limits])

$
S_0 &= 3 \
S_1 &= 33 \
S_i &= S_0^(S_(i-1)) "for" i > 1
$
Find $S_x mod 1073741824$ where $x$ tends to infinity.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #68
#problem-heading(68, [A Mixture of Ryski’s Problems])

Ryski was asked compute the sum of the series
$
sum_(k=0)^infinity 1/((4k+1)(4k+2)(4k+3)(4k+4)).
$
Let this summation be $p$.

Ryski also has $2n$ different pens ($n in N, n >= 2$). Each day, he takes $n$ pens with him to school. After some days the following condition was fulfilled: every two pens were together on at least one day. Let the minimum number of days needed for this to happen be $q$.

Give the answer as $[p times q times 10^20]$, where $[x]$ denotes the greatest integer less than or equal to x.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #69
#problem-heading(69, [Trio Interchange])

There is a six digit number, which when multiplied with $6$, yields another six digit number, with first three digits of original number as the last three digits of the new number, in the same order, and the last three digits of the original number as the first three digits of the new number, in the same order.

Let $S$ be the sum of the digits of that number. Find $S! mod 1000000007$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #70
#problem-heading(70, [Fibonacci Circle])

#align(center)[
  #v(5pt)
  #include "figures/p70.typ"
  #v(5pt)
]

All circles in the picture above are tangent to each other. If radius $R_1 = 2^12$, $R_2 = 2^11$ and $R_3 = 2^10$, calculate $r$, radius of the inner yellow circle. Let $x = floor(r) times 10^14$.

We now define a new sequence as \
$F(n) = F(n-1) + F(n-2) + (n-1) quad forall n >= 2$ \
with $F(0) = 0$ and $F(1) = 1$.


Calculate sum $(F(0) + F(1) + F(2) + dots.c + F(x-1) + F(x))$ $mod 1000000007$.

#problem-tag(("number theory", "geometry"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #71
#problem-heading(71, [Random Selector])

A random number selector can only select one of the nine integers $1, 2, dots, 9$, and it makes these selections with equal probability. Let $p$ be the probability that after $n$ selections ($n > 1$), the product of the $n$ numbers selected will be divisible by $10$. If $n = 5$, find $59049 p$.

#problem-tag(("probabilities",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #72
#problem-heading(72, [GitHub])

You are given six characters `G`, `I`, `T`, `H`, `U`, `B` to make a string of length $N$. However there are some limitations:

- `I` can not come directly after `G`.
- `H` can not come directly after `G` or `B`.
- `T` can not come directly after `T` or `U`.
- The string should be a palindrome.

How many ways are there to form a string of length $N = 7162534$?

Submit the answer modulo $1000000007$.

#problem-tag(("dp",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #73
#problem-heading(73, [Brute])

$
x^6 + x^3 + x^3 y + y &= 147^157 \
x^3 + x^3 y + y^2 + y + z^9 &= 157^147
$
Let $n$ be the number of solutions for the above system. i.e. if $x = a, y = b, z = c$ is a solution then the number of solutions is incremented by $1$. Give your answer as first six digits of $(n + upright(e))^134$.
#text(fill: main-dark-color)[#footnote[
  The constant $upright(e)$ is base of the natural logarithm.
]]

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #74
#problem-heading(74, [Mod It])

Let $n$ be the largest positive integer, such that $n!$ can be expressed as the product of $(n - 2014^2015)$ consecutive integers.

Let $x$ be equal to $n mod 38980715857$. Find $x mod 8037517$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #75
#problem-heading(75, [No Primes])

Find sum of all $5$-digit natural numbers such that they don't contain any subsequence forming prime number. $2$, $3$, $4$ or even $5$-digit prime numbers are not allowed.

#problem-tag(("brute force",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #76
#problem-heading(76, [Erdős])

Given that $e, r, d, o, s$ are real numbers such that \
$e + r + d + o + s = 8$ \
$e^2 + r^2 + d^2+ o^2 + s^2 = 16$

Let $M$ be the maximum value of $s$. Find the number of factors of $30 M$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #77
#problem-heading(77, [Prime Fangs])

In mathematics, a vampire number is a composite natural number $v$, with an even number of digits $n$, that can be factored into two integers $x$ and $y$ each with $n/2$ digits and not both with trailing zeroes, where $v$ contains precisely all the digits from $x$ and from $y$, in any order, counting multiplicity. $x$ and $y$ are called the fangs, e.g. $1260 = 21 times 60$.

A prime vampire number is a vampire number whose fangs are its prime factors. $117067 = 167 times 701$ is the first prime vampire number. Calculate the $27$th prime vampire number.

#problem-tag(("brute force",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #78
#problem-heading(78, [Golden Path])

Let $x$ be a number such that for $n > x$, the $n$th Fibonacci number has at least one prime divisor that does not divide any $k$th Fibonacci number for all $k < n$. Find the sum of all primes $p < 10^x$ such that for some integer $n$, the expression $n^2 - p times n$ is a prime power.

*Note:* A prime power is a number of the form $q^m$ where $q$ is a prime and $m$ is a positive integer.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #79
#problem-heading(79, [Strings]) <p79>

Laertes and Roxane play a game together by first drawing a string of `L`s and `R`s into the sand, and then taking turns removing any one of their respective letters (`L` for Laertes and `R` for Roxane) along with the substring to its right. The first player unable to make a move loses the game.

Consider the game played with the string `L`. If Laertes goes first, he removes the only `L` and passes to Roxane, who immediately loses, having no valid move. If Roxane goes first, she immediately loses again. So we see that Laertes always has at least one move's worth of an advantage over Roxane. We shall abbreviate this by saying the value of the string `L` is $+1$, from Laertes' point of view. Similarly, the string `R` has value $-1$. A game played with the two separate strings, `L` and `R` (denoted by `L` $+$ `R`) can be shown to have the property that the first player to play loses the game. We shall call the value of such a string $0$, and denote this as `L` $+$ `R` $=0$.

Convince yourselves that `LR` $= 0.5$ (try playing the game with `LR` $+$ `LR` $+$ `R`). What is the value of `LRL`?

#problem-tag(("strings",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #80
#problem-heading(80, [Piles of Stones])

Laertes and Roxane play another game now as they are tired of drawing in the sand. Instead, they play a game with piles of stones that works as follows:

At the beginning of each turn, the player first chooses one of the piles and then removes some number of stones from it (the whole pile may be removed as well, but at least one stone needs to be removed). The turn then passes to the next player. The player that removes the last stone(s) wins.

Laertes always goes first.

Convince yourself that in a game with three piles of $3$, $4$, and $5$ stones respectively, Laertes will always win if he plays optimally, no matter what Roxane does. Let's say that games with this property have value $1$.

Consider $6561$ separate games, with four piles, and the number of stones per pile varies between $1$ and $9$. How many of these games have value $1$?

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #81
#problem-heading(81, [Hide and Seek]) <p81>

Laertes and Roxane go to the Senate to play a game of Hide-and-Seek. There are $100$ rooms in the Senate, and Roxane picks one of them and hides there till the game ends.

Laertes, at the beginning of every turn, picks one room and searches in it. Since he is human and thus fallible, he only has a $60%$ chance of finding Roxane if she is in fact hiding in the room. If he fails to find her in the room, Roxane's score increases by _one_, and the next turn starts, whereupon Laertes must pick another room to check (he can also check the same room again). Remember, Roxane remains in the room she initially chose.

Given that Laertes and Roxane play with perfect strategies, what is the expected value of Roxane's score at the end of the game? The answer must be correct to $1$ place of decimal.

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #82
#problem-heading(82, [Pebble Trouble])

Laertes and Roxane play a game with some black and white pebbles at the beach. They dig twelve small pits in the sand, making a dodecagon. Laertes will place two stones, one black and one white into two adjacent pits in such a way that the white stone is to the left of the black. Laertes cannot then place any stones in the pits next to these. Similarly, Roxane places her stones so that the white one is to the right of the black one. She too cannot use the adjacent pits ever again.

The first person who is unable to place their pair of stones loses. If Laertes goes first, convince yourselves that Roxane can always win with perfect play.

Consider $1000$ games where the number of pits in the sand varies from $12$ to $1011$. How many of these games can Roxane always win, if Laertes goes first each time?

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #83
#problem-heading(83, [Fresh from the Oven])

Laertes and Roxane have before them a cake, freshly baked by their mother. It has been lightly scored so as to allow it, when cut, to be divided into $M times N$ pieces. The two kids decide to play a game to cut the cake. Laertes will cut any rectangle into two pieces along the vertical lines, and Roxane along the horizontal lines. The game ends when the first who is unable to make a move loses.

Laertes always goes first.

Consider $256$ games with cakes varying in size from $1 times 1$ to $16 times 16$. How many of these games can Laertes always win, if he plays with perfect strategy?

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #84
#problem-heading(84, [The Gobbler]) <p84>

Laertes and Roxane are tired of cutting cakes. They want to eat some now, and they do so by playing a game as follows:

On his turn, Laertes must choose any square on the grid and eat it, along with the square immediately below it. On her turn, Roxane must choose any square on the grid and eat it, along with the square to its immediate right. The first person who cannot eat two pieces as described above on any turn loses. Let us describe the squares using the conventional matrix coordinate scheme, with the top-left square being $(0,0)$ and the positive $x$ and $y$ axes extend to the right and down respectively. In cases where taking two different squares results in the same cake upto symmetry, then the square that is closest to the origin is preferred. If the square is still ambiguous, then the one that is closer to the $x$ axis is preferred.

Consider the $2 times 1$ cake. It is obvious that no matter who goes first, Laertes can always win by eating the square at $(0,0)$ (and so consequently $(1,0)$).

The $2 times 2$ cake is different though. Convince yourself that the first person to start will win, no matter who it is.

What are the optimal squares chosen by both players on a $4 times 2$ cake? Assume that Laertes goes first. If you think the sequence is $(a,b), (c,d), (e,f)$, enter $bold(a b c d e f)$.

#problem-tag(("games",))
//------------------------------------------------------------------------------


// Problem #85
#problem-heading(85, [The Stymphalean Birds])

#text(size: 14pt)[*The story*]

The Stymphalean birds were monsters. They were man-eating birds with beaks of bronze and sharp metallic feathers they could launch at their victims. They had destroyed the local crops and fruit trees before Hercules was tasked with killing them. Athena gave Hercules a rattle that he could use to scare the birds off so he could then shoot them down with his bow.

#text(size: 14pt)[*The game*]

It turns out that shaking the rattle in a specific way would induce absolute terror in the birds. Let `L` represent shaking the rattle to the left, and `R` to the right. Then, using the game introduced in #link(<p79>)[#text(fill: main-dark-color)[*Problem 79*]], enter the string that has the value $4.740234375$.

#problem-tag(("strings",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #86
#problem-heading(86, [The Augean Stables])

#text(size: 14pt)[*The story*]

Hercules' task this time is to clean the Augean stables. They are in a right old mess. Hercules eventually hits upon the idea of diverting a nearby river into the stables in order to clean it. This gets rid of the muck but sadly a lot of vegetation has overgrown on the grounds that Hercules will have to weed out the hard way. In order to pass his time, he invites the local farmhand to play a game with him, using the weeds.

#text(size: 14pt)[*The game*]

Each weed is divided into a certain number of parts, and players take turns cutting off a part. Any section of the plant that is not connected to the ground after a cut is also removed. Play continues until the last person to make a cut wins.

Hercules always goes first.

Each weed is represented as a graph, with edges representing pieces of the plant that can be cut off in a turn. The node labelled $0$ is the one that is connected to the ground.

Now, *here*
#text(fill: main-dark-color)[#footnote[
  Source: #link("https://erdos.sdslabs.co/storage/files/problems/86.txt")[#text(fill: main-dark-color)[https://erdos.sdslabs.co/storage/files/problems/86.txt]]. This file is also attached to this PDF.
]]
are the adjacency matrices of $7$ such weeds. Consider the $127$ games that can be played with some combination of these weeds. For example, Hercules can always win the game played on just weed $1$, but he will always lose the game played with both weeds $1$ and $3$. Find all the combinations of weeds such that Hercules will always lose the game played with them. Enter your input in the following fashion:

The combination $(1,3)$ is considered as the binary number $1010000$ (the first and third places are set to $1$), and the combination $(1,6,7)$ is $1000011$. Convert your combinations into binary numbers and enter their sum in decimal.

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #87
#problem-heading(87, [The Flock of Geryon])

#text(size: 14pt)[*The story*]

Hercules just got another task. This time he has to steal Geryon's golden cow from the far-off Mediterranean island of Erytheia. Hercules knows that Geryon has a large flock of cows among which there is only one golden cow, which Hercules needs to retrieve.

Hercules is tired of fighting and challenges Geryon to a bloodless battle instead. The game Hercules suggests is to be played with the remaining cows.

#text(size: 14pt)[*The game*]

Each player chooses to eliminate $13$ or $50$ or $63$ cows from the flock at each turn. The player who eliminates the last set of cows gets the golden cow.

Geryon is not very good at games, so he does not tell Hercules how many cows are there in his flock, lest he thinks of a winning strategy, however in his foolishness he lets slip that the number lies anywhere between $0$ to $205530$. He also forces Hercules to decide who shall begin the game.

Hercules now wants to know what the odds are of him losing the game if he goes first and plays perfectly, given that the number of cows lies anywhere between $0$ and $205530$.

Can you help Hercules by finding the probability? The answer must be correct to $4$ decimal places.

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #88
#problem-heading(88, [The Flock of Geryon])

#text(size: 14pt)[*The story*]

Animals seem to wreak a lot of havoc in greek myths. The one under consideration is a bull that used to uproot crops and bring down orchard walls in Crete. Hercules is sent to kill it as usual.

#text(size: 14pt)[*The game*]

The bull is smart however, and it senses that Hercules is after it. It engages in an impromptu game of hide-and-seek (following the same rules as those in #link(<p81>)[#text(fill: main-dark-color)[*Problem 81*]]).

Alas, it only has two choices of hiding places. In the first location, Hercules has a $40%$ chance to find the bull, if in fact the bull is there. In the second location, Hercules has a $100%$ chance to find the bull if it is there. The second location is thus a terrible hiding place. But, the bull bets on Hercules dismissing such a location.

If Hercules and the bull play with perfect strategies, what is the expected number of turns it will take for Hercules to capture the bull? The answer is a rational number in lowest terms $p/q$, and you are to enter $bold(p\,q)$.

#problem-tag(("probabilities",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #89
#problem-heading(89, [The Horses of Diomedes])

#text(size: 14pt)[*The game*]

Hercules and Abderus play a game with a cake (as described in #link(<p84>)[#text(fill: main-dark-color)[*Problem 84*]]) of the preliminaries). Hercules eats squares horizontally and Abderus vertically. We define the value of a game as:

- $+1$ if Hercules can win no matter who starts,
- $-1$ if Abderus can win no matter who starts,
- $+upright(i)$ if the first player can always win, and
- $-upright(i)$ if the second player can always win.

Consider $30$ games, played with cakes of sizes $M times N$, with $1 <= M <= 3$, and $1 <= N <= 10$.

What is the sum of the values of these games? If your answer is $a + upright(i) thin b$, enter $bold(a\,b)$.

#text(size: 14pt)[*The story*]

Oh, why is Abderus important? He was eaten alive by the crazed horses of Diomedes, and in revenge Hercules fed Diomedes to his own horses. This seemed to have calmed the crazed horses and they lived happily ever after in a meadow somewhere. Greek myths can be very weird sometimes.

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #90
#problem-heading(90, [Capture of Cerberus])

#text(size: 14pt)[*The story*]

Hercules now has to bring back Cerberus, the three headed dog from the underworld. Cerberus being an intelligent beast, lures Hercules to a game of gates. If Hercules wins, he will come back with him, otherwise, Hercules has to spend the rest of his days in the underworld.

#text(size: 14pt)[*The game*]

Rules:

- There are a total of $N = 18$ gates, some of which are open and some which are closed.
- At each turn, the player has to open a closed gate first, and choose to close/open upto $4$ gates to the left of the first chosen gate. (Here total number of changed gates $c = 5$). He can either open a closed gate or close an open one.

The player to open the last closed gate wins the game.

#text(size: 14pt)[*The trial match*]

Hercules requests for a trial match and Cerberus agrees to play a toned down version of the above game, with $N = 5$ and $c = 3$. He sets up the initial configuration as this:

`CCCCO` (`C` = closed, `O` = open)

Cerberus urges Hercules to go first. Now, no matter what Hercules does, it is easy to see that Cerberus will always be the one to open the last closed gate. Such a position will always cause Hercules to lose, that is, if he goes first.

Hercules is wary of losing, and wants to make a list of all initial positions where he will lose if he goes first. How many such configurations are there?

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #91
#problem-heading(91, [The Girdle of Hippolyta])

#text(size: 14pt)[*The story*]

Ares had once gifted Hippolyta, the queen of the amazons, a girdle --- a belt. It is this belt that Hercules is now tasked to steal. But, when word of his task spread to the queen herself, she was very impressed with Hercules' bravery and offered to give him the belt if he won a game of skill against her.

#text(size: 14pt)[*The game*]

Let $s_i = a_j = 1/((2-i/9)j-1)$ be a series for each $i, 0 <= i <= 7$.

And consider $I_n = integral_0^infinity (product_(j=1)^n sin(a_j x)/(a_j x)) dif x$ for each $s_i$.

As an example, let's play the game with $i = 0$. Here, $I_1 = I_2 = dots.c = I_7$, but $I_7 eq.not I_8$. Each $I_n$ is of the form $p/q upright(pi)$. We say the value of $s_0$ is $8 + p + q$ ($8$ being the first integral to break the pattern).

Play the game with all the indicated values of $i$. Add together the values of each $s_i$ and submit this sum modulo $1000000007$ as the answer.

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #92
#problem-heading(92, [The Apples of the Hesperides])

#text(size: 14pt)[*The story*]

Hercules has to steal a hundred apples from the Garden of Hesperides. The apple trees are located at a radius of $sqrt(200)$ from the centre $(0,0)$, abundantly distributed (read: infinite amounts) along the circumference.

There is a pole at the centre behind which Hercules is hiding from Ladon, the Dragon lord guarding these trees. Hercules can escape from Ladon only if he is hidden from Ladon's line of sight behind the central pole. Ladon is powerful because he can see in all directions. If Ladon sees Hercules at any point of time, he will immediately fly and kill Hercules.

#text(size: 14pt)[*Cutting to the chase*]

Ladon is travelling to the nearby city of Egypt along a straight line starting from $(0,-80)$, parallel to the $x$-axis, at a speed of $10$ m/s starting at time $t = 0$, nevertheless his all-seeing eye does not tire out from the constant vigilance. Hercules is hiding behind the pole at $(0,0)$ at $t = 0$. Hercules strategizes to pick up the apples located at the circumference, all the while remaining hidden from Ladon's sight, and place them at the centre. But, he can carry only a maximum of $10$ apples at a time. Clearly he needs to make $10$ such trips. He has a speed of $9$ m/s.

What is the shortest time Hercules will need to complete his task, (without getting killed midway, obviously)? If x seconds is your answer, enter $floor(x)$.

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #93
#problem-heading(93, [The Ceryneian Hind])

#text(size: 14pt)[*The story*]

Hercules' next task is to catch the Ceryneian Hind, which is as fast as the wind. Artemis considers this a sacred animal and will not give it up to Hercules easily. In order to capture it, he must play a game against Artemis. Artemis has carefully assembled a stick figure of her favourite animal for the game.

#text(size: 14pt)[*The game*]

The figure is made out of sticks which can be either yellow, orange, brown or green. The black line in the figure represents the ground.

- At each turn, a player plucks out a stick from the figure. Any "hanging" sticks, i.e. those that have no connection to the ground, either directly, or through other sticks, will fall down and are immediately discarded.
- Hercules can only pluck the orange sticks, and Artemis, the brown ones. Both of them can pluck the yellow and green sticks. The one to pluck the last stick wins the game, and gets the Hind.

Hercules also spots a number of other interesting creatures and gambles against Artemis to capture them all, playing the same game for each of them.

For each game,
- *`A`* represents Hercules losing no matter who starts, if Artemis plays intelligently.
- *`H`* represents Hercules wins no matter who starts, if he plays intelligently.
- *`F`* represents the situation where the first player always loses.
- *`S`* represents the situation where the second player always loses.

For the $5$ figures given below, enter the string of answers in the order of the labels of these figures.

#align(center)[
  #v(5pt)
  #include "figures/p93_1.typ"
  #v(20pt)
  #include "figures/p93_2.typ"
  #v(20pt)
  #include "figures/p93_3.typ"
  #v(20pt)
  #include "figures/p93_4.typ"
  #v(20pt)
  #include "figures/p93_5.typ"
  #v(5pt)
]

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #94
#problem-heading(94, [Vacation])

Ram and Shyam took a vacation at their grandparents' house. During the vacation, they did all activities together. They either played tennis in the evening or practiced Yoga in the morning, ensuring that they did not undertake both the activities on any single day. There were some days when they did nothing. Out of the days that they stayed at their grandparents' house, they were involved in one of the two activities on $22$ days. However, their grandmother while sending an end of vacation report to their parents stated that they did not do anything on $24$ mornings and they did nothing on $12$ evenings. How long was their vacation?

Give your answer in days.

#problem-tag(("implementation",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #95
#problem-heading(95, [Strange Currency])

In the strange country Oz, the only official coins are $7$-cent coins and $13$-cent coins. What is the largest amount that cannot be paid with these coins if a shop has no change at all?

#problem-tag(("modular", "brute force"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #96
#problem-heading(96, [The Game of Marbles])

A box contains two marbles. One black and the other white. In each turn the player takes a marble out at random and notes its colour. After each turn, the marble is replaced in the bag and an extra black marble is added. The player pays Rs. $1$ to play and wins if he/she has taken more white marbles than black marbles at the end.

If the game is played for three turns, the probability of the player winning is exactly $7/24$, and so the maximum prize fund that should be allocated for winning in this game should be Rs. $3$ before the organizer would expect to incur a loss. The maximum prize is a whole number and includes the Rs. $1$ to be given by the player, so the player gets Rs. $2$. Find the maximum prize fund to be allocated to a game with sixteen turns.

#problem-tag(("probability",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #97
#problem-heading(97, [Triangles])

Let us take two triangles $triangle.stroked.t #h(0pt) A B C$ and $triangle.stroked.t #h(0pt) P Q R$ as shown in figure below.

#align(center)[
  #v(5pt)
  #include "figures/p97.typ"
  #v(5pt)
]

In $triangle.stroked.t #h(0pt) A B C$, $angle A D B = angle B D C = angle C D A = 120degree$. $u = 999, v = 899, w = 1099$.

$D$ is the internal vertex of $triangle.stroked.t #h(0pt) A B C$.

Find the value of $x$.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #98
#problem-heading(98, [Series Dilemma])

If $X_n$ and $Y_n$ denote two sequences of integers defined as follows:

$X_0 = 1$ \
$X_1 = 1$ \
$X_(n+1) = X_n + 2 X_(n-1)$

$Y_0 = 1$ \
$Y_1 = 7$ \
$Y_(n+1) = 2 Y_n + 3 Y_(n-1)$

$n = 1, 2, 3, dots$

Thus, the first few terms of the sequences are:

$X : 1,1,3,5,11,21,dots$ \
$Y : 1,7,17,55,161,487,dots$

Let the largest number that occurs in both the sequences be $m$.

Give the answer as $m times 123^(m+1)$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #99
#problem-heading(99, [Divisibility Test])

Sum of digits of a $5$-digit number is $41$. Let the probability that such a number is divisible by $11$ be $p/q$, where $gcd(p,q) = 1$.

Find $q - p$.

#problem-tag(("number theory", "probability"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #100
#problem-heading(100, [Quadratic Chaos])

Let $m$ be an integer such that $1 <= m <= 1000$. Find the probability $p$ of selecting at random an integer $m$ such that the quadratic equation $6 x^2 - 5 m x + m^2 = 0$ has at least one integer solution.

Give answer as $1000 p$.

#problem-tag(("probability",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #101
#problem-heading(101, [Fibonacci Twist])

Find $67$th term of the sequence whose initial terms are as follows:

#par(leading: 10pt)[
- $0$th term: power of $3$ in $binom(66,24)$ \
- $1$st term: power of $2$ in $binom(73,27)$ \
- $2$nd term: power of $3$ in $binom(3280,1367)$ \
- $3$rd term: power of $2$ in $binom(3712,2005)$ \
- $4$th term: power of $2$ in $binom(14348,7519)$ \
- $5$th term: $16$ \
- $6$th term: $19$
]

#problem-tag(("implementation",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #102
#problem-heading(102, [Chinese Whispers])

Consider a group of $5011$ friends and a particular person in the group (say L). L has a message to spread around. Define a "whisper" as an instance where a friend passes the message to another friend. Considering all friends to be distinct, L is interested in finding out the number of sequences of $999983$ "whispers" after which he will eventually get the message back. Calculate the answer modulo $1000000007$.

*Note:*

After a whisper, if A passed the message to B, then only B can whisper to others since only he has the message. Others can't.

During the sequence of whispers, there can be a point in time where A would get the message after less than $999983$ whispers. In that case, he again should pass the message to others in order to complete a total of $999983$ whispers.

#problem-tag(("dp",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #103
#problem-heading(103, [Sevens and Threes])

Find the sum of all $7$ digit numbers which satisfy the following conditions:

+ It contains only digits $3$ and $7$.
+ The number is divisible by $7$.
+ Last digit of number is $3$.

#problem-tag(("number theory", "modular"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #104
#problem-heading(104, [Dr. Antlove])

Dr. Antlove loves ants (obviously) and he cannot stand anything happening to his ants. Dr. Rage wants to play with him a little. So he challenges him with a trick puzzle. He gives Dr. Antlove a regular polygon with $628318531$ sides with Queen ant in the middle and gives him a triangular (ant-trap) net that can be tied at any three random vertices of the polygon (any three vertices can be chosen as the vertices of the net at random). But Dr. Antlove is busy with a seminar this weekend. So he orders you to get the ant for him. Before moving on you believe it would be better to calculate the probability of your success. All choices of vertices being equally likely, let the probability that you would be able to catch the ant inside that net be $p$. (All vertices are distinct.)

Give the answer $= p times 2 times (2 times floor(upright(pi) times 10^8) - 1)$.

#problem-tag(("geometry", "probability"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #105
#problem-heading(105, [Vikas and Pizzas])

Vikas has currently ordered a pizza from Domino's. Due to many orders, Domino's did not cut the pizza into slices. He was wondering how many maximum pieces can be made of a pizza with $n$ cuts keeping the pizza fixed at its position.

Find the answer when $n = 65536$.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #106
#problem-heading(106, [Back Propagate])

Let the initial terms of a sequence be ${1,1,1,1,2,11,84,676,5477,44407}$.

Propagate this sequence backwards to produce $20$ new terms. Find the sum of these $20$ terms (written in simplest fraction form as $p\/q$). What is the value of $(p times q) mod med (10^9+7)$?

#problem-tag(("dp",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #107
#problem-heading(107, [Negated Twins])

Let $f(x)$ be a polynomial with integer coefficients such that $f(2) = f(0) = f(1) = f(5) = n$ and $f(-2) = f(-1) = f(-5) = -n$ for some positive integer $n$.

Find the smallest possible value of $n$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #108
#problem-heading(108, [Divisor Game])

Consider a two player game. There are $N$ balls marked 1 to $N$. A move consists of removing a ball $n$ and all the remaining balls which are divisors of $n$ (including $1$). The players alternate the moves. The one who takes the last ball wins the game. Let us assume that both players play optimally. Find the probability that the player who starts the game wins it, given that $N$ will be a random integer between $1$ and $infinity$. Let this probability be $x$. Give your answer as $1000000000000 x$.

#problem-tag(("games",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #109
#problem-heading(109, [Extension Conundrum])

We have a triangle with side lengths $a = 345678$, $b = 456784$ and $c = 567890$ with vertices named $A$, $B$ and $C$, and $I$ denote the incentre of circle. Line segment $B I$ is extended to meet opposite side of triangle i.e. $A C$ at $K$. Find length of line segment $I K$.

*Note:* $a$ is side opposite to vertex $A$, $b$ is opposite to vertex $B$ and $c$ is opposite to vertex $C$.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #110
#problem-heading(110, [L’s Birthday])

L was celebrating his birthday. His mom made a triangular cake as per L's request as he found that round cakes were too mainstream. After the candles were blown, L's friends (who were $9973$ in number) decided that they wanted triangular cake pieces. As L's mom is fair towards his friends, she has the task to divide the cake into $9974$ triangles of equal volume. Like L, even his mom likes a good challenge. So she decided to cut the cake in the following way:

She would select a point $P$ on the triangular surface and from $P$ she would trace $9974$ rays which will intersect the sides of the triangular surface and cut through the rays resulting in $9974$ triangular cake pieces of equal volume. But L pointed out that this type of partitioning is not possible for any interior point on the surface. So she is interested in finding out the number of interior points ($P$) wherein such equal partitioning of the cake is possible.

#problem-tag(("number theory", "geometry"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #111
#problem-heading(111, [Rectangle has Children])

A rectangle $A$ is said to be the child of rectangle $B$ if following 3 conditions are satisfied:

#[
#set enum(numbering: "a.")
+ $A$ can be completely fit inside $B$ without $A$'s sides touching $B$'s sides.
+ At Least one side of $A$ should be greater (in length) than both the sides of $B$.
+ $A$'s and $B$'s sides are positive integers.
]

A rectangle with sides of length $22543$ units and $22541$ units has how many children?

*Note:* A square is also a rectangle with equal sides. \
*Note:* $A$'s (child) sides need not be parallel to $B$'s sides when $A$ is fit inside $B$.

#problem-tag(("geometry", "implementation"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #112
#problem-heading(112, [Rooted Sums])

Find the answer to the following summation:
#[
#show math.equation: it => [#set align(left); #it]
$ inline(
root(5, (11+5sqrt(5))/2) + root(8, (47+21sqrt(5))/2) + root(6, (18+8sqrt(5))/2) - root(16, (2207-987sqrt(5))/2) - \
root(22, (39603-17711sqrt(5))/2) + root(11, (199+89sqrt(5))/2) + root(30, (1860498-832040sqrt(5))/2) + \
root(13, (521+233sqrt(5))/2) - root(12, (322-144sqrt(5))/2) - root(10, (123-55sqrt(5))/2) - root(26, (271443-121393sqrt(5))/2)
) $
]

Let the answer be $x$. Submit the answer as $floor(1000000000 x)$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #113
#problem-heading(113, [Monica’s Candy Fever])

We all know how much Monica loved candies in her childhood. And, her excessive competitiveness is no big secret! There have been various incidents where the Gellars had brought home some candies (say $n$). Monica always wanted to have more candies than Ross. Now, the Gellars actually gave the candies randomly to both of them. Inspite of the randomness, Monica got more candies than Ross every single time! Now, we want to calculate the probability that Monica had more candies than Ross at every instant that the candies were being distributed. Let the probability of that be $F(n)$. Calculate $x = sum_(i=1)^1000000000 F(i)$. Submit $floor(1000000 x)$.

#problem-tag(("combinatorics", "probability"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #114
#problem-heading(114, [Revenge with Derangement])

Suppose that there are $N$ persons who are numbered $1,2,dots,N$. Let there be $N$ hats, also numbered $1,2,dots,N$. We have to find the number of ways in which no one gets the hat having same number as his/her number.

Let the number of ways to accomplish the above task be $D(N)$. You need to enter the value of $D(N) mod P$.

Take $N = 49770435560715869$ and $P = 223092870$.

#problem-tag(("combinatorics", "chinese remainder theorem"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #115
#problem-heading(115, [42: The Answer to Everything?])

Represent $42$ as the sum of $N$ positive real numbers $X_1, X_2, dots, X_N$ where $N$ is an integer, such that the product, $P = X_1 X_2 dots.c X_N$ is maximised. Find $floor(P)$ where $floor(thin)$ is greatest integer function.

#problem-tag(("calculus",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #116
#problem-heading(116, [Funny Factorial])

In a right angled triangle $A B C$ right angled at $B$, equations of median $A D$ and $C F$ are $y = x + 1$ and $y = 2x + 4$ respectively. Given $A C$ is $60$ units find the last five non zero digit of $X!$ where $X$ is the area of triangle $A B C$.

#problem-tag(("geometry", "brute force"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #117
#problem-heading(117, [Expectation Frenzy])

Suppose an $M$-faced fair dice is tossed $N$ times. Whenever the dice is tossed, each face appears with probability $1\/M$. After $N$ throws of the dice, let the expected value of minimum number obtained on the dice be $E$. Enter the value of $floor(10^6 E)$ where $floor(thin)$ is greatest integer function.

Take $M = 100$ and $N = 20$.

#problem-tag(("probability",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #118
#problem-heading(118, [Analyzing Complexity])

Problems with which we often deals in programming requires us to approximate number of iterations that we are going to perform in loops.

Given below is a simple pseudo code for which you need to tell the number of iteration performed in the given nested list:

```c
for ( int x1 = 1 ; x1 <= n ; x1++ )
   for ( int x2 = x1 ; x2 <= n ; x2++ )
      for ( int x3 = x2 ; x3 <= n ; x3++ )
        ...
          ...
            ...
              for ( int xm = x(m-1) ; xm <= n ; xm++ )
                it++ ;
```

Take initial value of `it` as $0$ and value of `m` and `n` to be $25$ and $26$ respectively.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #119
#problem-heading(119, [Minimum Cubes])

We define $f(x) =$ minimum number of positive perfect cubes that sum up to $x$.

For example, \
$f(2) = 2 med (2 = 1^3 + 1^3)$ \
$f(9) = 2 med (9 = 1^3 + 2^3)$ \
$f(17) = 3 med (17 = 1^3 + 2^3 + 2^3)$

Find $sum_(n=1)^(10^6) f(n)$.


#problem-tag(("dp",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #120
#problem-heading(120, [Balance the Weight])

You are given a beam balance and $N$ objects where $i$#super[th] object weighs $2^(i-1), 0 < i <= N$. $F(N)$ denotes the no. of ways of placing these objects (one by one) on balance such that the left side is always heavy (after every placement). Find the value of $F(100)$ and give the answer modulo $10^9+7$.

#problem-tag(("implementation", "constructive algorithms"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #121
#problem-heading(121, [The Game of Fibonacci and Powers of Two])

You are given a pile of stones. Two people play this game turn by turn. In any turn, a player can remove a number of stones from the pile, say $X$, such that $X$ can be either a non zero Fibonacci number or a power of $2$.

The person that empties the pile wins the game. Both the persons play optimally, i.e. they try to make the best possible move that will help them win. If the number of stones in the pile varies between $1$ and $10^6$, in how many cases will the first player lose?

#problem-tag(("dp", "games"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #122
#problem-heading(122, [Never Ending Fraction])

Given that
$ P_n / Q_n = 0 + 1/(1 + 1/(2 + 1/(dots.c 1/((n-1)+1/n)))) $
for $n > 0$ ($n$ is an integer) where $P_0 = 0$ and $Q_0 = 1$.

Calculate $(P_1000 times Q_1000) mod 1000000007$.

#problem-tag(("number theory", "recurrence"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #123
#problem-heading(123, [Recurring Roots])

Let $f(x,y) = sqrt(x sqrt((x+1) sqrt((x+2) dots.c sqrt((y-1) sqrt(y)))))$ for $x >= 2$ and $x < y$ where $x$ and $y$ are integers.

Also, let $g(x) = T$ where $T$ is the smallest integer such that $x < T$.

Let $h(x) = 2^x mod 1000000007$.

Find out $h(g(f(g(f(42,111111111111111)),222222222222222)))$.

#problem-tag(("number theory", "induction"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #124
#problem-heading(124, [Co-prime judgement])

We define $phi(n)$ as the number of positive integers less than or equal to $n$ that are relatively prime to $n$.

Lets define $S(n) = sum phi(d)$ over all the divisors of $n$ (i.e. $d$ divides $n$).

Also define $F(n) = sum S(x)$ where $x$ varies from $1$ to $n$.

Compute the value of $F(999999) + F(888888)$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #125
#problem-heading(125, [Happy String])

You are given $p$ `a`'s and $q$ `b`'s. You arrange them in the form of a string. If you are able to get a string in which as you move from left to right, the number of `a`'s is strictly greater than `b`, then it is known as a happy string.

Let the number of such happy strings be denoted by $"happy"(p,q)$, then find \
$"happy"(200,100) times 201! times (101!\/300!)$.

#problem-tag(("probabilities",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #126
#problem-heading(126, [Playing with constraints])

Let $x =$ last $7$ non-zero digit of $99^99 !$.

Define $F(n,k) =$ sum of $k$th powers of all divisors of $n$, so for example \
$F(6,2) = 1^2 + 2^2 + 3^2 + 6^2 = 50$.

Define further $G(a,b,k)$ as sum of $F(j,k)$ where $j$ varies from $a$ to $b$ both inclusive.

You need to enter the value of $G(1,x dot x,2)$ modulo $10^9+7$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #127
#problem-heading(127, [Decamping Twice])

Let $S$ be a set where $ = {1,2,3,4,5,dots,4444444444}$ and $P$ be a subset of $S$ such that $x in P$ but $2x in.not P$. Let $|T|$ be the total number of elements in the set $T$. Find out maximum $|P|$ of all the possible subsets $P$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #128
#problem-heading(128, [Fibonacci Fun])

Given: \
$a_1 dot upright(e)^(x_1) + a_2 dot upright(e)^(x_2) + dots.c + a_30 dot upright(e)^(x_30) = 321123$ \
where $a_i =$ $i$th Fibonacci number, $upright(e)$ is the Euler's number and $x_i$ is a real variable (i.e. $a_1 = 1$, $a_2 = 1$, $a_3 = 2$, ...).

Let minimum value of $upright(e)^(2x_1) + upright(e)^(2x_2) + dots.c + upright(e)^(2x_30)$ be $Z$ at $x_i = y_i$ where all $x_i$ satisfy the above condition.

Let $k = (y_1 + y_2 + y_3 + dots.c + y_30)^4 \/ Z$.

Find the greatest integer $<= 100k$.

#problem-tag(("number theory", "fibonacci"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #129
#problem-heading(129, [Fragger and his sequence])

Fibonacci sequence is defined as follow: $F_1 = 1, F_2 = 2, F_i = F_(i-1) + F_(i-2) med (i > 2)$.

Every natural number $X$ can be represented in Fibonacci system such that $X$ is sum of one or more distinct Fibonacci numbers in such a way that the sum does not include any two consecutive Fibonacci numbers.

Let $X = A_1 dot F_1 + A_2 dot F_2 + A_3 dot F_3 + dots.c + A_(k-1) dot F_(k-1) + A_k dot F_k$ where $0 <= A_p <= 1 med forall p < k$ and $A_k = 1$.

We will represent $X$ in Fibonacci system as $A_k A_(k-1) A_(k-2) dots.c A_1$. For example \
$1 = (1)_F, 2 = (10)_F, 3 = (100)_F, 4 = (101)_F$.

If we write representation of all natural numbers in Fibonacci system consecutively we will obtain a new sequence (say fragger sequence) which will look like this: $1,1,0,1,0,0,1,0,1,dots$.

You need to count the number of times $1$ appears in the first $10^15$ terms of fragger sequence.

#problem-tag(("fibonacci", "dp"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #130
#problem-heading(130, [The Start])

Let $S_n = (sum_(k=1)^n a_k)^2$, where $a_k = (k times (k+2))^(-1)$. Let $S_n = p\/q$, where $p$ and $q$ are positive integers and $gcd(p,q) = 1$. Find the value of $p times q$ for $n = 112358$.

#problem-tag(("series", "summation"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #131
#problem-heading(131, [Crazy sum])

Let $f(n) = sum_(d|n) mu(d) h(n/d)$ where $h(x) =$ sum of divisors of $x$.

$g(n) = sum_(d|n) mu(d) f(n\/d)$.

Find $S = sum_(n=1)^10000000000 g(n) "modulo" 2^64$.

*Note:* here $mu(n)$ is Möbius Function.

#problem-tag(("series", "summation"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #132
#problem-heading(132, [Functions])

For a complex number $z$, given a function $f(z) = sum_(i=1)^n 1/i^z$.

Let $p_j$ be the $j$-th prime number, $g(z) = product_(j=1)^m (1 - p_j^(-z))$.

Let $x = lim_(n,m arrow infinity) f(z) times g(z)$.

Find the value of $sum_(1<=i<=k,gcd(i,k)=x) 1$, where $k = 354216846978542365$.

#problem-tag(("series", "functions"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #133
#problem-heading(133, [The drunk boyfriend])

In a single dimension world, a girl is standing at the point $x = 0$. Her boyfriend is standing at some point $x = x_0$. He is drunk. So, he either takes a step towards her girlfriend or a step away, with equal probability. But he can't go beyond $x = n$, because of a wall placed there. So whenever he reaches $x = n$, he has to go back to $x = (n-1)$. Let the expected number of steps for him to reach his girlfriend be $F(x_0,n)$ where $x_0$ is his starting point.

Find the value of $sum_(i=1)^N F(i,N)$ for $N = 10^7$.

#problem-tag(("probability",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #134
#problem-heading(134, [Triangles Counting])

Find the sum of all positive integers up to $10^8$ which can be expressed as a hypotenuse of a right angled triangle where other two sides are also positive integer.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #135
#problem-heading(135, [Polynomial Expansion])

We wish to generate $1000000$ pseudo-random numbers $s_k$ in the range $plus.minus 2^19$, using a type of random number generator (known as a Linear Congruential Generator) as follows:

```pascal
t := 0
for k = 1 up to k = 1000000:
    t := (615949*t + 797807) modulo 2^20
    s(k) := t - 2^19
```

"`^`" in the code implies the power operator.

Thus: $s_1 = 273519$, $s_2 = -153582$, $s_3 = 450905$, etc.

We need to find a polynomial $P(x)$ of lowest possible degree such that $P(i) = s_i$ for all integers $i <= 1000000$.

Enter the value of $(P(1) + dots.c + P(1000100))$ modulo $1000000007$.

#problem-tag(("polynomial", "binomial"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #136
#problem-heading(136, [Equate It])

Let $a,b,c$ be positive integers such that $a eq.not b eq.not c$ and $a$ divides $b^69$, $b$ divides $c^69$ and $c$ divides $a^69$. Find min $m$ such that that $a b c$ divides $(a+b+c)^m$ for any $a,b,c$ satisfying the above condition.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #137
#problem-heading(137, [Harry Potter and Horcrux])

In a two dimensional map Harry initially is standing at some point denoted by character `H`. Also there is a horcrux at some point of map denoted by character `X`. In order to protect that horcrux You-Know-Who has appointed several Death Eaters at certain points of map denoted by character `D`.

Harry need to find the horcrux but he is not knowing the exact position of horcrux and hence he will walk in any of the four direction (left, right, top, bottom) with equal probability from his position as long as he stays in map and not go to any place where Death Eaters reside. Points on which Harry can walk will be denoted by `W` in map.

Harry is determined to find the horcrux and he will not stop until he finds it. You need to find expected number of steps Harry will take to find the horcrux.

There are $20$ maps in "*maps.txt*". For each map first its dimensions are given $m,n$ which indicates map size $m times n$. After which map is given in described format. *NOTE:* There always exist a path between Harry and horcrux for map given in input.

Let the sum of expected value for all map be $P$. Enter the value of $"floor"(P times 10^3)$. Link to *maps.txt*
#text(fill: main-dark-color)[#footnote[
  Source: #link("https://erdos.sdslabs.co/storage/files/problems/137.txt")[#text(fill: main-dark-color)[https://erdos.sdslabs.co/storage/files/problems/137.txt]]. This file is also attached to this PDF.
]].

#problem-tag(("probability", "graph"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #138
#problem-heading(138, [Mul Me])

Let the number of ordered quadruples satisfying this equation be $f(n)$. \
$a dot b dot c dot d <= n$

$f(1) = 1, f(2) = 5$.

Find $f(10^12)$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #139
#problem-heading(139, [Sum Me])

Let $F(n) =$ sum of all divisors of $n$.

Find the sum of all $n$ such that $F(n) = 2n$ and $1 <= n <= 5 times 10^35$.

Report your answer modulo $10^9+7$.

#problem-tag(("number theory",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #140
#problem-heading(140, [Bored with GCD])

Define $P(m) = product_(k=1,gcd(k,m)=1)^m k$.

Also $F(n)=sum_(i=1)^n (P(i) mod i)$.

Find the value of $sum_(i=1)^12 F(10^i) mod 1000000007$.

#problem-tag(("number theory", "gcd"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #141
#problem-heading(141, [Complex Summation])

An $n$th root of unity, where $n$ is a positive integer (i.e. $n = 1,2,3,dots$), is a number $z$ satisfying the equation $z^n = 1$.

An $n$th root of unity is primitive if it is not a $k$th root of unity for some smaller $k$: \
$z^k eq.not 1 (k = 1,2,3,...,n-1)$.

Let $S(n)$ be the sum of all the primitive nth roots of unity.

Define $F(n,k)= sum_(i=1)^n i^k S(i)$.

Enter the value of $F(10^11,10^3) mod 1000000007$.


#problem-tag(("number theory", "algebra", "complex numbers"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #142
#problem-heading(142, [Inequality Marathon])

Let $S = X_1,X_2,X_3,dots,X_k$ where $0 <= X_i <= 1$ for $1 <= i <= k$ and $sum_(i=1)^k X_i = 1$.

Also $0 <= P(x) <= 1$ for all $x in S$. Given that $sum_(i=1)^k P(X_i) = 1$.

Let us say $T = max(1\/(sum_(i=1)^k X_i^2))$.

Also, $F(x) = sum_(i=1)^k P(X_i) log(1\/P(X_i))$ (log with base $2$).

Given that $max(F(x)) = 13$.

Find $T! mod 1000000007$.

#problem-tag(("probability", "inequality"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #143
#problem-heading(143, [Exponential Fibonacci])

Let $F_n$ be the $n$th Fibonacci number where $F_0 = 0$ and $F_1 = 1$.

Also let $a = 3^3^43$ and $b = 3^3^42$.

If $F_x = gcd(F_a,F_b)$ where $x$ can be represented as $27^y$.

If $F_m^3 - F_n^3 = F_y - F_(y\/3)^3$.

Find the value of $(m times n) mod 1000000007$.

#problem-tag(("fibonacci", "matrix exponentiation"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #144
#problem-heading(144, [Circular paradigm])

Let the number of arrangements of $3n$ identical Type A balls and $3$ identical Type B balls in a circle
#text(fill: main-dark-color)[#footnote[
  Both rotation and reflection symmetries of arrangements are considered.
]]
be $F(n)$. Find $F(100000) times F(100001)$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #145
#problem-heading(145, [Vasu And Houses])

We have a total of $n-1$ persons ($P_1, P_2, dots, P_(n-1)$) and $n$ houses ($H_1, H_2,  dots, H_n$).

Find the number of ways for $n = 6$ such that each person visits only $1$ house and the following conditions are satisfied:

+ Each person visits a different house.
+ Person $P_i$ can't visit House $H_i$.
+ $P_1$ can't visit House $H_n$.

#problem-tag(("derangements",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #146
#problem-heading(146, [A Very Easy Sum])

A number is called special if when prime factorized as $p_1^a_1 p_2^a_2 dots.c p_k^a_k$, then $a_i <= 2$ for all $1 <= i <= k$.

Let $S(N)$ be the sum of all special numbers from $1$ to $N$.

Given $S(10) = 47$ and $S(10^4) = 41586160$.

Enter $S(123456789123456789)$ modulo $10^9+7$.

#problem-tag(("number theory", "summations"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #147
#problem-heading(147, [Divisor Sum])

Define $F(n,0) = 1$, $F(n,k) = sum_(d|n) F(d,k-1)$, where $d|n$ means $d$ is a divisor of $n$.

Let $S(N,k) = sum_(n=1)^N F(n,k)$.

Given $S(9876,234) mod 1000000007 = 208863976$.

Enter the value of $S(98765432,2345678) mod 1000000007$.

#problem-tag(("number theory", "divisors", "summations"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #148
#problem-heading(148, [Levels in Tree])

Consider a tree with $n$ nodes rooted at node $1$. We define _parent_[$i$] as the parent of $i$th node. For each $2 <= i <= n$, _parent_[$i$] can assume any value from $1$ to $i-1$ with equal probability. Let $F(n)$ the expected value of the sum of levels of all nodes. $1$st node is at level $1$ and for each $2 <= i <= n$, if node $i$ has level $x$, _parent_[$i$] has level $x-1$.

Given $F(10) = 29.28968$.

Enter your answer as the greatest integer less than or equal to $F(12345678)$.

#problem-tag(("probabilities",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #149
#problem-heading(149, [Fibonacci Sum])

Define $F(0) = 0, F(1) = 1, F(n) = F(n-1) + F(n-2), n >= 2$.

Define $S(N,K) = sum_(n=0)^N F(1 + n K) mod 1000000009$.

Given $S(10^12,100) = 878943097$.

Enter the value of $S(221^221^10^18,55^55^10^18)$.

#problem-tag(("fibonacci", "modular roots"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #150
#problem-heading(150, [Fun with Expectation])

Consider an array of $n$ numbers where each element can be any non negative $x$ bit number ($0$ to $2^x-1$) with equal probability. Let $F(n,x)$ be the expected value of the sum of bitwise xor of all possible subsequences of the array.

E.g. consider the array $1,2,3$. Sum of xor of all possible subsequences of this array \
$= 1 + 2 + 3 + 1$ ^ $2 + 1$ ^ $3 + 2$ ^ $3 + 1$ ^ $2$ ^ $3 = 1 + 2 + 3 + 2 + 1 + 3 + 0 = 12$. \
*Note:* ^ is the bitwise xor operation here.

$F(2,2) = 4.5$.

Enter your answer as $"floor"(F(29,30) +  F(30,29))$.

#problem-tag(("probabilities", "bits"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #151
#problem-heading(151, [The Pebble Game])

Given a Directed Acyclic Graph (#link("https://en.wikipedia.org/wiki/Directed_acyclic_graph")[#text(fill: main-dark-color)[DAG]]), at a given instant of time we can do one of the following two operations:

+ Place pebble on a node, if all its immediate ancestors have a pebble.
+ Remove pebble from a node.

Initially, there are no pebbles on any node of the DAG.

Our goal is to minimize the maximum number of pebbles over time such that finally, pebbles are on all leaf nodes (nodes with no outgoing edges). Assume all DAGs of the form: $2$ equal height full binary trees, one kept inverted. The leaves of each binary tree are at the same level.

E.g.: This is a DAG made to resemble $2$ binary trees of height $2$.

#align(center)[
  #v(5pt)
  #include "figures/p151.typ"
  #v(5pt)
]

Say $F(n) =$ Answer for a DAG similar to $2$ binary trees of height $n$.

Find $sum_(i=0)^20 F(i)$.

#problem-tag(("graphs",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #152
#problem-heading(152, [Modular Test])

Let $F_p(x) =$ maximum $k$ such that $p^k$ divides $x!$.

Let $G_p (x) = p^(F_p (x))$.

Let $Q(N) = (N!\/(G_2(N) G_3(N) G_7(N) G_101 (N))) mod 7711956$.

Let $S(N) = sum_(n=1)^N Q(10^16 + n times 10^5)$.

Enter the value of $S(10^5)$.

#problem-tag(("chinese remainder theorem", "factorial"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #153
#problem-heading(153, [Costly Coins])

Akhil has $100000000$ coins in his FlipCart. He spreads them on a table. Initially all of them are facing head. Daga selects any $34117$ coins at random and inverts all of them. Daga repeats this process $1000$ times.

What is the expected number of head after the process?

Submit the integer part of the expected number (ignoring the part after decimal point).

#problem-tag(("expectation",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #154
#problem-heading(154, [Vikas and Cows])

Vikas has a rectangular farm of dimensions $a times b$ in "Amazon" forest. He also has $4$ cows. The $4$ cows are very aggressive. So he ties his cows to the $4$ corners of the farm through ropes. The length of ropes are $r_1, r_2, r_3, r_4$. He wants to maximise the grazing area. But, as the cows are aggressive, he does not want the cows to fight.

$F(a,b) =$ Maximum area of the farm that can be grazed by the cows.

$S(a,x) = sum_(b=a)^x F(a,b)$.

Output $floor(S(4,1000))$.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #155
#problem-heading(155, [Irreconcilable Differences])

Saurv4u and Daenerys were a loving couple. But due to "Irreconcilable Differences", the couple is thinking of "breaking" up.

To measure the depth of the differences $D$, Saurv4u has shaded the inner region of the rectangles (The sides of the rectangle are parallel to the Cartesian axes and the center of rectangle is origin) such that the perimeter of rectangle is less than $4 times a$, while Daenerys has shaded (on the same plane) the inner region of all the rectangles (The sides of the rectangle are parallel to the Cartesian axes and the center of rectangle is origin) such that the area of rectangle is less than $(3 times a times a)\/4$.

The measure of the depth of differences $D$ is the common area bounded by the two.

Given the value of $a = 1000$, find the value of $floor(D/100)$.

$floor(x)$ means the greatest integer $<=x$.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #156
#problem-heading(156, [The Next Big Tower])

Princi is playing "Make Towers with Blocks". She wants to make towers and then jump from one tower to the next.

The rules of the game are: She has $N$ blocks. She can make any number of towers with them but the heights of the towers must be in a strictly increasing order i.e. height of any two towers must not be equal (so she can jump higher and higher).

Now she wants to find the number of ways in which she can make towers like this with $N = 196$ blocks (the different ways for $N = 6$ are shown in the image). Since, she is busy doing her work, you have to find the answer for her.

#align(center)[
  #v(5pt)
  #include "figures/p156.typ"
  #v(5pt)
]

#problem-tag(("dp",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #157
#problem-heading(157, [For the love of tomatoes])

Mishra loves to eat tomatoes. He likes tomatoes so much that he shares them with no one (not even, well, no one). Mishra likes to store his tomatoes safely. He puts all his tomatoes in boxes and puts all boxes in a 3D Cartesian space on the coordinates $(i,j,k)$ such that $1 <= i <= N$, $1 <= j <= N$ and $1 <= k <= N$. So there are a total of $N^3$ boxes.

Now, adkroxx wants to steal his tomatoes. He has the following information:

- Number of tomatoes in each box is different.
- Number of tomatoes in any box $A_(i,j,k)$ is $1 <= A_(i,j,k) <= N^3$.
- The number of tomatoes in each row along positive $x$ axis is strictly increasing.
- The number of tomatoes in each row along positive $y$ axis is strictly increasing.
- The number of tomatoes in each row along positive $z$ axis is strictly increasing.

Now, before stealing the tomatoes, adkroxx defines $A D K_i$ as the product of all possible values of $A_(i,i,i)$.

$P(N)$ is given by:
$ P(N) = sum_(i=1)^N A D K_i $

Find $P(N)$ for $N = 216$. Give the answer modulo $10^9+7$.

#problem-tag(("brute force",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #158
#problem-heading(158, [Best Hacker in the World])

Foxtrot and Vampire decided to play a game to decide who is a better hacker. They have $n$ tiles in a line out of which $m$ are white rest all are black. Their task is to change all the black tiles with white by following a simple procedure. They can change a black tile with white only if there is atleast one white tile adjacent to that black tile. Now they have $n = 74$ and $m = 13$ and the $13$ positions (indexed $1$) of white tiles are $6,14,19,20,21,24,30,43,58,61,69,70,73$.

They want to find the total number of ways in which it can be done. Help Vampire find the answer as he cannot come out in daytime.

Report your answer modulo $10^9+7$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #159
#problem-heading(159, [Revenge of The Fox])

After losing to Vampire, Foxtrot wants to take revenge.

Vampire has $30$ piles of coins, each contains $N$ number of coins. Every gold coin weighs $10$ grams, while counterfeit coin weighs $9$ grams. Some of the piles contains all counterfeit coins. He have a digital scale capable of accurately weighing any number of coins. He knows that at most $3$ of the $30$ piles are counterfeit. He needs to find the minimum value of $N$ so that, with just one measurement, he can guarantee identifying which (if any) piles are counterfeit. Vampire is busy in some work and says if Foxtrot can solve this for him, he will declare Foxtrot as the best hacker.

Find the answer for Foxtrot.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #160
#problem-heading(160, [Such Sum Wow])

Vaibhav is participating in MCA PCIC --- largest international Math competition where he gets this problem:

Given $N$ equations of the form: $a_i x_i^2 + b_i x_i + c_i = 0$, $i$ varies from $1$ to $N$, where $a_i = b_i = i$th Fibonacci number and $c_i = (i+2)$th Fibonacci number.

Let $g_i = (-1) times (2 a_i x_i + b_i)^2$ for all the equations.

$h(N) = sum_(i=1)^N g_i$.

Submit $h(N) mod (10^9+7)$ for $N = 987654321342198766$.

*Note:* Fibonacci series: _Fib_[$0$] $= 0$, _Fib_[$1$] $= 1$, _Fib_[$i$] $=$ _Fib_[$i-1$] + _Fib_[$i-2$].

Now Vaibhav doesn't like maths, so you have to solve it for him.

#problem-tag(("fibonacci",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #161
#problem-heading(161, [Binary Play])

Consider a set $S(N)$ such that $S(N)$ contains all sequences of $0$ and $1$ of length $N$ in which no two $1$'s are adjacent. For example: $S(3) = (000,001,010,100,101)$.

Let $A =$ no. of elements in $S(30)$.

$B =$ sum of digits of $A$.

You have to output no. of $0$'s appearing in $B$#super[th] sequence of $S(30)$ when arranged lexographically.

#problem-tag(("fibonacci", "dp"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #162
#problem-heading(162, [One Last Game])

During a game of Mafia, after Verma is killed by Mafia in the first round, he starts getting bored and keeps disturbing others in the game. This irritates everyone else and to keep the game interesting, Akhil asks Adarsh to keep Verma occupied in something else.

So Adarsh gives him a $1 times N$ matrix which has $N$ cells. Also, he gives him $M$ colours numbered from $1$ to $M$. Now, Verma can choose any submatrix with even number of cells from the matrix and colour it with one of the $M$ different colours. He can colour as many times as he wants. If Verma tries to recolour any cell which is already coloured, the cell gets coloured in the last colour.

Adarsh asks Verma to make as many distinct matrices that he can make such that every cell is coloured. Each matrix is different from other if at least one of the cell has a different colour.

Find the number of matrices Verma can make and submit the answer modulo $1000000007$.

Take $N = 99999999999999$ and $M = 999999999$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #163
#problem-heading(163, [Bored with Shinigami])

Ryuk is bored with the Shinigami world and goes to the human world to find something interesting. He is fascinated with the GCD function and Fibonacci numbers and starts playing with them.

Fibonacci numbers are defined as: $F(n) = F(n-1) + F(n-2) med forall n >= 2$ with $F(0) = 0$ and $F(1) = 1$.

Ryuk wants you to find the value of $gcd(F(101^2185 - 17^2185),F(101^4807-17^4807)) mod 1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #164
#problem-heading(164, [Kill the remaining chinese])

Kira has killed all criminals in Japan and has now started killing Chinese criminals. He kills $Z$ criminals every week. Where $X = 100!$ and $X^9449771607341027425 equiv Y med (mod 9449771616229914661)$.

$Z = Y mod 1000000008$.

As a supporter of Kira, help him by finding $Z$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #165
#problem-heading(165, [L’s Successor])

L is fighting Kira which can be dangerous as Kira has the Death Note. Watari has to decide a successor for L in case L dies. Watari gives a point $(x,y,z)$ in cartesian plane to Mello and Near and they have to play a game such that they take turns. In one turn, the player can change one of the coordinates (say $w$, $w > 0$) to $[w\/2]$ or $[w\/3]$ or $[w\/5]$
#text(fill: main-dark-color)[#footnote[
  $[x]$ denotes the greatest integer less than or equal to $x$.
]].
So $(8,9,10)$ can be reduced to $(4,9,10)$ or $(2,9,10)$ or $(1,9,10)$ or $(8,9,3)$ and so on. The person who changes the point to origin wins the game. Watari wants Near to win but he forgot the $z$ coordinate so he randomly selects $z$ between $0$ and $12345$ (both inclusive). So the point is $L(2^60, 2^61, z)$, where $z$ is between $0$ and $12345$ (both inclusive). Given that Near starts play calculate the probability that Near will win the game if both players play optimally.

If the answer is of the form $u\/v$ where $u$ and $v$ are coprime you have to input $u+v$ as the answer.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #166
#problem-heading(166, [Apples for Ryuk])

Light Yagami has to buy apples for Ryuk without attracting any unwanted attention towards himself. Interestingly, the number of apples he buys everyday is always a Fermat Number. A Fermat number is a number of the form $2^2^n+1$. $G(N) =$ sum of digits of $N$th Fermat Number modulo $9$. Find the sum of $G(i)$ for all $i$ between $1$ and $999999999999$ (both inclusive).
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #167
#problem-heading(167, [The Perfectionist Yagami])

L gives Light the following challenge and claims that if he is unable to solve it, he is Kira. Help Light deceive L by solving the challenge. A $3$-perfect number is defined as a number whose sum of divisors equals thrice that number. You have to fiind the sum of all $3$-perfect numbers of the form $n = 2^k times 3 times p$ that are less than $10^9$, where $p$ is an odd prime number and $k$ is positive integer. Give the answer modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #168
#problem-heading(168, [L’s Ideology])

L is sure that Light is kira and Misa is second Kira. He randomly selects two permutation of $1$ to $N$ and store it in $A[0],A[1],dots,A[N-1]$ and $B[0],B[1],dots,B[N-1]$. All permutations are equally probable. Now he randomly selects a integer $X$, $0 <= X < N$, and shifts permutation $B$ to left by $X$.

For Example --- $[2,3,1,4,5]$ be a permutation, shifting it left by $2$ will result $[1,4,5,2,3]$.

He defines another sequence $g[i] = (A[i] times 1) mod B[i] + (A[i] times 2) mod B[i] + (A[i] times 3) mod B[i]$ $+ thin dots.c + (A[i] times B[i]) mod B[i]$.

Find expected value of $g[0] + g[1] + dots.c + g[N-1]$ for $N = 1111$.

Answer greatest integer of expected value.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #169
#problem-heading(169, [Attendance and Probability])

As we all know adkroxx is a great programmer of our institute. But due to programming he started missing a lot of classes. Now the institute decides to offer him cash reward for good attendance. If he is absent for $4$ consecutive days or late on more than one occasion they will forfeit his prize. During an $n$-day period a ternary string is formed for each day consisting of `L`'s (late), `O`'s (on time), and `A`'s (absent).

Adk being a smart kid tries to find out what is the total number of prize string that exists. Although there are eighty-one ternary strings for a $4$-day period that can be formed, exactly forty-seven strings would lead to a prize.

Now you have to help adkroxx to find out number of prize strings for $n = 10000007$ and report the answer modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #170
#problem-heading(170, [Magical Distance])

Consider all points with integral positive coordinate $(x,y)$ which lies on the curve
$ abs(x^2 - 4 x y - y^2) = 1 $

Let $P_i$ be the coordinate of $i$#super[th] point when all the points satisfying above equation are sorted in ascending order according to their distance from the origin.

Let $D_i =$ distance between $(0,0)$ and $P_i$.

If $S(n) =sum_(i=1)^n D_i^2$.

Enter the value of $S(10^15) mod 1000000009$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #171
#problem-heading(171, [Random Name])

$
g(x) &= 2^(2x^3) - 1 \
f(x) &= sum_(i=1)^x g(floor(x/i))) \
F(x) &= sum_(i=1)^x f(i)
$

Find $F(12345678) mod 10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #172
#problem-heading(172, [Polynomial Expansion 2])

Consider $f(x) = 1 + 5x + 6x^2 + 3x^3 + 10x^4 + 11x^5 - 19x^6 - 2x^7$.

Consider $g(x) = x^5 - 1$.

Let $R(k,x)$ be the remainder obtained when $f(x)^k$ is divided by $g(x)$.

Example :
$
R(1,x) &= 12 - 14x + 4x^2 + 3x^3 + 10x^4 \
R(2,x) &= -112 - 247x + 352x^2 + 60x^3 + 172x^4
$

Let $S(k,x)$ be the sum of coefficient of $R(k,x)$.

You need to enter the value of $S(18^10^18,x)$ modulo $100086841$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #173
#problem-heading(173, [Permutation mania])

Permutation $p$ is an ordered set of integers $p_1,p_2,dots,p_n$ consisting of $n$ distinct positive integers, each of them doesn't exceed $n$. We will denote the $i$#super[th] element of permutation $p$ as $p_i$. We will call number $n$ the size or the length of permutation $p_1,p_2,dots,p_n$.

We will call position $i$ ($1 <= i <= n$) in permutation $p_1,p_2,dots,p_n$ good, if $abs(p_i-i) = 1$.

Your task is to count the number of permutations of size $n$ with exactly $k$ good positions.

Give the answer for $n = 1000$ and $k = 700$ modulo $1000000007$.

Example: for $n = 3$ and $k = 2$ answer will be 4. $(1,3,2),(3,1,2),(2,1,3),(2,3,1)$ all have exactly $2$ good position.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #174
#problem-heading(174, [Dabba and Dhakan])

Dabba loves Maths and his girlfriend Dhakan, so he either spends his day with dhakan or does maths all day. But he hates spending two consecutive days with dhakan (because she is a dhakan). He wants to make his schedule for his summer vacation as a sequence of doing maths or spending day with dhakan.

No of days of his summer vacation can vary from $l$ to $r$. You need to count in how many ways Dabba can select $k$ different schedule of the same number of days for his summer vacations, whose days can vary from $l$ to $r$.

For example if $k = 2$, $l = 1$ and $r = 2$, if we define Maths day as ${1}$ and Dhakan's day as ${0}$, here are all possible combination: ${0}, {1}, {00}, {01}, {10}, {11}$. But ${00}$ can not be selected because it has $2$ consecutive Dhakan's day in a row. Now, we need to count in how many ways we can select $k = 2$ schedule of the same length in range $[1,2]$. Here they are: for no. of days $=1$, ${0,1}$; no. of days $= 2$, ${01,10}, {01,11}, {10,11}$. so answer for $k = 2$, $l = 1$ and $r = 2$ will be $4$.

He wants you to tell him in how many ways can do that, modulo $1000000007$ for $k = 200$, $l = 1$ and $r = 10^18$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #175
#problem-heading(175, [The Rocking Problem])

Bunty is trying to solve a problem and he is unable to do it so he asks you to solve his problem.

Let $F(n)$ is the number of subsets of ${1,2,3,dots,n}$ that contain no consecutive integers modulo $1000000007$.

Now you have to report $G(F(100000007))$. Where $G(n) =$ number of binary sequences of length $n$ that have no consecutive $0$'s modulo $1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #184
#problem-heading(184, [Color problem])

Mr. Pink likes summation series and Mr. White likes to take big powers of numbers. In order to satisfy both of them Mr. Brown want you to evaluate the following sum
$ sum_(i=1)^n i^k = 1^k + 2^k + dots.c + n^k $
modulo $10^9+7$ for $n = 10^9$ and $k = 10^6$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #186
#problem-heading(186, [Euler and Fibo])

$ S(a,b) = sum_(k|a,k|b) Phi(k) $
where $k|x$ means $k$ divides $x$, $Phi(n)$ is Euler totient.

$ Z_0(n) = sum_(a=1)^n sum_(b >= a)^n S(a,b) $

$F(n) = F(n-1) + F(n-2)$ for $n > 1$, $F(0) = 0$ and $F(1) = 1$.

$ Z_1(n) = sum_(a=1)^n sum_(b >= a)^n S(F(a),F(b)) $

Find $Z_0(n)^(Z_1(n)) mod 10^9+7$ for $n = 10^8$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #189
#problem-heading(189, [Night King and The Army of the Dead])

Night king is marching with an army of the dead. The Night King has $N$ deads in his army and they are labelled from $1$ to $N$. Jon Snow is trying hard to stop Night King to cross the wall and destroy Westeros. Jon figures out that killing a walker leads to the disintegration of some of his associated wights.

If Jon kills the $k$th dead all the dead with a label which divides $k$ will be disintegrated. For $N = 123456789$, what is the minimum number of kills required to clear the army?
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #190
#problem-heading(190, [Semi Prime Sum])

What is the sum of semi-primes up to $10^7$.

Semi-prime is a number of the form $a times b$ where $a$ and $b$ are both prime numbers.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #191
#problem-heading(191, [Save Jon Snow])

Jon Snow hands Gendry a message, tells him to go to Eastwatch and send a raven to Daenerys to rescue them. Currently, Gendry is at $(0,0)$ and the castle is situated at $(N,N)$. In order to escape the battlefield, he can only move from $(i,j)$ to $(i,j+1)$ or $(i+1,j)$ or $(i+1,j+1)$.

Find the number of paths that can be taken by Gendry to reach the castle modulo $10^9+7$ for $N = 10^7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #192
#problem-heading(192, [Colorful Matrix])

Consider a $2000 times 2000$ matrix which is to be filled with $15$ colors. Find the number of ways to color the matrix. Two colorings are same if rotating one of them along the axis perpendicular to the plane (in multiples of $90$ degrees) gives the other. Give the answers modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #193
#problem-heading(193, [Bend the knee or Play])

Jon has a well-shuffled deck of $M = 4999$ white cards and $N = 4999$ green cards. Each permutation of cards in the deck is equally likely. Dany has set some rules for Jon. Every time Jon flips a white card he gets one coin, otherwise he loses one coin.At any moment (even at the beginning), Jon is allowed to stop playing the game and keep the number of coins that he has. During the game-play the balance of coins that Jon has may be negative. Let $k$ be the expected amount of coins Jon will have if Jon plays optimally. Evaluate $[k times 10000] times 123456$.

$[x]$ represents the greatest integer $<= x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #194
#problem-heading(194, [Integers on a roll])

Let $F(a) =$ Number of integral points on the equation $x^2 + y^2 = a$.

Find the sum of $(a times d times k)^(F(1745542018215^a times 2017^d times 408^k))$ for all values $1 <= a,d,k <= 100$ modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #195
#problem-heading(195, [Flip ’em all])

Consider a row of $N$ cards all facing up. Now a player flips all the multiples of $1$, then $2$ and so on till $N$. Find the number of cards facing up if $N = 12345678987654321$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #196
#problem-heading(196, [Game of Thrones])

In game of thrones you either win or you die. Each one of Jon, Dany, Cersei and Euron are ruling one of the four kingdoms. Ruler who gets to rule two kingdoms sits on the iron throne. Dany decides to attack one of the other kingdoms so that she can sit on the iron throne. But there is a catch. There are three dragons distributed among the $4$ rulers in any possible way. (Dany herself can have all the three dragons or maybe she won't have any!) All the dragons are alike and there is no difference between them.

If Dany attacks on a kingdom whose ruler has more dragons than her, she loses. The probability that she sits on the throne is of the form $p\/q$ where $p$ and $q$ are coprimes and $q$ is not equal to zero. Submit the ans $p^q$ modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #197
#problem-heading(197, [Kill the King])

Daenerys has $3$ dragons and $9$ XORgons (a creature that can breathe any number from the range $[0,123456789]$). If multiple XORgons throw numbers to a target at a time then the resulting number will be the XOR of the individual numbers thrown by each XORgon. Surprisingly the night king can be killed by the number $123456789$. Help Tyrion to find out how many ways all $9$ XORgons can throw number to the night king such that night king can be killed.

To cut the long story short how many unordered $9$-tuples $(a,b,c,d,e,f,g,h,i)$ are there such that $a and b and c and d and e and f and g and h and i = 123456789$ and $a,b,c,d,e,f,g,h,i$ are numbers from the range $[0,123456789]$. Submit the answer modulo $1000000016000000063$.

$and$ represents the bitwise XOR operation.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #198
#problem-heading(198, [XOR Again])

Find the sum of $i and j$ modulo $10^9+7$ for all integers $i$ and $j$ in $[0,1073742824]$.

$and$ represents bitwise XOR operation.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #199
#problem-heading(199, [Zero and Big Bits])

Zero is a very powerful person. He has $N$ countries (out of total $197$) under his control all of which are identical to him. Once he counted the number of ways of arranging all the countries in a list of size $197$ (modulo $M$) and stored the number in a computer (in binary format) as Zero likes bits. Zero also likes big numbers: More the number of set bits, the happier Zero will be. His happiness is equal to number of set bits in the number. The answer is his happiness.

The world knows only about modular arithmetic with $M = 10^9+7$. Calculate all the values modulo $M$. Here $N = 191$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #200
#problem-heading(200, [Stick to the Bases])

$F(i,j) =$ sum of positive integers (in base $10$) having an identical representation in both base $i$ and base $j$. $F(2,3) = 1$.

Let $S(N)$ be the sum of all values of $F(i,j)$ for $2 <= i < j <= N$.

Find $S(N) mod 22011663$ for $N = 10^18$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #201
#problem-heading(201, [Tricky Game])

TNBT likes playing with sticks, so once he broke a stick into $3$ pieces and calculated the probability of the pieces forming a triangle with much difficulty. He now wishes to calculate the probability of the pieces *NOT* forming an $N$-sided polygon given the stick was broken into $N$ pieces. Since he found it difficult for $3$ pieces, tell him the answer for $N = 733$.

If the probability is $p\/q$ where $gcd(p,q) = 1$, the answer is $[q\/p]$ modulo $10^9+9$.

$[x]$ represents the greatest integer $<= x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #202
#problem-heading(202, [Power and Modulo])

$F(k) = 5^k mod 10^(k')$ where $k' = k mod 6$.

Let $S(N)$ be the sum of $F(k)$ for all $1 <= k <= N$.

Find $S(10^18) mod 10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #203
#problem-heading(203, [Couples])

Swegwan is getting more naughty day by day. Recently he has come to know about the new variety of Sal trees that can share emotions. So he is highly excited about making their couples. He is God so he knows the tree's gender. Because he has enough free time he counts the number of male and female Sal trees now and then. Since it's very hard to know the exact positioning help him find the expected number of probable couples $p$. Every adjacent male and a female tree is a probable couple for Swegwan. According to him, there are $6367$ male trees (`MT`) and $6571$ female trees (`FT`) (all planted in a row).

For example, `MT FT MT FT` has $3$ probable couples.

Give your answer as $[p times 10^4]$.

$[x]$ is the greatest integer $<= x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #204
#problem-heading(204, [Combination Addition])

$ S(N) = sum_(n=0,k=0)^(2k <= n <= N) binom(n-k,k) $

Find $S(10^18)$ modulo $10^9+7$.

$binom(n,k)$ represents the binomial coefficient.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #205
#problem-heading(205, [Prime Sum])

$P(N)$ represents the largest prime factor of $N$.

Find the sum of $P(k^3+1)$ for $1 <= k <= 10^7$ modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #206
#problem-heading(206, [Finding Primes])

Find the smallest prime number $p$ such that there exist an integer $x$ which satisfies
$(x+8)(x+10)(x+12) = p$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #207
#problem-heading(207, [Unlucky base])

Given a number $a$, consider the set $S(a) = {a^i:i>=0}$. You create a sorted sequence $G$ formed by taking any number of distinct elements of the set $S(a)$ and adding them. Let the $k$#super[th] smallest number which can be constructed using this for a given $a$ be denoted as $(a,k)$.

Find the answer for $(a,k) = (13,423732713)$, submit your answer modulo $4222236787$.

The elements of the sequence $G$ go as follows $1,13,14,169,170,182,183,dots$
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #208
#problem-heading(208, [Just Mod it!])

For all the integers in range $1$ to $10^18$. Find out the number of integers $n$ such that $n^n mod 100 = n$. *Note:* Here, $mod$ refers to the remainder operator and not the relation.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #209
#problem-heading(209, [Harry and Magic Squares])

Harry and Hermione find an ancient square in the forest. Its vertices $V_1$, $V_2$, $V_3$, $V_4$ are each labeled with a number.

Hermione hates asymmetry, and she wants all numbers to be equal. Fortunately, Harry carries a magic wand with him. In one spell, he can choose any two adjacent vertices and increase their labels by one (each). He is allowed to use any amount of spells until the numbers become equal. Unfortunately, Harry is not so good at math, and he does not know if it is possible to make them equal.

Harry tells you that the initial values of the four numbers can be randomly distributed between $1$ and $1000$. Find the probability that he can use these spells to make all four labels of the vertices equal. Note that there is no restriction on the range of the final values of the magic numbers. If this probability can be expressed as $p\/q$, where $p$ and $q$ are coprime numbers, enter the value of $p$.

Examples:

Case 1:
#text(fill: main-dark-color, weight: "bold")[
```
8 6
8 6
```
]
Here, Harry can apply the spell twice to make the four numbers equal to $8$. Both spells act on the top-right and bottom-right vertices.

Case 2:
#text(fill: main-dark-color, weight: "bold")[
```
1 3
4 5
```
]
Here, any amount of spells will fail to achieve the end-goal of making all four labels equal.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #210
#problem-heading(210, [Circle and his friend tangent])

Consider two points $A_0$ and $A_1$ which are on a unit circle $C$ centered at origin. Where point $A_0$ is $(1,0)$ and $A_1$ is such that angle between positive direction of $x$-axis and radius vector through $A_1$ is $1degree$.

The points $A_i$ ($i >= 2$) are obtained in the following way: Consider vector $V_i = A_(i-1) - A_(i-2)$, if $A_(i-1)$ and $A_(i-2)$ coincide take $V_i$ as the tangent at $A_(i-1)$. $A_i$ is obtained by intersection of circle with line which passes through Point $A_0 (1,0)$ and is parallel to $V_i$.

Find the angle between $x$-axis and radius vector through $A_n$ for $n = 123456789987654321$. Give answer in degrees (Only output the integral part of the answer, if your answer is $19.23$ enter $19$ ($19.0$ will be wrong)).
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #212
#problem-heading(212, [Functional Permutations])

Given a permutation $p$ of length $n$, we define the following functions \
$S(p) = {i : p_i > p_(i+1), 1 <= i <= n-1}$, \
$f(p) = "sum of elements of" S(p)$.

Let $F(n,k) =$ number of permutations $p$ of length $n$ with $f(p) = k$.

Find $F(123,321)$ modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #213
#problem-heading(213, [Lonely Expansion])

Let $f(r,n)$ be the number of co-efficient which appears only once in expansion of $(x_1 + x_2 + dots.c + x_r)^n$.

Then, $f(3,2) = 0$ and $f(3,3) = 1$.

Let $A(i) = sum_(j=1)^n f(i,j)$ and $B = sum_(i=1)^n A(i)$.

Find the value of $B$ modulo $m$ if $n = 1000000000000$ ($10^12$) and $m = 998244353$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #214
#problem-heading(214, [Easy Expressions])

Find the value of the following summation
$ sum_(x=1)^(10^12) (x^2+x+1) dot x! $
$x!$ denotes factorial of $x$.

Give your answer modulo $3^20$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #215
#problem-heading(215, [Go for Gold])

Sparky is yet again being accused of being a robot. He needs to solve this question to prove his innocence.

Given a number $x$ and has defined the following functions: \
$p(x) = x!$ \
$s(x) = 1 + 2 + 3 + dots.c + x$

Find the value of $p(x) mod s(x)$ for $x = 10^9+6$.

*Hint*: $10^9+7$ is a prime number.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #216
#problem-heading(216, [Simple Alphabet])

Manas is the smallest Panda on this planet. So he loves writing on the wall. Today Manas is presented with a special wall which is infinitely long and which resembles a notebook with horizontal lines at a distance $10$ units apart. Since he knows only $3$ letters of the english alphabet, `O`, `N`, `I`, he starts writing these characters on this wall in any angle at any position. He writes `O` $677$ times, `N` $733$ times and `I` $779$ times. We define a cut as the intersection of character with the horizontal lines on the wall. Find the expected number of cuts Manas will make.

The dimensions of the characters:
- `I`: Line segment of length $1$ unit.
- `O`: Circle of radius $0.5$ unit.
- `N`: Smaller line segments have length $1$ unit and longer line segment has a length $2$ units.

If the answer is $p$, give the answer as $floor(10^5 p)$.

*Note:* A single character can make multiple cuts, for example, `O` can never make a single cut.

*Hint*: #link("https://brilliant.org/wiki/linearity-of-expectation")[#text(fill: main-dark-color)[https://brilliant.org/wiki/linearity-of-expectation]]
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #217
#problem-heading(217, [Stick Game])

There are $N$ sticks ($N >= 3$) of same size kept such that they make a regular polygon. Now one of the sticks from the polygon is removed to make it an open polygon.

Alex and Bob are playing a game (starting with Alex) in which they perform the following moves. A player chooses a stick and removes it. Now we have two sets of connected sticks that were originally in contact with the removed stick. The one with the smaller length is also removed with along with the selected stick. If both of the sets are of same size any one is removed. The person who can not make a move in their turn loses.

Example for $N = 6$: \
One of the sticks is removed and the figure looks like this.

#align(center)[
  #v(5pt)
  #include "figures/p217.typ"
  #v(5pt)
]

Now, if the chosen stick is terminal one like $1$ or $5$ then only that particular stick is removed. If some other stick is chosen (say stick numbered $2$) then on removing there will be $2$ sets of connected sticks. The set with less number of sticks gets removed too, and thus the stick with number $1$ will also be removed.

You are required to find how many starting positions are there below $N = 10^10^6$ such that Alex loses, assuming that both Alex and Bob play optimally.

*Hint*: #link("https://www.topcoder.com/community/competitive-programming/tutorials/algorithm-games")[#text(fill: main-dark-color)[A tutorial on Game Theory]]
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #218
#problem-heading(218, [Counting Hexagons])

A regular hexagon with integer length $n$ units is divided in $6n^2$ equilateral triangles with sides of length $1$ unit and this hexagonal lattice formed has a total of $3n^2+3^n+1$ lattice points.

For $n = 3$, refer to the image below

#align(center)[
  #v(5pt)
  #include "figures/p218.typ"
  #v(5pt)
]

Let $H(n)$ denote the number of regular hexagons that can be formed by connecting any $6$ points. Let $S(n)$ denote the summation of $H(k)$ for $1 <= k <= n$.

Given $H(3) = 36$ and $S(10) = 7942$, Calculate $S(10^18)$.

Give your answer modulo $10^9+7$.

*Hint*: Can you observe any pattern?
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #219
#problem-heading(219, [Divide and Destroy])

Given $n$ and $k$, find the number of a sequences of integers $a_1,a_2,dots,a_(k+1)$ such that $a_(i+1)$ divides $a_i$ for $1 <= i <= k$ and $a_1 = n, a_(k+1) = 1$.

Find the answer modulo $10^9+7$ for $(n,k) = (1101^17 times 2019^29, 3 times 367 times 673)$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #220
#problem-heading(220, [Fibonazi])

We define $f(i) = f(i-1) + f(i-2)$ and $F(i) = i^2 f(i)$.

Find $(sum_(i=1)^N F(i)) mod 10^9+7$.

$N = 10^18, f(1) = 1, f(2) = 1$.

*Hint*: #link("https://www.geeksforgeeks.org/matrix-exponentiation")[#text(fill: main-dark-color)[https://www.geeksforgeeks.org/matrix-exponentiation]]
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Problem #221
#problem-heading(221, [Harvey’s Shot])

Harvey is set on a mission to test his luck. To test a person's luck there is a circular room which is marked with $180$ points with numbers $1,2,3,dots,180$ written on them on the circumference equidistant from the adjacent points. Harvey stands at the point $1$ on the boundary with a gun in his hand. He shoots the gun aiming inside the circle at any of the marked points from $2$ to $90$ ($90$ included). Assuming an elastic collision between the bullet and the wall the bullet reflects as soon as it touches any point on the circumference. If the bullet reaches the point $1$ it hits Harvey and he dies. The bullet stops when it reaches a point where the number written on it is smaller than that of the number written on the point from which it was reflected.

Given that Harvey chooses the point where he shoots randomly, let the probability that Harvey dies in the game be $m/n$ ($m$ and $n$ are coprime). Enter your answer as $m times n$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #222
#problem-heading(222, [Houdini and Picking Cards])

Houdini has a deck consisting of $10^6$ cards, where the $i$-th card (starting with $1$) is labeled with the number $i$. He randomly picks two cards from the deck, and wants to find the probability that one of the card labels is divisible by the other. The probability can be written in the form $m/n$ where $m$ and $n$ are coprime integers. Enter your answer as $m+n$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #223
#problem-heading(223, [Lines and a Point])

You are given a set of lines $S colon.eq x(6a+b) - y(11a+2b) = 3a-183b$ for all real values of $(a,b)$ and a point $(713,732)$. A closed curve is formed by taking the reflection of this point from all the lines in set $S$.

Let $A$ be the area enclosed by this curve, find $A/upright(pi)$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #224
#problem-heading(224, [Circles and a Point])

#align(center)[
  #v(5pt)
  #include "figures/p224.typ"
  #v(5pt)
]

Given integer $a = 100$.

Consider points $A(2a,0),B(0,2a),C(a,0),D(0,a)$ and a line $A B$.

Point $E$ is on the line at point $(x,y)$ and the circles intersect again at point $F$.

As point $E$ moves from $A$ to $B$ let the distance traveled by point $F$ be $d$.

Find $[d]$. Where $[thin]$ is the greatest integer function.

*Note:* A new pair of circles is formed for every location of $E$ using the points $A C E$ and $B D E$. The second point of intersection is labeled $F$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #225
#problem-heading(225, [Totient Fun])

Find the first integer $n$ ($n > 0$) such that $phi(n) = phi(n+1) = phi(n+2)$.

Enter the answer modulo $1729$.

$phi(n)$ is totient of $n$.

You can read about the totient function here: #link("https://en.wikipedia.org/wiki/Euler's_totient_function")[#text(fill: main-dark-color)[Euler Totient Function]]
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #226
#problem-heading(226, [The Pass])

The King of Zugzwangtria is dead in a war. Since the king had no successors, his existing marvellous brothers Dratox and Keraze are claiming for the throne. Dratox being the elder has the right on the throne but his younger brother Keraze refuses and threatens to war.

The wise ministress Freixola suggests both the players to play a game, whoever wins would get the throne. Both agree to this! The game is as follows:

First Dratox picks up a natural number from $1$ to $N$, call it $a$.

Then Keraze choses a real number $b$ of the form $a^(1+sqrt(i))/i^sqrt(a)$ (where $i$ is some integer from $1$ to $N$).

Then Freixola tries to pass the golden stone through the magical ring. If the stone can possibly pass through the ring then Dratox wins, else Keraze wins.

The golden stone is a rigid regular tetrahedron of side length $a$ and the magical ring is a rigid circle of radius $b$ (negligible width).

Let $X$ be the total number of $a$'s for which Dratox has a guaranteed win.

Enter $X^X mod 10^9+7$, $N = 10^123456789$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #228
#problem-heading(228, [Generating Sets])

For given numbers $n$, $a$ and a set $S$, define the set $a^S = {a^t mod n:t "is in" S}$.

For $n = 998244353$ and $S =$ set of natural numbers, find
$ sum_(i=1)^n abs(i^S) $

Give answer modulo $10^9+7$.

*Note:* $abs(X)$ denote the size of set $X$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #229
#problem-heading(229, [Powerful Roots])

Let
$
f(i) = cases(
  f(i-1)+2f(i-2)+4f(i-3)\,quad & i > 3,
  i\,quad & i <= 3
)
$

We define a polynomial $P(x) = x^n + a_(n-1) x^(n-1) + dots.c + a_1 x + a_0$ where $a_i = f(2^i) mod M$.

Let the roots of $P(x)$ be $b_1,b_2,dots,b_n$.

Let
$ S(k) = sum_(i=1)^n b_i^k $

Find $S(k) mod M$ for $n = 60, k = 123456789987654321, M = 998244353$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #230
#problem-heading(230, [Points])

There are $K$ points and $M$ lines such that

- Every line contains $8$ points.
- Every point lies on $8$ lines.
- Any two distinct lines intersect in a unique point.
- Any two distinct points lie on a unique line.

Lines may be straight or curved. What is $K times M$?
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #231
#problem-heading(231, [Maximal Set Reduction])

Let $S = {1,2,3,...,2019}$. Find the maximum value of $x$ such that when any of the $x$ elements are removed from the set then there exist two distinct elements in the remaining set having their sum equal to $2019$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #232
#problem-heading(232, [A Long Walk])

You have a set $S$ that stores distinct points.

Let the points consisted in a walk with $30$ teleportations be $(x_0,y_0),(x_1,y_1),dots,(x_30,y_30)$. $(x_0,y_0) = (0,0)$, $(x_30,y_30) = (X,Y)$.

For $1 <= i <= 30$, $(x_i,y_i) = (x_(i-1),y_(i-1)+2^(i-1))$ or $(x_i,y_i) = (x_(i-1)+2^(i-1),y_(i-1))$.

A walk is called a valid walk when $Y$ lies in the range $[123456789,987654321]$.

In a valid walk for $0 <= i <= 29$, insert point $(X-x_i,Y-y_i)$ in set $S$.

Find the maximum size of set $S$ by taking $28$ valid walks.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #233
#problem-heading(233, [Manhattan Count])

Let $f(n,x)$ be a function that denotes the number of ways to travel from $(0,0)$ to $(n,n)$ in a 2-dimensional grid without touching/crossing the diagonal formed by the points $(0,x)$ and $(n-x,n)$. From a given point $(a,b)$ you can either travel to $(a+1,b)$ or $(a,b+1)$ in one step.

Define $g(n) = sum_(i=1)^n f(n,i)$.

Calculate $g(100000) mod 10^9+7$.

Example: $f(2,1) = 2$, The two valid paths being

#align(center)[
  #v(5pt)
  #include "figures/p233.typ"
  #v(5pt)
]
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #234
#problem-heading(234, [Expected GCD])

You have $2019$ cards in a deck numbered as $1,2,3,dots,2019$. You draw two cards from the deck without replacement. Let $x$ be the expected value of the gcd of the two numbers. Report your answer as $[1000 x]$, where $[x]$ denotes Greatest Integer Function of $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #235
#problem-heading(235, [Divisor Sum])

Let $d(n)$ be the smallest prime divisor of $n$.

Calculate
$ sum_(k=1)^15120 d(15120!+k) $
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #236
#problem-heading(236, [Frequency Restriction])

Let $f(n,m)$ count the number of sequences $(a_1,a_2,dots,a_m)$ of length $m$ and $1 <= a_i <= n$, such that for each $1 <= i <= n$, $"cnt"(i) <= i$, where $"cnt"(i)$ is the number of times $i$ occurs in the sequence.

Find $f(50,1000) mod 10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #237
#problem-heading(237, [Another Permutation Statistics])

Let $a(n)$ be the number of permutations $pi$ of length $n$ satisfying $pi(y) = x$ if and only if $pi(n-x+1) = y$ for all $x$.

Find $sum_(k=1)^(10^6) a(k) mod 10^9+7$.

Example: $a(4) = 2$ and two permutations are : $2413,3142$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #238
#problem-heading(238, [Power GCD Sum])

Evaluate
$
X = sum_(i=1)^n (sum_(d|i) (sum_(gcd(k,i)=d,0<=k<=i) a^k)/(sum_(gcd(k,i)=d,0<=k<=i) a^(-k)))
$
for $n = 7777777, a = 788788$.

Since $X$ may be large, give your answer as $X mod 10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #239
#problem-heading(239, [Divisor Count])

The function $d(n)$ denotes the number of positive divisors of an integer $n$. For example, $d(6) = 4$, because there are $4$ divisors of $6$ and they are $1$, $2$, $3$ and $6$.

We create a function $f(n)$ which denotes _the summation of the number of divisors of the divisors_ of an integer $n$.

For example, $f(6) = d(1)+d(2)+d(3)+d(6) = 1+2+2+4 = 9$.

Find $sum_(i=1)^2019 f(i!) mod 10^9+7$, where $n!$ means factorial of $n$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #240
#problem-heading(240, [Sieve of Pi-thagoras])

Everybody knows the Sieve of Eratosthenes, but does anyone know the Sieve of Pi-thagoras? In the following pseudocode, assume that "`real`" represents a real number with infinite precision.

```c
real sieve_of_pithagoras (integer n) {
    real ans = 0;
    for (i = 1; i <= n; i += 1) {
        for (j = i; j <= n; j += i) {
            ans += 1 / j^4;
        }
    }
    return ans;
}
```

"`^`" in the code implies the power operator.

Bunty is a kid living in the year $3019$. He has access to computation power so immense that he can run this code for as large an integer as possible. You challenge Bunty to find a finite integer input $n$ so that it returns at least $r$. Deep down, based on your math skills, you know that this isn't possible for any $r >= r_0$. You are required to find $[10^18 r_0]$ modulo $10^9+7$, where $[x]$ denotes the integral part of $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #241
#problem-heading(241, [Bunty’s Algorithm])

Bunty recently learned about the significance of $d(n)$, the smallest prime divisor of $n$, through which he can quickly extract prime factorisations of numbers!

He sits down and drafts an interesting sequence of integers where the integers are bound between the values $2$ to $1,000,000$. To him, a sequence $a_i$ is interesting if $a_i$ is strictly increasing and the corresponding sequence $d(a_i)$ is also strictly increasing.

Bunty attempts to write all interesting sequences but soon realises that there are too many of them. Can you, the algorithmist, count the number of interesting sequences modulo $10^9+7$?
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #242
#problem-heading(242, [Unlucky Seven])

Find the remainder obtained when $77 dots.c 7$ ($10^16$ times) is divided by $12345678$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #243
#problem-heading(243, [Determinant])

Let $A_(n times n)$ be a square matrix of order $n = 12345$.

The elements of the matrix are defined as $A_(i j) = abs(i - j)$.

Find $abs(A) mod 10^9+7$, where $abs(A)$ denotes the determinant of the matrix $A$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #244
#problem-heading(244, [Fun with Divisors Sum])

Let $f(a,b)$ denote the sum of divisors of $a b + 1$ which lies in the range $(a,b)$.

For example, $f(3,23) = 5+7+10+14 = 36$.

Calculate $sum_(i=1)^(p-1) f(i,p)$ for $p = 1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #245
#problem-heading(245, [Sequence Triples])

Let $f_m$ denote the number of sequence triples $({x_0, x_1, dots, x_m}, {y_0, y_1, dots, y_m}, {z_0, z_1, dots, z_m})$ such that:

+ $x_0 = y_0 = z_0 = 0$.
+ Sequences $x_i, y_i, z_i$ are all strictly increasing.
+ $x_m + y_m + z_m = 4040$.

Then calculate $(sum_(i=1)^infinity f_i) mod 10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #246
#problem-heading(246, [Bella Ciao!])

El Professor has a solid plan to heist Royal Mint. Rio needs to hack into its digital security system. Rio chooses a random number between $5$ and $10^10$ (both inclusive). Given two numbers $A = 94069$ and $B = 50549$, the system can be hacked if the number is chosen can be expressed as $A x + B y$, where $x$ and $y$ are non-negative integers. What is the probability Rio hacks into the system?

Report your answer as $floor("probability" times 10^12)$, where $floor(x)$ denotes the integer part of $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #247
#problem-heading(247, [Too Difficult])

Given a sequence a consisting of $n$ integers, an inversion is defined as a pair of indices $(i,j)$ such that $i<j$ and $a[i]>a[j]$. Let $"inv"(a)$ denote the total number of inversions in $a$. A permutation $p$ of order $n$ is a sequence $p$ of size $n$ such that for any $1 <= i <= n$, there exists a valid index $j$ such that $p_j = i$. For example, the sequence $p = (1,3,2,4)$ is a permutation of order $4$, and it has $1$ inversion, namely $(2,3)$.

Calculate the sum of $"inv"(p)$ over all distinct permutations of order $n = 15$. (Two permutations $p$ and $q$ are different if there is an index $i$ for which $p_i eq.not q_i$.)
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #248
#problem-heading(248, [Largest Angle])

Given three points $A(10^17,10^17)$, $B(3 times 10^17,3 times 10^17)$ and $C(X,0)$.

If $angle A C B$ is the maximum possible, calculate $floor(sqrt(X))$, where $floor(x)$ denotes the integer part of $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #249
#problem-heading(249, [Mysterious Figure])

One mysterious night a random shape and a box appeared on a square piece of land. Upon close inspection, it was realized that the shape was in fact not at all random and held the passcode for the box. You being the crypto expert were called to open the box. The box read as follows: "The enclosed red area holds the answer". You are provided with the length of the inner squares, which is $98765$. Please find out the passcode, floored down to the nearest integer.

#align(center)[
  #v(5pt)
  #include "figures/p249.typ"
  #v(5pt)
]
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #250
#problem-heading(250, [Random Expectations])

Adarsh decided to attend CEN-105 lecture feeling he will learn something new. It turns out the class is extremely boring. He begins writing a random number starting with "$0.$". After the decimal point, he writes a long string of numbers, formed by randomly choosing any prime between $1$ and $9$ repeatedly (ex. $0.7223557333 dots.c$).

Let the expected number formed be represented as $p/q$, where $p$ and $q$ are coprime integers, find $p+q$.

You can learn about expected value #link("https://brilliant.org/wiki/expected-value")[#text(fill: main-dark-color)[*here*]].
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #251
#problem-heading(251, [Ricket Numbers])

Rick is working on an important mission but Beth has asked him to look after Morty. Rick doesn't want to be disturbed so he wants to keep Morty busy. He knows how much Morty loves challenges and how much he hates numbers, so he asks Morty to "help" him by counting all the rickety numbers upto $12345678$.

A number $N$ is said to be Ricket if and only if it is composite and there exists a way to permute all its divisors (except $1$) onto a circle such that the GCD of any two adjacent elements is greater than $1$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #252
#problem-heading(252, [Pegs on Board])

We define $f(R,C)$ as follows:

Consider a $2R times 2C$ chessboard. $f(R,C)$ is the number of ways in which you can place $R times C$ pegs on the white coloured squares such that no two pegs are diagonally adjacent to each other.

Calculate $f(12345678,87654321)$ modulo $1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #253
#problem-heading(253, [Another Board Game])

Annu wanted to invent a board game to play with his girlfriend Chunnu on their next date. He came across the following problem while trying to look for optimal coloring for his board game.

Consider an $N times N$ board where each cell can be coloured black or white. Let $x_i$ denote the number of white cells in the $i$th row and $y_j$ denote the number of white cells in the $j$th column. Define $f(N)$ as the maximum possible value of the sum:
$ sum_(i=1)^N x_i (N - y_i) $

Calculate $f(13579)$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #254
#problem-heading(254, [Small permutations])

For a permutation $p$ of size $n$, an index $r$ is called "small" if $p(r) = min(p(1),p(2),dots,p(r))$. Calculate the number of permutations of size $4040$ with exactly $2000$ small indices modulo $1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #255
#problem-heading(255, [Infinite graph])

Let $G = (V,E)$ be an infinite undirected graph whose vertices are ordered pairs of integers, that is $V = ZZ^2$. Given two natural numbers $a$ and $b$, two vertices $(x_1,y_1)$ and $(x_2,y_2)$ share an edge if and only if either one of these conditions hold: 1. $abs(x_1 - x_2) = a$ and $abs(y_1 - y_2) = b$, or 2. $abs(x_1 - x_2) = b$ and $abs(y_1 - y_2) = a$.

Let's define the following functions: $f(a,b)$ be $1$ if the graph is connected (there exists a path between any two vertices), and 0 otherwise, and $g(i) = sum_(j=1)^(10^6) f(i,j)$.

Evaluate $sum_(i=1)^(10^6) g(i)$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #256
#problem-heading(256, [Many jumps])

Anya is currently at $x_0 = 100$. She will do $10$ jumps as follows:

If after $i$ jumps, she is at coordinate $x_i$, then she will jump to some coordinate in the range $[0,x_i]$ chosen uniformly.

Let $P([a,b])$ denote the probability that after $10$ jumps Anya lies in the range $[a,b]$. Also, let
$ L = lim_(x arrow 0) P([1,1+x]) / x $

Find the value of $floor(L times 10^6)$, where $floor(x)$ denotes the integer part of $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #257
#problem-heading(257, [Subset union])

$X$ is a set of size $202020$. Let $S_1,S_2,dots,S_100$ be subsets of $X$, such that:

- For any distinct indices $a,b,c$, the union of $S_a,S_b,S_c$ is not equal to $X$.
- For any distinct indices $a,b,c,d$, the union of $S_a,S_b,S_c,S_d$ is equal to $X$.

Find the maximum value of $abs(S_1) + abs(S_2) + dots.c + abs(S_100)$.
#text(fill: main-dark-color)[#footnote[
  $abs(X)$ denote the size of set $X$.
]]
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #258
#problem-heading(258, [Centroids])

Rishak was getting bored during the lockdown. He wanted to text someone special, but his internet was not working, so he started drawing instead. He drew a rectangle $A B C D$ and then labelled $G_1$ as the centroid of $triangle.stroked.t #h(0pt) A B C$ and $G_2$ as the centroid of $triangle.stroked.t #h(0pt) A C D$. The length of $G_1 G_2$ was $377427$. Also, the perimeter of the rectangle $A B C D$ was measured as $3184398$. Can you find out the area of the rectangle?
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #259
#problem-heading(259, [Teleportation])

Nik wants to meet Anya, and so he fires up his teleporter. The teleporter works by independently choosing a random real number between $0$ and $1$ thrice. Suppose the three numbers it chooses are $X$, $Y$ and $Z$. The teleporter then transports Nik to $x = max(X,Y,Z)$.

As Anya is smart, she will wait for Nik at the coordinate where the expected distance from her to where Nik lands will be the minimum. If she waits at $x = L$, find $floor(L times 10^9)$, where $floor(x)$ denotes the integer part of $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #260
#problem-heading(260, [Totient sum])

Let
$ L = sum_(n=1)^infinity phi(n) / (2020^n-1) $

Here $phi(n)$ is the totient function. It can be shown that $L$ can be represented as $P/Q$, where $P$ and $Q$ are coprime integers, and $Q equiv.not 0 med (mod 1000000007)$. Find the value of $P dot Q^(-1)$ modulo $1000000007$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #261
#problem-heading(261, [Occupying Houses])

There are $65$ houses arranged along a street and numbered from $0$ to $64$. Initially, only the $0$#super[th] and $64$#super[th] houses are occupied and the rest are empty. Then, one by one $63$ buyers come to purchase the remaining houses. Each buyer can choose to occupy a house lying in the center of two consecutive occupied houses. In other words, if the $a$#super[th] and $b$#super[th] houses are occupied and no houses between them are occupied, then the buyer can occupy the $((a+b)/2)$#super[th] house.

Calculate the number of ways all the remaining $63$ houses can be occupied modulo $1000000007$. Two ways are different if the order of occupying the houses is different in both ways. (e.g. the $2$#super[nd] person can either occupy the $16$#super[th] house or $48$#super[th] house, both of which are different ways.)

#problem-tag(("combinatorics", "recursion"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #262
#problem-heading(262, [Jumping Frogs])

A circular array consists of $7$ points such that the distance between any two neighboring points along the circumference is $1$ unit distance. Two frogs are currently lying on the array.

Every second, each frog jumps to one of the adjacent points, with equal probability. Let $f(x)$ be the expected time after which both the frogs occupy the same position in the array if initially, they were $x$ unit distance apart.

You are required to find the value of $f(1) dot f(2) dot (3)$.

#problem-tag(("probability", "expected value"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #263
#problem-heading(263, [Subset Intersection])

Let $S$ be a set of size $n$. Let $T_k$ be the set of all ordered $k$-tuples $(A_1,A_2,A_3,A_4,dots,A_k)$ where $A_i$ is a subset of $S$, such that $A_1 union A_2 union A_3 union A_4 union dots.c union A_k = S$.

Given $n = 2718281828$ and $k = 3141592653$, find the sum of $abs(A_1 sect A_2 sect A_3 sect A_4 sect dots.c sect A_k)^2$ for all $k$-tuples $(A_1,A_2,A_3,A_4,dots,A_k)$ belonging to $T_k$.
#text(fill: main-dark-color)[#footnote[
  $abs(X)$ denote the size of set $X$.
]]
The answer can be huge, so compute it modulo $(10^9+7)$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #266
#problem-heading(266, [The Set 128])

Let $T$ be an array of size $127$ with $T[i] = i$ ($T$ is $0$ indexed). In other words $T = {0, 1, 2, dots, 126}$. Let $M$ be a set of numbers such that:
$ M = {a_1/127 + a_2/127^2 + a_3/127^3 + a_4/127^4 : a_i in T, i = 1,2,3,4} $

All the numbers in $M$ are arranged in ascending order. Let $x$ be the $20212021$#super[st] term. Answer the nearest integer of $10^7 x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #267
#problem-heading(267, [Sum it up Rationally!])

Let $F(p)$ be the number of different rational numbers $X$ in the range $(0,1)$ such that when $X$ is written as an irreducible fraction, the numerator and denominator sum to $10^p$. In other words, if $X = a\/b$, such that $a$ and $b$ are coprime, and $a + b = 10^p$.

Find summation $F(i)$ from $i = 1$ to $i = 10^10$, modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #268
#problem-heading(268, [Hypothetical Dice])

Jaideep is playing a game with $1234567$-sided dice, its sides are numbered from $1$ to $1234567$ and each side has an equal probability of appearing. First, he rolls a die and if the value obtained on the die was $k$, he takes $k$ dice and rolls all of them. Then find the expected value of the sum of values on all $k+1$ dice.

#problem-tag(("probability", "expected value"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #269
#problem-heading(269, [Escaping the Elf])

You are trapped at the center of a big circle of radius $10^9$ units by a mischievous magical elf. Every minute he asks you to choose a direction in which you want to move. In the $i$th minute, you will be allowed to move exactly $i$ units in that direction.

However, the elf wants to make it hard for you to escape, so every time you choose any direction he decides whether he wants to allow you to move in the chosen direction or in the direction exactly opposite to your choice. So, if you choose to move towards the left, then the elf can force you to move towards the right, or may allow you to move left.

You must take exactly $i$ steps in the ith minute. Find the time in minutes required to escape if both you and the elf play optimally.

*Note:* "_Escaping_" refers to reaching a point that is outside of the circle.

#problem-tag(("geometry",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #270
#problem-heading(270, [Yet another sum problem])

Let $S = sum_(j=0)^p binom(p,j) binom(p+j,j) 3^j$.

Calculate $S mod p^2$ for $p = 10^9+7$.

#problem-tag(("combinatorics",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #271
#problem-heading(271, [GCD Fun])

Let $f(x_1,x_2,x_3,dots,x_n) = x_1 x_2 dots.c x_n dot 2^gcd(x_1,x_2,dots,x_n)$. Let $S_n$ be the sum of $f(x_1,x_2,x_3,dots,x_n)$ over all sequences $(x_1,x_2,x_3,dots,x_n)$ where $1 <= x_i <= 10^6$. Find $S_31415$ modulo $10^9+7$.

#problem-tag(("gcd",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #272
#problem-heading(272, [The Quirky Binomial])

$ f(n) = sum_(i=0)^floor(n/2) binom(n-2i,2i) $

Find $(sum_(i=0)^(10^6) f(i)) mod med (10^9+7)$.

#problem-tag(("binomial coefficient", "observation"))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #280
#problem-heading(280, [777 Strikes Again])

Given $N = 777 dots.c 777$ ($19$ digits). Find the number of values $r$ ($0 <= r <= N$) such that $binom(N,r)$ is divisible by $31$. Since the number of such values can be huge, compute the answer modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #281
#problem-heading(281, [Open Sets])

Let $n = 192837$. For each $i$ from $1$ to $n$, let $x_i$ and $y_i$ be two independently chosen random numbers from $(0,1)$. Let $a_i = min(x_i,y_i)$, $b_i = max(x_i,y_i)$, and $S$ be the intersection of open intervals $(a_i,b_i)$. In other words,
$ S = sect.big_(i=1)^n (a_i,b_i) $

It is easy to see that $S$ is itself an open interval. Find the expected length of $S$.

It can be shown that the answer can be expressed as $p/q$, where $gcd(p,q) = 1$ and $q equiv.not 0 med (mod 998244353)$. Output $p dot q^(-1) mod 998244353$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #282
#problem-heading(282, [Game Time])

Let $a_(i+1) = (c times a_i + d) mod m$ where $c = 5447196$, $d = 1953840$ and $m = 998244353$ be a pseudo random number generator for $0 <= i <= N-3$ where $N = 100000$ and $a_0 = a_(N-1) = a_N = 0$.

One day, Taniya created a game in which there were $N$ blocks arranged sequentially. A player starts at the $1$st block. To go from the $i$th block to the $(i+1)$th block, the player has to take a jump. The jump will succeed with probability $p$, meaning that the player will go to the $(i+1)$th block with probability $p$, otherwise he will have to start from the beginning and will be landed at the $1$st block. The game ends when the player reaches the $N$th block. Further, there is a penalty of $a_i$ coins each time a player lands on block $i$. Taniya was not sure what value to pick for $p$ and so she randomly selected a number from $[0.5, 1]$. Calculate the Expected number of coins a player has to pay before the game ends.

It can be shown that the answer can be expressed as $p/q$, where $gcd(p,q) = 1$ and $q equiv.not 0 med (mod m)$. Output $p dot q^(-1) mod m$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #283
#problem-heading(283, [Count the Assignments])

Mark is working on a battleground game where he needs to develop a lobby-making system which assigns players to the teams. Since this game requires extreme teamwork, there needs to be at least $2$ players in each team. However, there is no restriction on the maximum number of players that can be assigned to a particular team.

Mark has decided to have $100$ players and $25$ teams in the lobby. He wants to know the number of ways to assign these players to the teams. Since the answer can be large, you are required to find the answer modulo $(10^9+7)$.

Two assignments are considered different if it is possible to find a pair of players, who belong to the same team in one assignment and to different teams in another assignment.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #284
#problem-heading(284, [Beautiful Grids])

Let there be a $2718281 times 2718281$ grid of squares with some squares coloured black and others coloured white. It is not possible to have unicoloured grids, i.e. there must be at least one square of each colour in this grid.

A grid is called _beautiful_ if it looks the same even when the entire square is rotated by $90degree$ anticlockwise around its center any number of times. A _beautiful_ grid also looks the same when it is reflected across a line joining mid points of opposite sides or a line joining opposite corners. Find the number of possible _beautiful_ grids. Since the answer can be large, compute the answer modulo $(10^9+7)$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #285
#problem-heading(285, [Xor Tree])

You are given a #link("http://courses.ics.hawaii.edu/ReviewICS241/morea/trees/Trees-QA.pdf")[#text(fill: main-dark-color)[rooted tree]] with $2^N$ nodes numbered from $0$ to $2^N-1$. It is rooted at node $0$. For all other nodes $i$, their parent is node $j$ such that $j < i$ and $i$ ^ $j$ is minimised, where ^ denotes the #link("https://en.wikipedia.org/wiki/Bitwise_operation")[#text(fill: main-dark-color)[bitwise XOR]] operator.

For example, parent of node $3$ will be node $2$ as: \
$3$ ^ $0 = 3$ \
$3$ ^ $1 = 2$ \
$3$ ^ $2 = 1$

Let $f(N)$ be the sum of all pairwise distances modulo $10^9+7$ for a tree with $2^N$ nodes, where distance between two nodes in a tree is defined as the number of edges in the shortest path between them. $f(1) = 1$, $f(2) = 10$.

Find $f(1234567654321)$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #286
#problem-heading(286, [Tiling Game])

Alice and Bob are playing a game on a $n times m$ grid. Initially, the grid is empty. On each move, a player can place either a $1 times 1$ domino, or a $1 times 2$ domino (either vertically or horizontally), such that the new domino does not partially or completely overlap with any previously placed domino. Alice moves first. The player who cannot make a move loses the game.

For an $i times j$ board, define $f(i,j) = 1$ if Alice wins with optimal play; 2 if Bob wins with optimal play.

Calculate $sum_(i=1)^989898 sum_(j=1)^989898 f(i,j)⋅(i+j)$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #287
#problem-heading(287, [Heptagonal Distances])

Let there be a regular Heptagon inscribed in a circle of radius $357$ units. Find the sum of the square of distances between all pairs of vertices of the Heptagon. In other words, let $v_1,v_2,v_3,dots,v_7$ be the vertices of the Heptagon, and $D_(i,j)$ be the distance between vertex $v_i$ and $v_j$. Find $S = sum_(1 <= i < j <= 7) D_(i,j)^2$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #288
#problem-heading(288, [Stonks])

The stocks of a company were valued at $N = 123456$ on day $0$. Every day for the following $M = 217127$ days, the value either rose by $1$ or decreased by $1$. Note that the value never remained the same. After $M$ days, the final value was observed to be $172213$.

Determine the number of distinct ways in which the stock value could have changed over the $M$ days, such that it never exceeded $L = 200000$.

Since the number of ways can be huge, print them modulo $10^9+7$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #289
#problem-heading(289, [The Cubone Problem])

A cube of side $12345$ units is inscribed in a right circular cone having ratio of Height to Radius as #box($9876:1$). It is inscribed such that one face of the cube is contained in the base of the cone. Calculate the Radius $R$ of the Cone.

You are required to find $[10^5 R]$ where $[x]$ denotes the integral part of $x$.
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #299
#problem-heading(299, [Merge it!!!])

You are given an array of integers of length $1000$, the array is given by the following recurrence relation: $a[i] = a[i-1]^a[i-1] mod 100003$ and $a[0] = 2$. You can perform the following operation on it:

In one operation you can select any two adjacent elements $X$ and $Y$, remove both of them and place element $X+Y$ in their old position. After performing this operation you score increments by $X+Y$.

E.g. if you combine $4$ and $8$, score will increase by $12$. Find the expected value of the final score after performing the operation $999$ times. Report the integer part of your answer.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #300
#problem-heading(300, [Being the CR])

You are the CR of your class. One day, $5000$ students of your class gathered in a row. The professor assigned you to arrange the students in increasing order of their enrollment number.

For rearranging students you follow the given strategy:
+ Start from the beginning of the row.
+ Inspect the first two students' enrollment numbers and swap them if second student's enrollment number < first student's enrollment number.
+ Repeat Step 2 for (2#super[nd] student, 3#super[rd] student), (3#super[rd] student, 4#super[th] student) and so on.

You decide to follow the above strategy $2022$ times.

Find the number of different initial arrangements of students that will lead to a sorted sequence after the whole process. Report the answer modulo $1000000007$.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #301
#problem-heading(301, [Bi-Power])

How many numbers exists between $0$ to $2^N-1$ which are divisible by $3$ and satisfy the divisibilty test for $3$ in their binary representation as well. Report the answer modulo $1000000007$ for $N = 123456789$.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #302
#problem-heading(302, [Tennis Tournament])

In a tennis tournament, $N = 1234567890$ people participate.

The organizing committee numbered all the people as $1,2,3,dots,N$ based on their abilities (ability of participant $1$ > ability of participant $2$ > ability of participant $3$ > $dots.c$ > ability of participant $N$).

Every participant has the same number (say $M$) of friends in the tournament. A participant calls himself *superior* if his ability is greater than more than half of his friends.

For example, if $M = 13$, then a participant will consider himself *superior* if his ability is greater than $6$ of his friends; for $M = 14$, a participant will be *superior* if his ability is greater than $7$ of his friends.

Find the maximum possible number of participants that can consider themselves as *superior*.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #303
#problem-heading(303, [Las Vegans])

Jack and John 2 vegans, after getting a job, go to a casino. There are two games in the casino:

*Game A:* Both the players run a machine and get a number each. If both numbers have $2$ and $3$ as their only common prime factors (mathematically if $a = 2^u 3^v x$ and $b = 2^w 3^z y$ with $gcd(x,y) = 1$), then they get $2$ points. Else they get no points.

*Game B:* Both have a $6$ mm matchstick. They throw it together on a large rules page, where the distance between each line is $6$ cm. On landing each matchstick will either cut a line or not. They get $1$ point if both the matchsticks cut any line.

If prize pool of Game A is $1000$ dollars, then what should be the prize pool of B such that both have equal winnings if initial cost is same.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #304
#problem-heading(304, [Radicalism])

Rainboy always hated irrational numbers and he hated radicals even more, to irritate him RadeWoosh came up with a very irritating problem which involved irrational numbers. The problem can be formally stated as below:

RadeWoosh wants Rainboy to express $(sqrt(3) - sqrt(2))^(999 dots.c 9 med (18 "digits"))$ as $sqrt(a) - sqrt(b)$ where $a$ and $b$ are consecutive whole numbers and $a > b$. Help Rainboy to find the $a$ modulo $1000000007$.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #305
#problem-heading(305, [Creep Toe])

You are given a circular necklace that has $m times n$ beads. Each bead is initially uncoloured. Let $f(m,n)$ denote the number of ways you can assign colours to the necklace beads where each bead can have one of $m$ ($m >= 2$) colours, using each colour on exactly $n$ beads ($n >= 1$). $2$ Necklaces are considered same if they give the same view after rotating. Find $sum_(n=2)^4 sum_(m=2)^5 f(m,n)$.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #306
#problem-heading(306, [PP vs NP])

Rob is a chess freak but he also likes to play Sudoku. Since he is bad at both the games, he wants to make a new game. In this game he will take a $n times n$ chess board. He will then place all the numbers $1,2,3,dots,n$ in each row and in each column. But to win the game you have to place these numbers in such a way that in each row, all the numbers from $1$ to $n$ are placed and similarly in each column numbers from $1$ to $n$ are placed. Also for each row and column, then numbers on white squares sum to the same amount as the number on black squares. He wants to get the chess board printed. He likes to know for what value of $n$ such a board can be made. In other words, for what value of $n$ such a placement is possible for at least one configuration. Find the sum of all such $n <= 10^123$. Since this number is large, find it modulo $1000000007$.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #307
#problem-heading(307, [Eloquent])

Alice is very confident about her Vocabulary, according to her _lively_ words are those which contain only characters `A`, `B`, `C` and the frequency of each of them should be the same. Alice has a word $S$ of $1999998$ characters (`A`, `B`, `C` each occur $666666 $ times). Now Bob has a word $T$ (which is _lively_ as well) and he wants to know the minimum number of moves he needs to make in order to change the word from $S$ to $T$ in the worst case (irrespective of the words $S$ and $T$). In a single move Bob can only swap neighboring letters. Report the answer divided $2$ modulo $1000000007$.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #308
#problem-heading(308, [Deathnoted])

Tourist is a very curious person by nature. He has a infinite square notebook, on the $i$#super[th] page of the notebook he writes the number of ways he can write $i$ as sum of the area of two squares having integral side lengths. As he is eternal he will keep writing such sum on each day till infinity. His friend Umnik is very curious to find out what the sum of numbers written on all these pages would be. Since the number can be too large, he wants to find the sum of numbers on each page divided by Tourist's lifespan. Mathematically, if $F(i)$ is the number written on each page, he wants to find $lim_(n arrow infinity) (sum_(i=1)^n F(i))/n$. Help Umnik in finding this number. Let this answer be $x$, report the integer part of $10^12 x$.

#problem-tag(("numberphile2022",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #310
#problem-heading(310, [Kelvin’s Counting Corundum])

Lord Kelvin has recently invented the kelvin scale. He is curious as to how many numbers from $A = 131003220303$ to $B = 251203160303$ (both inclusive) are co-prime with $273$.

Print the answer modulo $61074397$.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #312
#problem-heading(312, [Kuti-Pi’s Wet Farm])

Kuti-Pi has a circular farm of radius $1$ unit. He loves to irrigate his farm. For the next $N$ days, he chooses a random point on his farm and irrigates a circular area concentric with the farm, passing through the chosen point. Let $S$ be the total sum of the areas he has to irrigate in $N$ days. The probability of $S$ being less than $x$ ($0 < x < upright(pi)$) is $P(x,N)$.

Calculate $"Ans" = sum_(n=0)^infinity upright(pi)^n P(sqrt(3),n)$.

Report $floor("Ans" times 10^5)$.

$floor(a)$ denotes the Greatest Integer Function of $a$.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #313
#problem-heading(313, [So Close Yet So Far])

A random point is chosen inside a sphere of radius $1$ unit centred at a point $O$. This process is repeated until the chosen point is closer to $O$ than the previous point. Let $"Ans" =$ expected number of points chosen.

Report $floor("Ans" times 10^5)$.

$floor(a)$ denotes the Greatest Integer Function of $a$.

*Note:* Probability of the radius of a point being $r$ is proportional to $r^2$.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #314
#problem-heading(314, [Let’s be Wholesome])

$S = 1,3,5,7,dots,6969$.

A subsequence of length $3$, say ${a,b,c}$, is said to be bad if it satisfies the relation $a < c < b$.

Any rearrangement of $S$, say $P$, is said to be wholesome if there exists no bad subsequence of length $3$ in it.

Calculate the number of wholesome rearrangements of $S$.

Report the answer modulo $10^9+7$.

*Note:* A subsequence is a sequence that can be derived from the given sequence by deleting zero or more elements without changing the order of the remaining elements.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #315
#problem-heading(315, [Rangeela’s Madness])

There is an infinite 3D space of integer coordinates. Each point is colored by an unknown color, selected out of $666666$ options. The cost of an $L times B times H$ cuboidal region is $10^30 times L + 10^15 times B + H$. Rangeela wants to buy a cuboidal region that definitely has a cuboid inside it with all its corners having the same color but is lazy enough to not check the grid manually. Compute the values of $L$, $B$ and $H$ to minimize the cost incurred by Rangeela. Print $(L + 2 times B + 3 times H)$ modulo $1234567891$.

*Note:* $L$, $B$, $H$ denote the number of points, not the edges between the points.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #316
#problem-heading(316, [Murder Attempt \#4473])

Kaido is a sad boy. So, he wants to do some fun things like killing. Luckily for him, his $420420419$ friends decided to play a Squid Game along with him.

This version of the Squid Game is described as follows:

Everyone stands in a circle facing the centre. They are standing in positions numbered from $1$ to $420420420$ in clockwise sense. They have one gun which is currently held by the person in position $1$. He begins the game by shooting the person in position $2$.

Shootings are alternate, if the last shoot was left, the next is right. If it was right, the next is left. After shooting left, the gun is passed on to the left. After shooting right, the gun is passed on to the right.

Luckily for him, he has managed to witness the entire massacre and is the last person alive among all his friends.

Which position was Kaido sitting on to survive the massacre?

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #317
#problem-heading(317, [Death Sum])

Calculate
$ sum_(a_1=1)^n sum_(a_2=1)^(a_1) sum_(a_3=1)^(a_2) dots.c sum_(a_r=1)^(a_(r-1)) 1 $
for $n = 1000005$ and $r = 1000005$.

Report the answer modulo $1234567891$.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #318
#problem-heading(318, [Not My Scarf Not My Cap])

There are $2023$ men each having a cap and a scarf of their own. A woman collects caps and scarves of all these $n$ men and distributes each of them a cap and scarf randomly. Find the probability that for every natural number $k < 1011$ there does not exist a subgroup of men of size $k$ such that every man's scarf and cap belongs to someone in the subgroup.

The answer will be $p\/q$ (where $p$ and $q$ are co-prime), report it as $p dot q^(-1) mod med (10^9+7)$.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #319
#problem-heading(319, [Super Strings])

Consider all strings of length $n$ made up of characters `a`, `b` and `c`.

$A_n$ be the number of strings such that the substring `abc` occurs exactly once.

$B_n$ be the number of strings such that one of the substrings `aacc`, `bcab` and `cbba` occurs exactly once and the other two do not occur at all.

Find
$ sum_(n=100)^1000 (A_(n-1) B_(n+1) A_(n+1)) / (B_n B_(n+2) A_n) $

The answer can be expressed as $a\/b$ such that $a$ and $b$ are co-prime.

Report $a + b$.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #321
#problem-heading(321, [Honeycomb])

A regular hexagon of side length $a = 6$ is present inside a larger regular hexagon of side length $b = 18$. Initially, the smaller hexagon is placed such that one of its vertices coincides with that of the larger hexagon. Now, the smaller hexagon starts moving at an angle $theta$ from one of the touching edges such that $tan(theta) = 11 sqrt(3)$.

#align(center)[
  #v(5pt)
  #include "figures/p321_1.typ"
  #v(5pt)
]

If any edge of the smaller hexagon touches the larger hexagon, then the smaller hexagon "reflects off" (see GIF for clarification) according to laws of reflection, and the smaller hexagon always stays inside the larger one.

However, if any vertex of the smaller hexagon coincides with any vertex of the larger hexagon, then the smaller hexagon stops moving. If the total distance traveled by the centre of the smaller hexagon until it stops moving is $d$, then give the value of $d^2$.

*Note:* Data is given such that it will stop moving.

Here is a gif demonstrating the motion of the smaller hexagon (please note in this gif, $tan(theta) eq.not 11 sqrt(3)$):
#text(fill: main-dark-color)[#footnote[
  Source: #link("http://i.imgur.com/w6pTmLj.gif")[#text(fill: main-dark-color)[http://i.imgur.com/w6pTmLj.gif]]. This file is also attached to this PDF. Only several key frames of this gif are given here.
]]

#align(center)[
  #v(5pt)
  #include "figures/p321_2_1.typ"
  #v(5pt)
  #include "figures/p321_2_2.typ"
  #v(5pt)
  #include "figures/p321_2_3.typ"
  #v(5pt)
  #include "figures/p321_2_4.typ"
  #v(5pt)
]

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #322
#problem-heading(322, [John Walker])

John wants to walk along an infinitely long straight line with integer points. There are mines located at points $0,d,2d,3d,dots$ where $d = 2198200612608$. John occupies the open interval $(0,w)$ in the beginning and $w = 250000000$. Now, he can move along the line with a fixed positive integer stride length $s$ ($s < d$), that is, it can move from interval $(a,a+w)$ to $(a+s,a+w+s)$. John dies if his occupied interval has a mine in it.

Let $S_max$ and $S_min$ be the maximum and minimum stride length, required to keep John alive.

Evaluate $floor(S_max\/S_min)$.

*Note:* $floor(x)$ denotes the Greatest Integer Function of $x$. \
*Note:* It is guaranteed that atleast one valid s exists.

#problem-tag(("endgame 9.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #326
#problem-heading(326, [Digits Play])

Let $x$ be the maximum $77$ digit decimal number whose sum of digits is equal to the product of its digits.

Answer a $10$-digit number such that the $i$#super[th] digit from the left is ($j mod 10$), where $j$ is the frequency of the digit ($10-i$) in $x$.

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #327
#problem-heading(327, [My Disappointment is Immeasurable and My Day is Ruined])

Compute the following summation:
$ 4/upright(pi) sum_(m=0)^n integral_0^infinity (dif x)/(upright(e)^x + upright(e)^(-x))^(2m+1), quad n = 696969 $

Given that the answer is of the form $p/q$, where the greatest common divisor of $p$ and $q$ is $1$, find the value of $x$ where $x equiv p dot q^(-1) mod 1234567891$ and $0 <= x < 1234567891$.

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #329
#problem-heading(329, [Use Calculator])

Consider a number in base $10$, without leading zeros (zero is taken as $0$), written as digits made from identical straight segments.

#align(center)[
  #v(5pt)
  #include "figures/p329.typ"
  #v(5pt)
]

Now in each operation, we are allowed to move or even rotate any of these segments such that the final picture obtained is also a number.

For example, the number $69$ has total $12$ segments, so it can be changed to $427$, which has $12$ segments too.

Let $M(n)$ denote the largest number which can be obtained from $n$ using any number of such operations. Also, let $S(n)$ denote the sum of digits of $n$ in base $10$.

Find: $S(sum_(i=0)^N S(M(i)))$.

where $N = 10^2023-1$.

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #330
#problem-heading(330, [Pythagorean Quest])

Lucifer and Mamba are trying to construct a right-angled triangle. Lucifer chooses a positive real number randomly for the base and similarly, Mamba chooses a positive real number randomly for the perpendicular.

Given that the hypotenuse is smaller than $2003$, what is the probability of the absolute difference of the two chosen numbers being greater than $1$?

Print the greatest integer smaller than or equal to (answer $times 10^8$).

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #331
#problem-heading(331, [Colourful Wand])

The sorcerer is crafting a wand for himself that contains $101$ pearls in a specific sequence. Each pearl is magically generated and can be either _red_ or _blue_ in color, with an equal probability for each. The power of the wand is the maximum number of consecutive pearls of the same colour. The expected power of the wand is $x$.

$x$ can be represented as $p/q$ such that $gcd(p,q) = 1$. Find $p q^(-1) mod 1234567891$.

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #332
#problem-heading(332, [Chopper])

A very long stick is about to be passed through a special random chopper at speed $1$ m/s. Before passing the stick through the chopper, we put a special mark at some point on the stick. The special random chopper chops the stick at time $t$ after the previous chop (or time $t$ after starting for the first chop) with probability $5 upright(e)^(-5t)$.

If the expected value of the length of the stick with the special mark is $p/q$ in meters, where $gcd(p,q) = 1$, find $p dot q^(-1) mod 1000000007$.

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #333
#problem-heading(333, [Another Banger])

You have been given n characters $a_0,a_1,a_2,dots,a_n$. They are arranged in their lexicographical value, i.e. $a_0 < a_1 < a_2 < a_3 < dots.c < a_n$. Now, you have to determine the number of all the strings of length $n = 2702$ such that for every character equal to $a_k$ in the string, $a_k+1,a_k+2,a_k+3,dots,a_n$ must appear before it at least once.

Answer the value as modulo $1000000007$.

Note that it is not necessary to use all the characters in a string.

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #335
#problem-heading(335, [Power Game])

A number $x$ is called _powerful_ if it has $10^9+7$ digits such that every digit of $x$ is odd, and $x equiv 3125 med (mod 298023223876953125)$.

If the total number of _powerful_ natural numbers is $A$, find $A mod 10^9+7$.

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #337
#problem-heading(337, [Tuta Puta])

There are $k$ different types of characters in Tuta-Puta language. You start adding these characters to an empty string. At every addition, you choose any one of these $k$ characters with equal probability. You stop when every type of character occurs odd number of times in the string.

What is the expected length of your string if $k = 2282023$ ?

Given that the answer is of the form $p/q$, where the greatest common divisor of $p$ and $q$ is $1$, find the value of $x$ where $x equiv p q^(-1) mod med (10^9+7)$ and $0 <= x < 10^9+7$.

#problem-tag(("numberphile23",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #342
#problem-heading(342, [Digit Frequency])

Let $x$ be the largest $444$-digit decimal number that satisfies the following properties:
- The frequency of each digit in $x >= 111$.
- It should be a perfect square.
- The frequency of each digit in the square root of $x$ is also $>= 111$.

You need to find the sum of digits of its square root.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #343
#problem-heading(343, [Stringer])

Given a string of length $n$ made up of $5$ characters `a`, `b`, `c`, `d` or `e`.

Let $S(n)$ denote the number of strings of length $n$ such that any of `ab`, `ac`, `ad`, `eb`, `ec` or `ed` doesn't occur as a substring in the string of size $n$.

Calculate $(sum_(i=1)^(10^18) S(i)) mod 1000000007$.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #344
#problem-heading(344, [Lata’s Conundrum])

Lata has been tasked with a problem by her teacher, if she can solve it, she will pass the teacher's course.

The problem goes as follows: The teacher will randomly pick a set $S$ of $x$ distinct integers from $0$ to $2^N - 1$ where $N = 1234567891$.

In order to pass the class, Lata has to pick a subset of elements from set $S$ known as set $Y$, such that the number found by taking the xor of all the elements in the set $Y$ is present in the set $S-Y$. Note that $Y$ can be an empty set and xor of elements in an empty set is $0$.

The teacher is lenient so he will give Lata the chance to choose $x$ i.e. the size of set $S$.

Lata must pass the class or her parents will be disappointed in her, she asks for your help to find the minimum $x$ that will ensure that she will pass the class regardless of the set $S$ chosen by the teacher.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #345
#problem-heading(345, [Team Up])

There are $50000$ teams each containing $30$ players with experience points $1,2,dots,30$ and there are $1500$ teams containing $30$ players each with $0$ experience points. One mega team has to be formed from these players. The mega team can have any number of players.

Suppose the mega team have $n$ players and the experience point of $i$#super[th] player is $a_i$. Then the score of the mega team is defined as $sum_(i=1)^n 2^(a_i)$.

Find the distinct number of mega teams with score $474288 mod 1000000007$.

Two Mega teams are considered different, if there is a particular player present in one team and not in another team.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #346
#problem-heading(346, [Game of Numbers])

Ram and Shyam play a game, the game goes as follows:

You have been given a number $m$, all the divisors of $m$ are written on $"sigma"(m)$ separate balloons where $"sigma"(m)$ denotes the number of divisors of $m$.

At each turn, a player can pop a balloon with the number $x$ on it, if $x$ is divisible by $d$ or $d$ is divisible by $x$ where $d$ is the number on the last balloon popped in the game.

Assume that Ram starts the game and the game has alternate turns. On initial turn, Ram can pop any balloon.

Let $f(m) = 1$ if Shyam wins else $0$ if Ram wins.

If both players play optimally, find $sum_(i=1)^123456789 f(i)$.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #347
#problem-heading(347, [Magic Number])

Athlestan is new to the maths class, his maths tutor assigned him a very hard problem and you need to help him in order for him to pass his class. Athlestan needs to find the smallest $10$ digit number such that the sum of its digits is divisible by $7$ and the number itself is divisible by $3$. You are his only hope, please help him.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #348
#problem-heading(348, [Downfall])

Each cell of a $23 times 23$ grid is colored green, red, or blue. Luke starts at the top-right cell of the grid and walks to the bottom-left cell either by moving one cell to the left, or one cell down. So, he goes through exactly $45$ cells on his walk (including the top-right and bottom-left cells). Find the number of colourings in which Luke is guaranteed to pass through exactly $7$ red cells, exactly $19$ green cells, and exactly $19$ blue cells no matter which path he travels on. Submit your answer modulo $10^9+7$.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #349
#problem-heading(349, [Fibonacci Fusion])

Let $F_0 = 0$, $F_1 = 1$, $F_n = F_(n-1) + F_(n-2)$ for $n > 1$.

$ (sum_(i_(N-1)=1)^(i_N) (dots.c ((sum_(i_1=1)^(i_2) ((sum_(i_0=1)^(i_1) F_(i_0)) + F_2)) + F_4) dots.c)) + F_(2N) $

For $N = 10^5$, find the value of the above expression modulo $10^9+7$ for $i_N = N$.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Problem #356
#problem-heading(356, [On A Walk])

Joseph decided to go on a walk! At each step he either moves one step ahead or one step back. He starts from origin and intends to reach the point $j$ in n steps. Furthermore he should never cross the origin and reach the negative area. We define $Q(j,n)$ as the number of ways to reach point $j$ in $n$ steps.

For $j = 26$ and $n = 123456$.

Find $Q(j,n) mod 1000000007$.

#problem-tag(("endgame 10.0",))
//------------------------------------------------------------------------------
