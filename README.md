# Abstract

Sudoku is a board game where a user fills in a N x N grid of numbers such that every row,
column, and subsquare have only one instance of each number from 1 to N. Since playing Sudoku
is formulaic, a 4 x 4 gameboard chip was created using an LFSR algorithm to randomly generate
solvable preset combinations and then randomly generate filled and unfilled squares for the user
based on easy, medium, and hard difficulties. The user’s inputs are verified and checked against
the actual solution and outputs a high solved signal once the board is correctly filled in.

# Motivation
Sudoku is an interesting example of a game that is formulaic, but also dynamic with many
different possibilities. Always randomly generating solvable games of Sudoku is a difficult
algorithmic problem, but there are ways to slightly cheat the system in order to make seemingly
random results. Furthermore, when the amount of physical space for creating such a game is
minimal, shortcuts must be taken carefully and deliberately. As such, developing a simple game of
Sudoku on a VLSI chip becomes an intellectually stimulating challenge

# See annotated-Sudoku_ELEC422_Report.pdf for the whole report.
