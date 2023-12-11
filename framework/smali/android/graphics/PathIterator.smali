.class public Landroid/graphics/PathIterator;
.super Ljava/lang/Object;
.source "PathIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathIterator$Segment;,
        Landroid/graphics/PathIterator$Verb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/graphics/PathIterator$Segment;",
        ">;"
    }
.end annotation


# static fields
.field private static final POINT_ARRAY_SIZE:I = 0x8

.field public static final VERB_CLOSE:I = 0x5

.field public static final VERB_CONIC:I = 0x3

.field public static final VERB_CUBIC:I = 0x4

.field public static final VERB_DONE:I = 0x6

.field public static final VERB_LINE:I = 0x1

.field public static final VERB_MOVE:I = 0x0

.field public static final VERB_QUAD:I = 0x2

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mCachedVerb:I

.field private mDone:Z

.field private final mNativeIterator:J

.field private final mPath:Landroid/graphics/Path;

.field private final mPathGenerationId:I

.field private final mPointsAddress:J

.field private final mPointsArray:[F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 48
    nop

    .line 50
    const-class v0, Landroid/graphics/PathIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/PathIterator;->nGetFinalizer()J

    move-result-wide v1

    .line 49
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/PathIterator;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;)V
    .registers 7
    .param p1, "path"    # Landroid/graphics/Path;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    .line 80
    iput-object p1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    .line 81
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Path;->getGenerationId()I

    move-result v2

    iput v2, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    .line 83
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    .line 84
    .local v2, "runtime":Ldalvik/system/VMRuntime;
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    .line 85
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    .line 86
    sget-object v3, Landroid/graphics/PathIterator;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v3, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 87
    return-void
.end method

.method private getReturnVerb(I)I
    .registers 3
    .param p1, "cachedVerb"    # I

    .line 214
    packed-switch p1, :pswitch_data_16

    .line 223
    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    return v0

    .line 221
    :pswitch_8
    const/4 v0, 0x6

    return v0

    .line 220
    :pswitch_a
    const/4 v0, 0x5

    return v0

    .line 219
    :pswitch_c
    const/4 v0, 0x4

    return v0

    .line 218
    :pswitch_e
    const/4 v0, 0x3

    return v0

    .line 217
    :pswitch_10
    const/4 v0, 0x2

    return v0

    .line 216
    :pswitch_12
    const/4 v0, 0x1

    return v0

    .line 215
    :pswitch_14
    const/4 v0, 0x0

    return v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method private static native nCreate(J)J
.end method

.method private static native nGetFinalizer()J
.end method

.method private static native nNext(JJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPeek(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private nextInternal()I
    .registers 7

    .line 173
    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_6

    .line 174
    return v1

    .line 176
    :cond_6
    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v2, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->getGenerationId()I

    move-result v2

    if-ne v0, v2, :cond_1e

    .line 180
    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-wide v4, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/PathIterator;->nNext(JJ)I

    move-result v0

    .line 181
    .local v0, "verb":I
    if-ne v0, v1, :cond_1d

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/PathIterator;->mDone:Z

    .line 184
    :cond_1d
    return v0

    .line 177
    .end local v0    # "verb":I
    :cond_1e
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Iterator cannot be used on modified Path"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 136
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 137
    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 139
    :cond_b
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public next([FI)I
    .registers 7
    .param p1, "points"    # [F
    .param p2, "offset"    # I

    .line 114
    array-length v0, p1

    add-int/lit8 v1, p2, 0x8

    if-lt v0, v1, :cond_17

    .line 118
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    .line 119
    .local v0, "returnVerb":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 120
    iget-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    return v0

    .line 115
    .end local v0    # "returnVerb":I
    :cond_17
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "points array must be able to hold at least 8 entries"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Landroid/graphics/PathIterator$Segment;
    .registers 7

    .line 202
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    .line 203
    .local v0, "returnVerb":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "conicWeight":F
    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    .line 206
    iget-object v2, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v3, 0x6

    aget v1, v2, v3

    .line 208
    :cond_12
    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 209
    .local v3, "returnPoints":[F
    iget-object v4, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    new-instance v2, Landroid/graphics/PathIterator$Segment;

    invoke-direct {v2, v0, v3, v1}, Landroid/graphics/PathIterator$Segment;-><init>(I[FF)V

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    move-result-object v0

    return-object v0
.end method

.method public peek()I
    .registers 3

    .line 153
    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->getGenerationId()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 157
    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    if-eqz v0, :cond_10

    .line 158
    const/4 v0, 0x6

    return v0

    .line 160
    :cond_10
    iget-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nPeek(J)I

    move-result v0

    return v0

    .line 154
    :cond_17
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Iterator cannot be used on modified Path"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
