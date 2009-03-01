/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<ExprIntrp_Analysis.hxx>
#include<ExprIntrp_Generator.hxx>
#include<ExprIntrp_GenExp.hxx>
#include<ExprIntrp_GenFct.hxx>
#include<ExprIntrp_GenRel.hxx>
#include<ExprIntrp_SequenceNodeOfSequenceOfNamedExpression.hxx>
#include<ExprIntrp_SequenceNodeOfSequenceOfNamedFunction.hxx>
#include<ExprIntrp_SequenceOfNamedExpression.hxx>
#include<ExprIntrp_SequenceOfNamedFunction.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralExpression.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralFunction.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralRelation.hxx>
#include<ExprIntrp_StackIteratorOfStackOfNames.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralExpression.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralFunction.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralRelation.hxx>
#include<ExprIntrp_StackNodeOfStackOfNames.hxx>
#include<ExprIntrp_StackOfGeneralExpression.hxx>
#include<ExprIntrp_StackOfGeneralFunction.hxx>
#include<ExprIntrp_StackOfGeneralRelation.hxx>
#include<ExprIntrp_StackOfNames.hxx>
#include<ExprIntrp_SyntaxError.hxx>
#include<ExprIntrp_yaccanal.hxx>
#include<ExprIntrp_yaccintrf.hxx>
#include<ExprIntrp.hxx>
#include<Handle_ExprIntrp_Generator.hxx>
#include<Handle_ExprIntrp_GenExp.hxx>
#include<Handle_ExprIntrp_GenFct.hxx>
#include<Handle_ExprIntrp_GenRel.hxx>
#include<Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression.hxx>
#include<Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction.hxx>
#include<Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression.hxx>
#include<Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction.hxx>
#include<Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation.hxx>
#include<Handle_ExprIntrp_StackNodeOfStackOfNames.hxx>
#include<Handle_ExprIntrp_SyntaxError.hxx>

// Additional headers necessary for compilation.

#include<ExprIntrp.hxx>
#include<ExprIntrp_Analysis.hxx>
#include<ExprIntrp_Generator.hxx>
#include<ExprIntrp_GenExp.hxx>
#include<ExprIntrp_GenFct.hxx>
#include<ExprIntrp_GenRel.hxx>
#include<ExprIntrp_SequenceNodeOfSequenceOfNamedExpression.hxx>
#include<ExprIntrp_SequenceNodeOfSequenceOfNamedFunction.hxx>
#include<ExprIntrp_SequenceOfNamedExpression.hxx>
#include<ExprIntrp_SequenceOfNamedFunction.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralExpression.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralFunction.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralRelation.hxx>
#include<ExprIntrp_StackIteratorOfStackOfNames.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralExpression.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralFunction.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralRelation.hxx>
#include<ExprIntrp_StackNodeOfStackOfNames.hxx>
#include<ExprIntrp_StackOfGeneralExpression.hxx>
#include<ExprIntrp_StackOfGeneralFunction.hxx>
#include<ExprIntrp_StackOfGeneralRelation.hxx>
#include<ExprIntrp_StackOfNames.hxx>
#include<ExprIntrp_SyntaxError.hxx>
#include<ExprIntrp_yaccanal.hxx>
#include<ExprIntrp_yaccintrf.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Expr_NamedFunction.hxx>
#include<Handle_Expr_NamedExpression.hxx>
#include<TCollection_AsciiString.hxx>
#include<Standard_SStream.hxx>
#include<ExprIntrp.hxx>
#include<Handle_Expr_GeneralRelation.hxx>
#include<Handle_Expr_GeneralExpression.hxx>
#include<Handle_Expr_GeneralFunction.hxx>
%}
