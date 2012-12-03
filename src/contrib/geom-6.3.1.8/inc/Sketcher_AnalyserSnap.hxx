// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
// but WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public  
// License along with this library; if not, write to the Free Software 
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// Original work from OpenCascade Sketcher 
// (http://sourceforge.net/projects/occsketcher/)
//
// Modifications for GEOM and OCAF
// Authored by : Sioutis Fotios (sfotis@gmail.com)

//------------------------------------------------------------------------------
#ifndef SKETCHER_ANALYSERSNAP_H
#define SKETCHER_ANALYSERSNAP_H
//------------------------------------------------------------------------------
#include "Sketcher_Snap.hxx"
//------------------------------------------------------------------------------
#include <TColgp_SequenceOfPnt2d.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_AnalyserSnap,MMgt_TShared)
//------------------------------------------------------------------------------
class Sketcher_AnalyserSnap : public MMgt_TShared
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_AnalyserSnap)

    Standard_EXPORT Sketcher_AnalyserSnap(Handle(AIS_InteractiveContext)& theContext, Handle(TColStd_HSequenceOfTransient)& thedata,gp_Ax3 & theAx3);
    Standard_EXPORT ~Sketcher_AnalyserSnap();

    Standard_EXPORT void SetContext(Handle(AIS_InteractiveContext)& theContext);
    Standard_EXPORT void SetData(Handle(TColStd_HSequenceOfTransient)& thedata);
    Standard_EXPORT void SetAx3(const gp_Ax3 &theAx3);
    Standard_EXPORT void SetMinDistance(const Standard_Real& aPrecise);
    Standard_EXPORT void SetSnapType(Sketcher_SnapType theSnap);
    Standard_EXPORT Sketcher_SnapType GetSnapType();
    Standard_EXPORT gp_Pnt2d MouseInput(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT gp_Pnt2d MouseMove(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void Cancel();
    Standard_EXPORT gp_Pnt2d MouseInputException(const gp_Pnt2d& p1, const gp_Pnt2d& thePnt2d, Sketcher_TangentType CType, Standard_Boolean TangentOnly);
    Standard_EXPORT gp_Pnt2d MouseMoveException(const gp_Pnt2d& p1, const gp_Pnt2d& thePnt2d, Sketcher_TangentType CType, Standard_Boolean TangentOnly);

    Standard_EXPORT const gp_Pnt2d& GetCurrentBestPnt2D();

  private:
    Standard_EXPORT void SnapAnalyserEvent();
    Standard_EXPORT void AddPoints(const Standard_Real& factor);
    Standard_EXPORT void addSnap(Handle(Sketcher_Snap) theSnap);
    Standard_EXPORT void SelectCurSnap();

    Handle(AIS_InteractiveContext)          myContext;
    Handle(TColStd_HSequenceOfTransient)    data;
    Handle(TColStd_HSequenceOfTransient)    mySnaps;
    Handle(Sketcher_Snap)                   CurSnap;
    Sketcher_SnapType                       myCurrentSnap;
    gp_Ax3                                  curCoordinateSystem;

    gp_Pnt2d                                myPnt2d;
    gp_Pnt2d                                storedPnt2d;
    Sketcher_TangentType                             storedTangentType;
    Standard_Boolean                        isTangent;
    Standard_Boolean                        isLine;

    TColgp_SequenceOfPnt2d                  mySeqOfPnt2d;
    TColStd_SequenceOfReal                  mySeqOfDistance;
    TColStd_SequenceOfReal                  mySeqOfFactor;
    TColStd_SequenceOfInteger               mySnapType;
    Sketcher_SnapType                       mySnapAnType;
    Sketcher_SnapType                       curSnapAnType;

    Standard_Real                           minimumSnapDistance;
    Standard_Real                           bestDist;
    Standard_Real                           curDist;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
