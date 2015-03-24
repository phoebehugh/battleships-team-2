# battleships

# Specification provided

Ship
----
* it has a length
* it is floating when created
* it can be hit
* it knows how many hits it can take
* it is not floating if it has no more hits left

Water
-----
* it can be hit

Cell
----
* it is not shot when created
* it can have content
* it can be shot at
* it shoots at its content when is shot at
* it knows that it was shot at
* it cannot be shot twice 

Board
-----
* it has a 3x3 grid
* it can place a ship at a coordinate
* it cannot overlap ships
* it can shoot at a coordinate

Player
------
* he has a name
* he can place ships on his board
* he shoots at a board at a coordinate
* he knows if he has floating ships
* he knows if he has lost
