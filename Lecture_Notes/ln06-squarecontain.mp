%%% "ln06-squarecontain".mp -- do not edit, generated automatically by comp210-lectureNotes-06.tex
verbatimtex
\documentclass [10pt]{article}
\begin {document}
etex;
input metauml;
beginfig(1);
LaTeX_unitlength := 1.0pt;
w := 0*LaTeX_unitlength;
h := 0*LaTeX_unitlength;


Interface.Shp("Shape")
("+area() : double" ,
 "+isWithin(Loc l)) : boolean",
 "+boundingBox() : Rectangle",
 "+distanceTo(Loc l) : double",
 "+getLocation() : Loc",
 "+setLoccation(Loc l) : void");
classStereotypes.Shp("<<interface>>");

AbstractClass.AbShp("AbstractShape")
("-pinloc : Loc")
("#AbstractShape()",
 "#AbstractShape(Loc l)");
classStereotypes.AbShp("<<abstract>>");

Class.Dot("Dot")
()
("+Dot()",
 "+Doc(Loc l)");

Class.Rec("Rectangle")
("-width : int","-height : int")
("+Rectangle()",
 "+Rectangle(Loc l, int width, int height)",
 "+getWidth() : int",
 "+setWidth(int width) : void",
 "+getHeight() : int",
 "+setHeight(int height) : void");

Class.Squ("Square")
("-asrec : Rectangle")
("+Square()",
 "+Square(int sideLength)",
 "+getSideLength() : int",
 "+setSideLength(int sideLength) : void");

Class.Circ("Circle")
("-radius : int")
("+Circle()",
 "+Circle(Loc l, int radius)",
 "+getRadius() : int",
 "+setRadius(int radius) : void");

Class.Loc("Loc")
("-row : int","-col : int")
("+Loc()",
 "+Loc(int row, int col)",
 "+getRow() : int",
 "+setRow(int row) : void",
 "+getCol() : int",
 "+setCol(int col) : void");


topToBottom(40)(Shp,AbShp);
topToBottom(40)(AbShp,Circ);
leftToRight(40)(Rec,Circ,Dot);
leftToRight(50)(Squ,AbShp,Loc);

drawObjects(Shp,Squ,AbShp,Rec,Circ,Dot,Loc);
link(inheritance)(AbShp.n -- Shp.s);
link(inheritance)(Squ.ne -- Shp.sw);
link(inheritance)(Rec.ne -- AbShp.sw);
link(inheritance)(Circ.n -- AbShp.s);
link(inheritance)(Dot.nw -- AbShp.se);
link(associationUni)(AbShp.e -- Loc.w);
link(associationUni)(Squ.s -- Rec.n);


endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
