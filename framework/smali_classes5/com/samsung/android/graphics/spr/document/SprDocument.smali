.class public Lcom/samsung/android/graphics/spr/document/SprDocument;
.super Ljava/lang/Object;
.source "SprDocument.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANIMATION_MODE_BATTERY:I = 0xa

.field public static final ANIMATION_MODE_NONE:I = 0x0

.field public static final ANIMATION_MODE_STORAGE_SPACE:I = 0xb

.field public static final ANIMATION_MODE_TIME_DAY_IN_WEEK:I = 0x9

.field public static final ANIMATION_MODE_TIME_HOUR_IN_DAY:I = 0x4

.field public static final ANIMATION_MODE_TIME_HOUR_IN_WEEK:I = 0x8

.field public static final ANIMATION_MODE_TIME_MILLISECOND_IN_DAY:I = 0x1

.field public static final ANIMATION_MODE_TIME_MILLISECOND_IN_WEEK:I = 0x5

.field public static final ANIMATION_MODE_TIME_MINUTE_IN_DAY:I = 0x3

.field public static final ANIMATION_MODE_TIME_MINUTE_IN_WEEK:I = 0x7

.field public static final ANIMATION_MODE_TIME_SECOND_IN_DAY:I = 0x2

.field public static final ANIMATION_MODE_TIME_SECOND_IN_WEEK:I = 0x6

.field public static final DEFAULT_DENSITY_SCALE:F = 2.0f

.field public static final HEADER_SIZE:I = 0x61

.field public static final MAJOR_VERSION:S = 0x3030s

.field public static final MINOR_VERSION:S = 0x3034s

.field public static final REPEAT_MODE_RESTART:B = 0x2t

.field public static final REPEAT_MODE_REVERSE:B = 0x1t

.field public static final RESERVED_SIZE:I = 0x0

.field public static final SPRTAG:I = 0x53505200

.field public static final SVFTAG:I = 0x53564600

.field private static final TAG:Ljava/lang/String; = "SPRDocument"

.field private static mBasePaint:Landroid/graphics/Paint;


# instance fields
.field private isPredraw:Z

.field public final mAnimationInterval:I

.field public final mAnimationMode:I

.field private mAnimationObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mBottom:F

.field public final mDensity:F

.field private mDocuments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mFileAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

.field private mIsInitialized:Z

.field public final mLeft:F

.field private mLoadingTime:J

.field public final mName:Ljava/lang/String;

.field public final mNinePatchBottom:F

.field public final mNinePatchLeft:F

.field public final mNinePatchRight:F

.field public final mNinePatchTop:F

.field public final mPaddingBottom:F

.field public final mPaddingLeft:F

.field public final mPaddingRight:F

.field public final mPaddingTop:F

.field private mReferenceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mRepeatCount:I

.field public final mRepeatMode:B

.field public final mRight:F

.field public final mTop:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 96
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    .line 103
    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 104
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    .line 107
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    .line 108
    iput p4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    .line 109
    iput p5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    .line 112
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    .line 114
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    .line 116
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    .line 117
    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    .line 119
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-direct {v3, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iput-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 123
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    .line 124
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 23
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    .line 91
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 96
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    .line 98
    iput-boolean v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    .line 128
    iput-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 129
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    .line 131
    new-instance v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;

    move-object/from16 v5, p2

    invoke-direct {v3, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v3, "in":Lcom/samsung/android/graphics/spr/document/SprInputStream;
    iget-object v6, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    iput-object v6, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 138
    .local v6, "start":J
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v8

    .line 139
    .local v8, "fileTag":I
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readShort()S

    move-result v9

    iput-short v9, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    .line 140
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readShort()S

    move-result v9

    iput-short v9, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    .line 141
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v9

    .line 142
    .local v9, "referenceSectionOffset":I
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v10

    .line 143
    .local v10, "documentOffset":I
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v11

    .line 144
    .local v11, "fileAttributeOffset":I
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    .line 145
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    .line 146
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    .line 147
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    .line 148
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    .line 149
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    .line 150
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    .line 151
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    .line 152
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    .line 153
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    .line 154
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    .line 155
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    .line 156
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    .line 157
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    .line 158
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    .line 160
    const/4 v12, 0x1

    .line 162
    .local v12, "documentSize":I
    iget-short v13, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    const/16 v14, 0x3030

    if-lt v13, v14, :cond_d9

    iget-short v13, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v15, 0x3033

    if-lt v13, v15, :cond_d9

    .line 163
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v12

    .line 164
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    .line 165
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v13

    iput-byte v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    goto :goto_de

    .line 167
    :cond_d9
    iput v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    .line 168
    const/4 v13, 0x2

    iput-byte v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    .line 171
    :goto_de
    iget-short v13, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    if-lt v13, v14, :cond_f5

    iget-short v13, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v15, 0x3034

    if-lt v13, v15, :cond_f5

    .line 172
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    .line 173
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    goto :goto_f9

    .line 175
    :cond_f5
    iput v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    .line 176
    iput v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    .line 179
    :goto_f9
    const v13, 0x53505200

    if-eq v8, v13, :cond_10d

    const v13, 0x53564600

    if-ne v8, v13, :cond_104

    goto :goto_10d

    .line 180
    :cond_104
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "wrong file format"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_10d
    :goto_10d
    const-string/jumbo v13, "unknown element type:"

    const-string v15, "SPRDocument"

    if-eqz v11, :cond_166

    .line 186
    int-to-long v4, v11

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v16

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 188
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v5

    .local v5, "n":I
    :goto_123
    if-ge v4, v5, :cond_166

    .line 191
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v2

    .line 192
    .local v2, "type":B
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v14

    .line 194
    .local v14, "size":I
    packed-switch v2, :pswitch_data_23c

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    move-object/from16 v18, v1

    .end local v1    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .local v18, "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move/from16 v19, v2

    .end local v2    # "type":B
    .local v19, "type":B
    int-to-long v1, v14

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    move-object/from16 v1, v18

    goto :goto_157

    .line 196
    .end local v18    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .end local v19    # "type":B
    .restart local v2    # "type":B
    :pswitch_150
    new-instance v1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    invoke-direct {v1, v3}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 197
    .restart local v1    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    move/from16 v19, v2

    .line 206
    .end local v2    # "type":B
    .restart local v19    # "type":B
    :goto_157
    if-eqz v1, :cond_15e

    .line 207
    iget-object v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v1    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .end local v14    # "size":I
    .end local v19    # "type":B
    :cond_15e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/16 v14, 0x3030

    goto :goto_123

    .line 213
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_166
    int-to-long v1, v9

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v2

    .local v2, "n":I
    :goto_174
    if-ge v1, v2, :cond_205

    .line 216
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    .line 219
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v4

    .line 221
    .local v4, "type":B
    const/4 v5, 0x0

    .line 222
    .local v5, "size":I
    iget-short v14, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    move/from16 v18, v2

    const/16 v2, 0x3030

    .end local v2    # "n":I
    .local v18, "n":I
    if-lt v14, v2, :cond_190

    iget-short v14, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v2, 0x3032

    if-lt v14, v2, :cond_190

    .line 223
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v5

    .line 225
    :cond_190
    sparse-switch v4, :sswitch_data_242

    .line 255
    const/4 v14, 0x0

    const/4 v2, 0x0

    .line 256
    .local v2, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move v14, v8

    move/from16 v19, v9

    .end local v8    # "fileTag":I
    .end local v9    # "referenceSectionOffset":I
    .local v14, "fileTag":I
    .local v19, "referenceSectionOffset":I
    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    goto :goto_1f5

    .line 251
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .end local v14    # "fileTag":I
    .end local v19    # "referenceSectionOffset":I
    .restart local v8    # "fileTag":I
    .restart local v9    # "referenceSectionOffset":I
    :sswitch_1b1
    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 252
    .restart local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    move v14, v8

    move/from16 v19, v9

    goto :goto_1f5

    .line 227
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_1ba
    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v14, 0x0

    invoke-direct {v2, v14, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 228
    .restart local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    move v14, v8

    move/from16 v19, v9

    goto :goto_1f5

    .line 247
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_1c4
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 248
    .restart local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    move v14, v8

    move/from16 v19, v9

    goto :goto_1f5

    .line 243
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_1ce
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 244
    .restart local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    move v14, v8

    move/from16 v19, v9

    goto :goto_1f5

    .line 239
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_1d8
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 240
    .restart local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    move v14, v8

    move/from16 v19, v9

    goto :goto_1f5

    .line 235
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_1e2
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 236
    .restart local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    move v14, v8

    move/from16 v19, v9

    goto :goto_1f5

    .line 231
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_1ec
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 232
    .restart local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    move v14, v8

    move/from16 v19, v9

    .line 261
    .end local v8    # "fileTag":I
    .end local v9    # "referenceSectionOffset":I
    .restart local v14    # "fileTag":I
    .restart local v19    # "referenceSectionOffset":I
    :goto_1f5
    if-eqz v2, :cond_1fc

    .line 262
    iget-object v8, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 215
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .end local v4    # "type":B
    .end local v5    # "size":I
    :cond_1fc
    add-int/lit8 v1, v1, 0x1

    move v8, v14

    move/from16 v2, v18

    move/from16 v9, v19

    goto/16 :goto_174

    .end local v14    # "fileTag":I
    .end local v18    # "n":I
    .end local v19    # "referenceSectionOffset":I
    .local v2, "n":I
    .restart local v8    # "fileTag":I
    .restart local v9    # "referenceSectionOffset":I
    :cond_205
    move/from16 v18, v2

    move v14, v8

    move/from16 v19, v9

    .line 267
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v8    # "fileTag":I
    .end local v9    # "referenceSectionOffset":I
    .restart local v14    # "fileTag":I
    .restart local v19    # "referenceSectionOffset":I
    int-to-long v1, v10

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 269
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_214
    if-ge v1, v12, :cond_224

    .line 270
    iget-object v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_214

    :cond_224
    const/4 v5, 0x1

    .line 273
    .end local v1    # "i":I
    iget v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    if-lt v1, v5, :cond_230

    const/16 v2, 0x8

    if-gt v1, v2, :cond_230

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->applyTimeAnimationMode()V

    .line 278
    :cond_230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    .line 280
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 281
    return-void

    nop

    :pswitch_data_23c
    .packed-switch 0x1
        :pswitch_150
    .end packed-switch

    :sswitch_data_242
    .sparse-switch
        0x1 -> :sswitch_1ec
        0x2 -> :sswitch_1e2
        0x3 -> :sswitch_1d8
        0x4 -> :sswitch_1ce
        0x5 -> :sswitch_1c4
        0x10 -> :sswitch_1ba
        0x11 -> :sswitch_1b1
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "docName"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 96
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    .line 284
    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 285
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    .line 288
    :goto_38
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v3, v1

    .local v3, "eventType":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_43

    if-eq v3, v2, :cond_43

    goto :goto_38

    .line 291
    :cond_43
    if-ne v3, v4, :cond_fe

    .line 295
    const/4 v1, 0x0

    .local v1, "right":F
    const/4 v5, 0x0

    .line 296
    .local v5, "bottom":F
    const/4 v6, 0x0

    .line 298
    .local v6, "width":F
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    .local v8, "n":I
    :goto_4d
    if-ge v7, v8, :cond_c4

    .line 299
    invoke-interface {p2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 300
    .local v9, "name":Ljava/lang/String;
    invoke-interface {p2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 302
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v11, "width"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 303
    const-string v11, "dp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c1

    .line 304
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_c1

    .line 306
    :cond_7a
    const-string/jumbo v11, "height"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_84

    goto :goto_c1

    .line 308
    :cond_84
    const-string/jumbo v11, "viewportHeight"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 309
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_c1

    .line 310
    :cond_96
    const-string/jumbo v11, "viewportWidth"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 311
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_c1

    .line 312
    :cond_a8
    const-string v11, "autoMirrored"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b1

    goto :goto_c1

    .line 314
    :cond_b1
    const-string/jumbo v11, "tintMode"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bb

    goto :goto_c1

    .line 316
    :cond_bb
    const-string/jumbo v11, "tint"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_c1
    :goto_c1
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 321
    .end local v7    # "i":I
    .end local v8    # "n":I
    :cond_c4
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    .line 322
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    .line 323
    iput v5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    .line 324
    div-float v8, v1, v6

    iput v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    .line 326
    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    .line 327
    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    .line 329
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    .line 330
    iput-byte v4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    .line 332
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    .line 333
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    .line 335
    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-direct {v4, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(Z)V

    .line 336
    .local v4, "root":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-direct {v7, v0, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v4, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iput-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 341
    return-void

    .line 292
    .end local v1    # "right":F
    .end local v4    # "root":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    .end local v5    # "bottom":F
    .end local v6    # "width":F
    :cond_fe
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .registers 7
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 601
    iget-object v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 602
    .local v1, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v3, 0x61

    if-ne v2, v3, :cond_46

    .line 603
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 604
    .local v2, "animator":Landroid/animation/Animator;
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    iget-byte v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mType:B

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_66

    goto :goto_3f

    .line 609
    :pswitch_39
    iput-boolean v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    goto :goto_3f

    .line 606
    :pswitch_3c
    iput-boolean v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    .line 607
    nop

    .line 612
    .end local v2    # "animator":Landroid/animation/Animator;
    :goto_3f
    goto :goto_23

    .line 613
    :cond_40
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    goto :goto_47

    .line 616
    .end local v1    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    :cond_46
    goto :goto_6

    .line 617
    :cond_47
    :goto_47
    iget-byte v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    const/16 v1, 0x10

    if-ne v0, v1, :cond_64

    .line 618
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v1

    .local v1, "n":I
    :goto_55
    if-ge v0, v1, :cond_64

    .line 619
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    .line 620
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-direct {p0, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 618
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 623
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x4
        :pswitch_3c
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method public appendAnimator(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .registers 4
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 570
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 571
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 574
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method public appendFileAttribute(Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;)V
    .registers 4
    .param p1, "attr"    # Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    .line 524
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 525
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 528
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method public appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 541
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 542
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 545
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 546
    return-void
.end method

.method public appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .registers 4
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 533
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 534
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 537
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 538
    return-void
.end method

.method public appendReference(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 475
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 476
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 479
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 480
    return-void
.end method

.method public applyTimeAnimationMode()V
    .registers 10

    .line 626
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 627
    .local v1, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-object v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 628
    .local v3, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v5, 0x61

    if-ne v4, v5, :cond_61

    .line 629
    move-object v4, v3

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    .line 630
    .local v4, "animatorSet":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    .line 631
    .local v5, "duration":I
    const/4 v6, 0x1

    .line 632
    .local v6, "quotient":I
    const/4 v7, 0x1

    .line 634
    .local v7, "type":I
    iget v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    packed-switch v8, :pswitch_data_64

    goto :goto_5a

    .line 664
    :pswitch_37
    const/4 v7, 0x2

    .line 665
    const v6, 0x5265c00

    goto :goto_5a

    .line 660
    :pswitch_3c
    const/4 v7, 0x2

    .line 661
    const v6, 0x36ee80

    .line 662
    goto :goto_5a

    .line 656
    :pswitch_41
    const/4 v7, 0x2

    .line 657
    const v6, 0xea60

    .line 658
    goto :goto_5a

    .line 652
    :pswitch_46
    const/4 v7, 0x2

    .line 653
    const/16 v6, 0x3e8

    .line 654
    goto :goto_5a

    .line 648
    :pswitch_4a
    const/4 v7, 0x2

    .line 649
    const/4 v6, 0x1

    .line 650
    goto :goto_5a

    .line 645
    :pswitch_4d
    const v6, 0x36ee80

    .line 646
    goto :goto_5a

    .line 642
    :pswitch_51
    const v6, 0xea60

    .line 643
    goto :goto_5a

    .line 639
    :pswitch_55
    const/16 v6, 0x3e8

    .line 640
    goto :goto_5a

    .line 636
    :pswitch_58
    const/4 v6, 0x1

    .line 637
    nop

    .line 669
    :goto_5a
    invoke-static {v8, v5, v7, v6}, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->get(IIII)Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->updateAnimatorInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 672
    .end local v3    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .end local v4    # "animatorSet":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    .end local v5    # "duration":I
    .end local v6    # "quotient":I
    .end local v7    # "type":I
    :cond_61
    goto :goto_18

    .line 673
    .end local v1    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :cond_62
    goto :goto_6

    .line 674
    :cond_63
    return-void

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_37
    .end packed-switch
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/SprDocument;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 678
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 680
    .local v0, "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 682
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 685
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    .line 686
    .local v2, "group":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    iget-object v4, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v4, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-direct {v0, v3}, Lcom/samsung/android/graphics/spr/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 688
    .end local v2    # "group":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    goto :goto_22

    .line 690
    :cond_49
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    if-lt v1, v3, :cond_54

    const/16 v2, 0x8

    if-gt v1, v2, :cond_54

    .line 692
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->applyTimeAnimationMode()V

    .line 695
    :cond_54
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->clone()Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    .line 345
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 346
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 350
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 353
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 354
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 356
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 357
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 360
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IIII)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "drawingGroupIdx"    # I
    .param p5, "dpi"    # I

    .line 719
    sget-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_7

    .line 720
    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawRect(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;II)V

    .line 725
    :cond_7
    int-to-float v0, p2

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 726
    .local v0, "sx":F
    int-to-float v1, p3

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 728
    .local v1, "sy":F
    const/16 v2, 0x1f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 729
    iget v4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iget v5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    int-to-float v2, p2

    add-float v6, v4, v2

    int-to-float v2, p3

    add-float v7, v5, v2

    sget-object v8, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 731
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 733
    if-gez p4, :cond_3d

    .line 734
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    goto :goto_6e

    .line 735
    :cond_3d
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_57

    .line 736
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    goto :goto_6e

    .line 738
    :cond_57
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    .line 741
    :goto_6e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 743
    sget-boolean v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v2, :cond_78

    .line 744
    invoke-static {p1, p0, p2, p3, p5}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawDebugInfo(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;III)V

    .line 746
    :cond_78
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->close()V

    .line 365
    return-void
.end method

.method public getFileAttribute(I)Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .registers 4
    .param p1, "index"    # I

    .line 516
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 517
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x0

    return-object v0

    .line 520
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    return-object v0
.end method

.method public getFileAttributeSize()I
    .registers 3

    .line 508
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 509
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFrameAnimationCount()I
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLoadingTime()I
    .registers 3

    .line 699
    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .registers 4
    .param p1, "id"    # I

    .line 499
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 500
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    return-object v0

    .line 503
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getReferenceSize()I
    .registers 3

    .line 491
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 492
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getTotalAttributeCount()I
    .registers 3

    .line 711
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalAttributeCount()I

    move-result v0

    return v0
.end method

.method public getTotalElementCount()I
    .registers 3

    .line 707
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalElementCount()I

    move-result v0

    return v0
.end method

.method public getTotalSegmentCount()I
    .registers 3

    .line 703
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalSegmentCount()I

    move-result v0

    return v0
.end method

.method public getValueAnimationObjects()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isIntrinsic()Z
    .registers 2

    .line 715
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNinePatch()Z
    .registers 3

    .line 597
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1c

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1c

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1c

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method public isPredraw()Z
    .registers 2

    .line 773
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    return v0
.end method

.method public preDraw(I)V
    .registers 12
    .param p1, "drawingGroupIdx"    # I

    .line 749
    new-instance v0, Landroid/graphics/Paint;

    sget-object v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 750
    .local v0, "strokePaint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Paint;

    sget-object v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 752
    .local v1, "fillPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 753
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 754
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 756
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 757
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 759
    if-gez p1, :cond_34

    .line 760
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    goto :goto_64

    .line 761
    :cond_34
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_4e

    .line 762
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    goto :goto_64

    .line 764
    :cond_4e
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    .line 767
    :goto_64
    if-gtz p1, :cond_68

    .line 768
    iput-boolean v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    .line 770
    :cond_68
    return-void
.end method

.method public removeAnimator(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .registers 4
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 578
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 579
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v0, 0x0

    return v0

    .line 582
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .registers 4
    .param p1, "index"    # I

    .line 557
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 558
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v0, 0x0

    return-object v0

    .line 561
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .registers 5
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 549
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 550
    const-string v0, "SPRDocument"

    const-string v2, "Already closed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return v1

    .line 553
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z

    move-result v0

    return v0
.end method

.method public removeReference(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 483
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 484
    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 487
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 488
    return-void
.end method

.method public toSPR(Ljava/io/OutputStream;)Z
    .registers 16
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 370
    .local v0, "out":Ljava/io/DataOutputStream;
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    .line 371
    .local v1, "ninePatchLeft":F
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    .line 372
    .local v2, "ninePatchTop":F
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    .line 373
    .local v3, "ninePatchRight":F
    iget v4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    .line 375
    .local v4, "ninePatchBottom":F
    iget-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    const/4 v6, 0x0

    if-nez v5, :cond_1a

    .line 376
    const-string v5, "SPRDocument"

    const-string v7, "Already closed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v6

    .line 380
    :cond_1a
    const/4 v5, 0x0

    .line 381
    .local v5, "fileAttributeSize":I
    const/4 v7, 0x0

    .line 382
    .local v7, "fileAttributeCount":I
    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_77

    .line 383
    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    .line 384
    .local v10, "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v11

    if-eqz v11, :cond_47

    .line 385
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v11

    add-int/lit8 v11, v11, 0x5

    add-int/2addr v5, v11

    .line 386
    add-int/lit8 v7, v7, 0x1

    goto :goto_70

    .line 388
    :cond_47
    iget-byte v11, v10, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    packed-switch v11, :pswitch_data_184

    goto :goto_70

    .line 390
    :pswitch_4d
    move-object v11, v10

    check-cast v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    .line 391
    .local v11, "ninePatch":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;
    iget v12, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ne v12, v9, :cond_70

    iget v12, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ne v12, v9, :cond_70

    .line 392
    iget-object v12, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    aget v1, v12, v6

    .line 393
    iget-object v12, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    aget v2, v12, v6

    .line 394
    iget v12, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iget-object v13, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    aget v13, v13, v6

    sub-float v3, v12, v13

    .line 395
    iget v12, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iget-object v13, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    aget v13, v13, v6

    sub-float v4, v12, v13

    .line 403
    .end local v10    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .end local v11    # "ninePatch":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;
    :cond_70
    :goto_70
    goto :goto_2b

    .line 406
    :cond_71
    if-nez v5, :cond_75

    move v8, v6

    goto :goto_76

    :cond_75
    const/4 v8, 0x4

    :goto_76
    add-int/2addr v5, v8

    .line 409
    :cond_77
    const/4 v8, 0x4

    .line 410
    .local v8, "filterSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    iget-object v11, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    .local v11, "n":I
    :goto_7f
    if-ge v10, v11, :cond_91

    .line 411
    iget-object v12, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 412
    .local v12, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual {v12}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v13

    add-int/2addr v8, v13

    .line 410
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    add-int/lit8 v10, v10, 0x1

    goto :goto_7f

    .line 415
    .end local v10    # "i":I
    .end local v11    # "n":I
    :cond_91
    const v10, 0x53505200

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 416
    const/16 v10, 0x3030

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 417
    const/16 v10, 0x3034

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 418
    add-int/lit8 v10, v5, 0x61

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 419
    add-int/lit8 v10, v5, 0x61

    add-int/2addr v10, v8

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 420
    if-nez v5, :cond_b0

    move v10, v6

    goto :goto_b2

    :cond_b0
    const/16 v10, 0x61

    :goto_b2
    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 421
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 422
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 423
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 424
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 425
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 426
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 427
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 428
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 429
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 430
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 431
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 432
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 433
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 434
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 435
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 436
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 438
    iget-byte v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 439
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 440
    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 443
    if-eqz v5, :cond_13e

    .line 444
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 446
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    .line 447
    .local v10, "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 448
    iget-byte v11, v10, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 449
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 450
    invoke-virtual {v10, v0}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 452
    .end local v10    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    :cond_13d
    goto :goto_11c

    .line 456
    :cond_13e
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 457
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v10, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    .local v10, "n":I
    :goto_14e
    if-ge v6, v10, :cond_16c

    .line 458
    iget-object v11, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 459
    .local v11, "key":I
    iget-object v12, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 460
    .restart local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 461
    iget-byte v13, v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 462
    invoke-virtual {v12, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 457
    .end local v11    # "key":I
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    add-int/lit8 v6, v6, 0x1

    goto :goto_14e

    .line 466
    .end local v6    # "i":I
    .end local v10    # "n":I
    :cond_16c
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_172
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_182

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    .line 467
    .local v10, "document":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    invoke-virtual {v10, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->toSPR(Ljava/io/DataOutputStream;)V

    .line 468
    .end local v10    # "document":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    goto :goto_172

    .line 470
    :cond_182
    return v9

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_4d
    .end packed-switch
.end method
