.class public Landroid/graphics/MeshSpecification;
.super Ljava/lang/Object;
.source "MeshSpecification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/MeshSpecification$Attribute;,
        Landroid/graphics/MeshSpecification$Varying;,
        Landroid/graphics/MeshSpecification$MeshSpecificationHolder;,
        Landroid/graphics/MeshSpecification$Type;,
        Landroid/graphics/MeshSpecification$AlphaType;
    }
.end annotation


# static fields
.field public static final ALPHA_TYPE_OPAQUE:I = 0x1

.field public static final ALPHA_TYPE_PREMULTIPLIED:I = 0x2

.field public static final ALPHA_TYPE_UNKNOWN:I = 0x0

.field public static final ALPHA_TYPE_UNPREMULTIPLIED:I = 0x3

.field public static final TYPE_FLOAT:I = 0x0

.field public static final TYPE_FLOAT2:I = 0x1

.field public static final TYPE_FLOAT3:I = 0x2

.field public static final TYPE_FLOAT4:I = 0x3

.field public static final TYPE_UBYTE4:I = 0x4


# instance fields
.field mNativeMeshSpec:J


# direct methods
.method static bridge synthetic -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/MeshSpecification;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>(J)V
    .registers 4
    .param p1, "meshSpec"    # J

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-wide p1, p0, Landroid/graphics/MeshSpecification;->mNativeMeshSpec:J

    .line 391
    sget-object v0, Landroid/graphics/MeshSpecification$MeshSpecificationHolder;->MESH_SPECIFICATION_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 393
    return-void
.end method

.method public static make([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/MeshSpecification;
    .registers 9
    .param p0, "attributes"    # [Landroid/graphics/MeshSpecification$Attribute;
    .param p1, "vertexStride"    # I
    .param p2, "varyings"    # [Landroid/graphics/MeshSpecification$Varying;
    .param p3, "vertexShader"    # Ljava/lang/String;
    .param p4, "fragmentShader"    # Ljava/lang/String;

    .line 295
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/MeshSpecification;->nativeMake([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 298
    .local v0, "nativeMeshSpec":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    .line 301
    new-instance v2, Landroid/graphics/MeshSpecification;

    invoke-direct {v2, v0, v1}, Landroid/graphics/MeshSpecification;-><init>(J)V

    return-object v2

    .line 299
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MeshSpecification construction failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static make([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;)Landroid/graphics/MeshSpecification;
    .registers 13
    .param p0, "attributes"    # [Landroid/graphics/MeshSpecification$Attribute;
    .param p1, "vertexStride"    # I
    .param p2, "varyings"    # [Landroid/graphics/MeshSpecification$Varying;
    .param p3, "vertexShader"    # Ljava/lang/String;
    .param p4, "fragmentShader"    # Ljava/lang/String;
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 335
    nop

    .line 337
    invoke-virtual {p5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/MeshSpecification;->nativeMakeWithCS([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 338
    .local v0, "nativeMeshSpec":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    .line 341
    new-instance v2, Landroid/graphics/MeshSpecification;

    invoke-direct {v2, v0, v1}, Landroid/graphics/MeshSpecification;-><init>(J)V

    return-object v2

    .line 339
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MeshSpecification construction failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static make([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;I)Landroid/graphics/MeshSpecification;
    .registers 15
    .param p0, "attributes"    # [Landroid/graphics/MeshSpecification$Attribute;
    .param p1, "vertexStride"    # I
    .param p2, "varyings"    # [Landroid/graphics/MeshSpecification$Varying;
    .param p3, "vertexShader"    # Ljava/lang/String;
    .param p4, "fragmentShader"    # Ljava/lang/String;
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p6, "alphaType"    # I

    .line 380
    nop

    .line 382
    invoke-virtual {p5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    .line 381
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/MeshSpecification;->nativeMakeWithAlpha([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;JI)J

    move-result-wide v0

    .line 383
    .local v0, "nativeMeshSpec":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1b

    .line 386
    new-instance v2, Landroid/graphics/MeshSpecification;

    invoke-direct {v2, v0, v1}, Landroid/graphics/MeshSpecification;-><init>(J)V

    return-object v2

    .line 384
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MeshSpecification construction failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native nativeGetFinalizer()J
.end method

.method private static native nativeMake([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativeMakeWithAlpha([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;JI)J
.end method

.method private static native nativeMakeWithCS([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;J)J
.end method
