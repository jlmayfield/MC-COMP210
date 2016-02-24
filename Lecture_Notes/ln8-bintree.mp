%%% "ln8-bintree".mp -- do not edit, generated automatically by comp210-lectureNotes-08.tex
verbatimtex
\documentclass [10pt]{article}
\begin {document}
etex;
input metauml;
beginfig(1);
LaTeX_unitlength := 1.0pt;
w := 0*LaTeX_unitlength;
h := 0*LaTeX_unitlength;

Interface.bt("BinTree")
();
classStereotypes.bt("<<interface>>");

Class.mt("MTBinTree")
()
();

Class.node("BinTreeNode")
("-root : Foo","-left : BinTree","-right : BinTree")
();

Class.obj("Foo")
()();

mt.ne = bt.sw + (-10,-30);
node.nw = bt.se + (10,-30);
leftToRight(20)(node,obj);
drawObjects(bt,mt,node,obj);

link(inheritance)(mt.n -- bt.s);
link(inheritance)(node.n -- bt.s);
link(associationUni)(node.n -- bt.se);
link(associationUni)(node.e -- obj.w);

endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
