.class public Landroid/database/CursorWrapper;
.super Ljava/lang/Object;
.source "CursorWrapper.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field protected final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 4
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 146
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 147
    return-void
.end method

.method public deactivate()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 71
    return-void
.end method

.method public getBlob(I)[B
    .registers 3
    .param p1, "columnIndex"    # I

    .line 151
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .param p1, "columnName"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .param p1, "columnIndex"    # I

    .line 96
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "columnIndex"    # I

    .line 106
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .registers 3
    .param p1, "columnIndex"    # I

    .line 121
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .param p1, "columnIndex"    # I

    .line 126
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 131
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .registers 2

    .line 252
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUris()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .registers 3
    .param p1, "columnIndex"    # I

    .line 136
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "columnIndex"    # I

    .line 141
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .registers 3
    .param p1, "columnIndex"    # I

    .line 181
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public getWrappedCursor()Landroid/database/Cursor;
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public isAfterLast()Z
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3
    .param p1, "columnIndex"    # I

    .line 186
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .registers 3
    .param p1, "offset"    # I

    .line 196
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 201
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 221
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 226
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 227
    return-void
.end method

.method public requery()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 237
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 111
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 242
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 243
    return-void
.end method

.method public setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p2, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 248
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 262
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 263
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 267
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 268
    return-void
.end method
