//---------------------------------------------------------------------------
#ifndef TesselatorH
#define TesselatorH
//---------------------------------------------------------------------------
#include <vector>
//---------------------------------------------------------------------------
#include <gp_Pnt.hxx>
#include <TopoDS_Shape.hxx>
#include <TCollection_AsciiString.hxx>
//---------------------------------------------------------------------------
struct aface {
  float *vertex_coord;
  float *normal_coord;
  float *tex_coord;
  int   *tri_indexes;

  int   number_of_coords;
  int   number_of_normals;
  int   number_of_texcoords;
  int   number_of_triangles;
};

//---------------------------------------------------------------------------
enum theTextureMappingRule {atCube, atNormal, atNormalAutoScale};
//---------------------------------------------------------------------------
Standard_EXPORT class Tesselator
{
  private:

  protected:
      float *locVertexcoord;
      float *locNormalcoord;
      float *locTexcoord;
      int   *loc_tri_indexes;
      int tot_vertex_count;
      int tot_normal_count;
      int tot_texcoord_count;
      int tot_triangle_count;
      std::vector<aface*> facelist;
      Standard_Real myDeviation;
      Standard_Real myUOrigin;
      Standard_Real myVOrigin;
      Standard_Real myURepeat;
      Standard_Real myVRepeat;
      Standard_Real myScaleU;
      Standard_Real myScaleV;
      Standard_Real myAutoScaleSizeOnU;
      Standard_Real myAutoScaleSizeOnV;
      Standard_Real myRotationAngle;
      theTextureMappingRule myTxtMapType;
      TopoDS_Shape myShape;
      Standard_Real aXmin, aYmin ,aZmin ,aXmax ,aYmax ,aZmax;
      Standard_Real aBndBoxSz;

      Standard_Boolean TriangleIsValid(const gp_Pnt& P1, const gp_Pnt& P2, const gp_Pnt& P3) const;
      void PrepareBoxTextureCoordinates(const TopoDS_Shape& aShape);
      void GetBoxTextureCoordinate(const gp_Pnt& p, const gp_Dir& N1, gp_Vec2d& theCoord_p);

  public:
      Tesselator(TopoDS_Shape aShape,
               theTextureMappingRule aTxtMapType,
               Standard_Real anAutoScaleSizeOnU,
               Standard_Real anAutoScaleSizeOnV,
               Standard_Real aDeviation,
               Standard_Real aUOrigin,
               Standard_Real aVOrigin,
               Standard_Real aURepeat,
               Standard_Real aVRepeat,
               Standard_Real aScaleU,
               Standard_Real aScaleV,
               Standard_Real aRotationAngle);

      ~Tesselator();
      void Tesselate();
      void JoinPrimitives();
      float* VerticesList();
      float* NormalsList();
      float* TextureCoordinatesList();
      void ExportShapeToJSON(char *filename);
      int ObjGetTriangleCount();
      int ObjGetVertexCount();
      int ObjGetNormalCount();
      int ObjGetTexCoordCount();
      void ObjGetTriangle(int trianglenum, int *vertices, int *texcoords, int *normals);
};
#endif
