.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([I)V
    .registers 7
    .param p1, "properties"    # [I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p1

    .line 60
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 64
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_22

    .line 65
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p1, v2

    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 67
    .end local v2    # "i":I
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 69
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2b
    if-ge v2, v0, :cond_3a

    .line 70
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 72
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .line 75
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 78
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_94

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "type":I
    sget-object v2, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b

    .line 152
    .end local v1    # "type":I
    :sswitch_1f
    const/4 v1, 0x6

    .line 153
    .restart local v1    # "type":I
    goto/16 :goto_7b

    .line 157
    .end local v1    # "type":I
    :sswitch_22
    const/4 v1, 0x4

    .line 158
    .restart local v1    # "type":I
    goto/16 :goto_7b

    .line 122
    .end local v1    # "type":I
    :sswitch_25
    const v1, 0xffff

    .line 123
    .restart local v1    # "type":I
    goto :goto_7b

    .line 133
    .end local v1    # "type":I
    :sswitch_29
    const-string v0, "album_artist"

    .line 134
    const v1, 0xffff

    .line 135
    .restart local v1    # "type":I
    goto :goto_7b

    .line 129
    .end local v1    # "type":I
    :sswitch_2f
    const-string v0, "album"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1    # "type":I
    goto :goto_7b

    .line 104
    .end local v1    # "type":I
    :sswitch_35
    const-string v0, "year"

    .line 105
    const v1, 0xffff

    .line 106
    .restart local v1    # "type":I
    goto :goto_7b

    .line 141
    .end local v1    # "type":I
    :sswitch_3b
    const-string v0, "composer"

    .line 142
    const v1, 0xffff

    .line 143
    .restart local v1    # "type":I
    goto :goto_7b

    .line 137
    .end local v1    # "type":I
    :sswitch_41
    const-string v0, "genre"

    .line 138
    const v1, 0xffff

    .line 139
    .restart local v1    # "type":I
    goto :goto_7b

    .line 118
    .end local v1    # "type":I
    :sswitch_47
    const-string v0, "track"

    .line 119
    const/4 v1, 0x4

    .line 120
    .restart local v1    # "type":I
    goto :goto_7b

    .line 114
    .end local v1    # "type":I
    :sswitch_4b
    const-string v0, "duration"

    .line 115
    const/4 v1, 0x6

    .line 116
    .restart local v1    # "type":I
    goto :goto_7b

    .line 101
    .end local v1    # "type":I
    :sswitch_4f
    const v1, 0xffff

    .line 102
    .restart local v1    # "type":I
    goto :goto_7b

    .line 145
    .end local v1    # "type":I
    :sswitch_53
    const-string v0, "description"

    .line 146
    const v1, 0xffff

    .line 147
    .restart local v1    # "type":I
    goto :goto_7b

    .line 125
    .end local v1    # "type":I
    :sswitch_59
    const-string v0, "artist"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1    # "type":I
    goto :goto_7b

    .line 95
    .end local v1    # "type":I
    :sswitch_5f
    const v1, 0xffff

    .line 96
    .restart local v1    # "type":I
    goto :goto_7b

    .line 111
    .end local v1    # "type":I
    :sswitch_63
    const/16 v1, 0xa

    .line 112
    .restart local v1    # "type":I
    goto :goto_7b

    .line 160
    .end local v1    # "type":I
    :sswitch_66
    const/4 v1, 0x4

    .line 161
    .restart local v1    # "type":I
    goto :goto_7b

    .line 108
    .end local v1    # "type":I
    :sswitch_68
    const/4 v1, 0x6

    .line 109
    .restart local v1    # "type":I
    goto :goto_7b

    .line 98
    .end local v1    # "type":I
    :sswitch_6a
    const v1, 0xffff

    .line 99
    .restart local v1    # "type":I
    goto :goto_7b

    .line 92
    .end local v1    # "type":I
    :sswitch_6e
    const v1, 0xffff

    .line 93
    .restart local v1    # "type":I
    goto :goto_7b

    .line 89
    .end local v1    # "type":I
    :sswitch_72
    const/16 v1, 0x8

    .line 90
    .restart local v1    # "type":I
    goto :goto_7b

    .line 86
    .end local v1    # "type":I
    :sswitch_75
    const/4 v1, 0x4

    .line 87
    .restart local v1    # "type":I
    goto :goto_7b

    .line 83
    .end local v1    # "type":I
    :sswitch_77
    const/4 v1, 0x4

    .line 84
    .restart local v1    # "type":I
    goto :goto_7b

    .line 80
    .end local v1    # "type":I
    :sswitch_79
    const/4 v1, 0x6

    .line 81
    .restart local v1    # "type":I
    nop

    .line 168
    :goto_7b
    if-eqz v0, :cond_8c

    .line 169
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    .line 172
    :cond_8c
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    nop

    :sswitch_data_94
    .sparse-switch
        0xdc01 -> :sswitch_79
        0xdc02 -> :sswitch_77
        0xdc03 -> :sswitch_75
        0xdc04 -> :sswitch_72
        0xdc07 -> :sswitch_6e
        0xdc09 -> :sswitch_6a
        0xdc0b -> :sswitch_68
        0xdc0d -> :sswitch_66
        0xdc41 -> :sswitch_63
        0xdc44 -> :sswitch_5f
        0xdc46 -> :sswitch_59
        0xdc48 -> :sswitch_53
        0xdc4e -> :sswitch_4f
        0xdc89 -> :sswitch_4b
        0xdc8b -> :sswitch_47
        0xdc8c -> :sswitch_41
        0xdc96 -> :sswitch_3b
        0xdc99 -> :sswitch_35
        0xdc9a -> :sswitch_2f
        0xdc9b -> :sswitch_29
        0xdce0 -> :sswitch_25
        0xde92 -> :sswitch_22
        0xde93 -> :sswitch_1f
        0xde94 -> :sswitch_22
        0xde99 -> :sswitch_1f
        0xde9a -> :sswitch_1f
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method


# virtual methods
.method public getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .registers 28
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p4, "list"    # Landroid/mtp/MtpPropertyList;

    .line 183
    move-object/from16 v1, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 184
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    .line 185
    .local v9, "id":I
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "path":Ljava/lang/String;
    iget-object v11, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v12, v11

    const/4 v2, 0x0

    move v13, v2

    :goto_16
    move-object v2, v0

    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    if-ge v13, v12, :cond_1ca

    aget-object v14, v11, v13

    .line 187
    .local v14, "property":Landroid/mtp/MtpPropertyGroup$Property;
    iget v0, v14, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_66

    if-nez v2, :cond_66

    .line 190
    :try_start_22
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_26} :catch_5f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_53

    move-object/from16 v15, p2

    :try_start_28
    invoke-static {v0, v15}, Landroid/mtp/MtpDatabase;->getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 192
    .local v17, "uri":Landroid/net/Uri;
    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v19, "_data=?"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v22}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 194
    if-eqz v2, :cond_4d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_4c} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4c} :catch_4f

    .line 196
    const/4 v2, 0x0

    .line 202
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_4d
    move-object v0, v2

    goto :goto_69

    .line 200
    :catch_4f
    move-exception v0

    goto :goto_56

    .line 198
    :catch_51
    move-exception v0

    goto :goto_62

    .line 200
    :catch_53
    move-exception v0

    move-object/from16 v15, p2

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    :goto_56
    sget-object v3, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v4, "Mediaprovider lookup failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_69

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5f
    move-exception v0

    move-object/from16 v15, p2

    .line 199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_62
    const v3, 0xa801

    return v3

    .line 187
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_66
    move-object/from16 v15, p2

    .line 204
    move-object v0, v2

    .end local v2    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    :goto_69
    iget v2, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    sparse-switch v2, :sswitch_data_1d4

    .line 271
    iget v2, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    sparse-switch v2, :sswitch_data_222

    .line 282
    const-wide/16 v2, 0x0

    .line 283
    .local v2, "longValue":J
    if-eqz v0, :cond_1b8

    .line 284
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide/from16 v16, v2

    goto/16 :goto_1ba

    .line 259
    .end local v2    # "longValue":J
    :sswitch_81
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 260
    goto/16 :goto_1c6

    .line 264
    :sswitch_8e
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 265
    goto/16 :goto_1c6

    .line 242
    :sswitch_9b
    const/4 v2, 0x0

    .line 243
    .local v2, "year":I
    if-eqz v0, :cond_a4

    .line 244
    iget v3, v14, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 245
    :cond_a4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "dateTime":Ljava/lang/String;
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 247
    goto/16 :goto_1c6

    .line 249
    .end local v2    # "year":I
    .end local v3    # "dateTime":Ljava/lang/String;
    :sswitch_c2
    const/4 v2, 0x0

    .line 250
    .local v2, "track":I
    if-eqz v0, :cond_cd

    .line 251
    iget v3, v14, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v6, v2

    goto :goto_ce

    .line 250
    :cond_cd
    move v6, v2

    .line 252
    .end local v2    # "track":I
    .local v6, "track":I
    :goto_ce
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    rem-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    move-wide/from16 v16, v2

    move-object/from16 v2, p4

    move v3, v9

    move/from16 v18, v6

    .end local v6    # "track":I
    .local v18, "track":I
    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 254
    goto/16 :goto_1c6

    .line 236
    .end local v18    # "track":I
    :sswitch_e2
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    add-long v16, v2, v4

    .line 238
    .local v16, "puid":J
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 239
    goto/16 :goto_1c6

    .line 267
    .end local v16    # "puid":J
    :sswitch_105
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    move v6, v2

    .line 268
    .local v6, "hidden":I
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    int-to-long v2, v6

    move-wide/from16 v16, v2

    move-object/from16 v2, p4

    move v3, v9

    move/from16 v18, v6

    .end local v6    # "hidden":I
    .local v18, "hidden":I
    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 269
    goto/16 :goto_1c6

    .line 230
    .end local v18    # "hidden":I
    :sswitch_122
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_133

    const-wide/16 v2, 0x0

    goto :goto_13c

    :cond_133
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    int-to-long v2, v2

    :goto_13c
    move-wide v6, v2

    .line 230
    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 232
    goto/16 :goto_1c6

    .line 217
    :sswitch_145
    iget v2, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 219
    goto/16 :goto_1c6

    .line 212
    :sswitch_154
    iget v2, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 213
    goto/16 :goto_1c6

    .line 227
    :sswitch_15f
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 228
    goto :goto_1c6

    .line 207
    :sswitch_16e
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 208
    goto :goto_1c6

    .line 224
    :sswitch_17b
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 225
    goto :goto_1c6

    .line 221
    :sswitch_18b
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 222
    goto :goto_1c6

    .line 276
    :sswitch_19b
    const-string v2, ""

    .line 277
    .local v2, "value":Ljava/lang/String;
    if-eqz v0, :cond_1a5

    .line 278
    iget v3, v14, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_1a5
    iget v3, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 280
    goto :goto_1c6

    .line 273
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_1ab
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 274
    goto :goto_1c6

    .line 283
    .local v2, "longValue":J
    :cond_1b8
    move-wide/from16 v16, v2

    .line 285
    .end local v2    # "longValue":J
    .local v16, "longValue":J
    :goto_1ba
    iget v4, v14, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v14, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 186
    .end local v14    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v16    # "longValue":J
    :goto_1c6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_16

    .line 289
    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :cond_1ca
    move-object/from16 v15, p2

    if-eqz v2, :cond_1d1

    .line 290
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_1d1
    const/16 v0, 0x2001

    return v0

    :sswitch_data_1d4
    .sparse-switch
        0xdc01 -> :sswitch_18b
        0xdc02 -> :sswitch_17b
        0xdc03 -> :sswitch_16e
        0xdc04 -> :sswitch_15f
        0xdc07 -> :sswitch_154
        0xdc09 -> :sswitch_145
        0xdc0b -> :sswitch_122
        0xdc0d -> :sswitch_105
        0xdc41 -> :sswitch_e2
        0xdc44 -> :sswitch_154
        0xdc4e -> :sswitch_145
        0xdc8b -> :sswitch_c2
        0xdc99 -> :sswitch_9b
        0xdce0 -> :sswitch_154
        0xde92 -> :sswitch_8e
        0xde93 -> :sswitch_81
        0xde94 -> :sswitch_8e
        0xde99 -> :sswitch_81
        0xde9a -> :sswitch_81
    .end sparse-switch

    :sswitch_data_222
    .sparse-switch
        0x0 -> :sswitch_1ab
        0xffff -> :sswitch_19b
    .end sparse-switch
.end method
