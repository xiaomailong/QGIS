/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsvectorlayerundopassthroughcommand.h                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsVectorLayerUndoPassthroughCommand : QgsVectorLayerUndoCommand
{
%Docstring
 Undo command for vector layer in transaction group mode.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsvectorlayerundopassthroughcommand.h"
%End
  public:

    QgsVectorLayerUndoPassthroughCommand( QgsVectorLayerEditBuffer *buffer, const QString &text );
%Docstring
 Constructor for QgsVectorLayerUndoPassthroughCommand
 \param buffer associated edit buffer
 \param text text associated with command
%End

    bool hasError() const;
%Docstring
 Returns error status
 :rtype: bool
%End

  protected:

    bool rollBackToSavePoint();
%Docstring
 Rollback command, release savepoint or set error status
 save point must be set prior to call
 error satus should be false prior to call
 :rtype: bool
%End

    bool setSavePoint();
%Docstring
 Set the command savepoint or set error status
 error satus should be false prior to call
 :rtype: bool
%End

    void setError();
%Docstring
 Set error flag and append "failed" to text
%End

};


class QgsVectorLayerUndoPassthroughCommandAddFeatures : QgsVectorLayerUndoPassthroughCommand
{
%Docstring
 Undo command for adding a feature to a vector layer in transaction group mode.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsvectorlayerundopassthroughcommand.h"
%End
  public:

    QgsVectorLayerUndoPassthroughCommandAddFeatures( QgsVectorLayerEditBuffer *buffer /Transfer/, QgsFeatureList &features );
%Docstring
 Constructor for QgsVectorLayerUndoPassthroughCommandAddFeatures
 \param buffer associated edit buffer
 \param features features to add to layer
%End

    virtual void undo();
    virtual void redo();

    QgsFeatureList features() const;
%Docstring
 List of features (added feaures can be modified by default values from database)
 :rtype: QgsFeatureList
%End

};



class QgsVectorLayerUndoPassthroughCommandDeleteFeatures : QgsVectorLayerUndoPassthroughCommand
{
%Docstring
 Undo command for deleting features from a vector layer in transaction group.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsvectorlayerundopassthroughcommand.h"
%End
  public:

    QgsVectorLayerUndoPassthroughCommandDeleteFeatures( QgsVectorLayerEditBuffer *buffer /Transfer/, const QgsFeatureIds &fids );
%Docstring
 Constructor for QgsVectorLayerUndoPassthroughCommandDeleteFeatures
 \param buffer associated edit buffer
 \param fids feature IDs of features to delete from layer
%End

    virtual void undo();
    virtual void redo();

};


class QgsVectorLayerUndoPassthroughCommandChangeGeometry : QgsVectorLayerUndoPassthroughCommand
{
%Docstring
 Undo command for changing feature geometry from a vector layer in transaction group.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsvectorlayerundopassthroughcommand.h"
%End
  public:

    QgsVectorLayerUndoPassthroughCommandChangeGeometry( QgsVectorLayerEditBuffer *buffer /Transfer/, const QgsFeatureId &fid, const QgsGeometry &geom );
%Docstring
 Constructor for QgsVectorLayerUndoPassthroughCommandChangeGeometry
 \param buffer associated edit buffer
 \param fid feature ID of feature to change
 \param geom new geometru
%End

    virtual void undo();
    virtual void redo();

};


class QgsVectorLayerUndoPassthroughCommandChangeAttribute: QgsVectorLayerUndoPassthroughCommand
{
%Docstring
 Undo command for changing attr value from a vector layer in transaction group.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsvectorlayerundopassthroughcommand.h"
%End
  public:

    QgsVectorLayerUndoPassthroughCommandChangeAttribute( QgsVectorLayerEditBuffer *buffer /Transfer/, QgsFeatureId fid, int field, const QVariant &newValue );
%Docstring
 Constructor for QgsVectorLayerUndoPassthroughCommandChangeAttribute
 \param buffer associated edit buffer
 \param fid feature ID of feature
 \param field
 \param newValue
%End

    virtual void undo();
    virtual void redo();

};


class QgsVectorLayerUndoPassthroughCommandAddAttribute : QgsVectorLayerUndoPassthroughCommand
{
%Docstring
 Undo command for adding attri to a vector layer in transaction group.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsvectorlayerundopassthroughcommand.h"
%End
  public:

    QgsVectorLayerUndoPassthroughCommandAddAttribute( QgsVectorLayerEditBuffer *buffer /Transfer/, const QgsField &field );
%Docstring
 Constructor for QgsVectorLayerUndoPassthroughCommandAddAttribute
 \param buffer associated edit buffer
 \param field
%End

    virtual void undo();
    virtual void redo();

};


class QgsVectorLayerUndoPassthroughCommandDeleteAttribute : QgsVectorLayerUndoPassthroughCommand
{
%Docstring
 Undo command for deleting attri of a vector layer in transaction group.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsvectorlayerundopassthroughcommand.h"
%End
  public:

    QgsVectorLayerUndoPassthroughCommandDeleteAttribute( QgsVectorLayerEditBuffer *buffer /Transfer/, int attr );
%Docstring
 Constructor for QgsVectorLayerUndoCommandDeleteAttribute
 \param buffer associated edit buffer
 \param attr
%End

    virtual void undo();
    virtual void redo();

};


class QgsVectorLayerUndoPassthroughCommandRenameAttribute : QgsVectorLayerUndoPassthroughCommand
{
%Docstring
 Undo command for deleting attri of a vector layer in transaction group.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsvectorlayerundopassthroughcommand.h"
%End
  public:

    QgsVectorLayerUndoPassthroughCommandRenameAttribute( QgsVectorLayerEditBuffer *buffer /Transfer/, int attr, const QString &newName );
%Docstring
 Constructor for QgsVectorLayerUndoCommandRenameAttribute
 \param buffer associated edit buffer
 \param attr
 \param newName
%End

    virtual void undo();
    virtual void redo();

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsvectorlayerundopassthroughcommand.h                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
