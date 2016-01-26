%%% "ln04-shape".mp -- do not edit, generated automatically by comp210-lectureNotes-04.tex
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
 "+moveTo(Loc l) : void");
classStereotypes.Shp("<<interface>>");

Class.Dot("Dot")
("-pinloc : Loc")
("+Dot()",
 "+Doc(Loc l)",
 "+getLocation() : Loc",
 "+setLoccation(Loc l) : void",
 "+equals(Object obj) : boolean",
 "+hashCode() : int",
 "+toString() : String",
 "+area() : double" ,
 "+isWithin(Loc l)) : boolean",
 "+boundingBox() : Rectangle",
  "+moveTo(Loc l) : void",
 "+distanceTo(Loc l) : double");

Class.Rec("Rectangle")
("-pinloc : Loc","-width : int","-height : int")
("+Rectangle()",
 "+Rectangle(Loc l, int width, int height)",
 "+getWidth() : int",
 "+setWidth(int width) : void",
 "+getHeight() : int",
 "+setHeight(int height) : void",
 "+equals(Object obj) : boolean",
 "+hashCode() : int",
 "+toString() : String",
 "+area() : double" ,
 "+isWithin(Loc l)) : boolean",
 "+boundingBox() : Rectangle",
  "+moveTo(Loc l) : void",
 "+distanceTo(Loc l) : double");

Class.Circ("Circle")
("-pinloc : Loc","-radius : int")
("+Circle()",
 "+Circle(Loc l, int radius)",
 "+getLocation() : Loc",
 "+setLoccation(Loc l) : void",
 "+getRadius() : int",
 "+setRadius(int radius) : void",
 "+equals(Object obj) : boolean",
 "+hashCode() : int",
 "+toString() : String",
 "+area() : double" ,
 "+isWithin(Loc l)) : boolean",
 "+boundingBox() : Rectangle",
 "+moveTo(Loc l) : void",
 "+distanceTo(Loc l) : double");

Class.Loc("Loc")
("-row : int","-col : int")
("+Loc()",
 "+Loc(int row, int col)",
 "+getRow() : int",
 "+setRow(int row) : void",
 "+getCol() : int",
 "+setCol(int col) : void",
 "+equals(Object obj) : boolean",
 "+hashCode() : int",
 "+toString() : String");


topToBottom(40)(Shp,Circ);
topToBottom(50)(Circ,Loc);
leftToRight(40)(Rec,Circ,Dot);


drawObjects(Shp,Rec,Circ,Dot,Loc);
link(inheritance)(Rec.ne -- Shp.sw);
link(inheritance)(Circ.n -- Shp.s);
link(inheritance)(Dot.nw -- Shp.se);

link(associationUni)(Rec.se -- Loc.nw);
link(associationUni)(Circ.s -- Loc.n);
link(associationUni)(Dot.sw -- Loc.ne);

endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
