.class public final Landroid/graphics/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageDecoder$Source;,
        Landroid/graphics/ImageDecoder$ResourceSource;,
        Landroid/graphics/ImageDecoder$ContentResolverSource;,
        Landroid/graphics/ImageDecoder$AssetSource;,
        Landroid/graphics/ImageDecoder$ByteArraySource;,
        Landroid/graphics/ImageDecoder$ByteBufferSource;,
        Landroid/graphics/ImageDecoder$InputStreamSource;,
        Landroid/graphics/ImageDecoder$InputStreamSourceQMG;,
        Landroid/graphics/ImageDecoder$FileSource;,
        Landroid/graphics/ImageDecoder$CallableSource;,
        Landroid/graphics/ImageDecoder$OnPartialImageListener;,
        Landroid/graphics/ImageDecoder$ImageInfo;,
        Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;,
        Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;,
        Landroid/graphics/ImageDecoder$DecodeException;,
        Landroid/graphics/ImageDecoder$MemoryPolicy;,
        Landroid/graphics/ImageDecoder$Allocator;,
        Landroid/graphics/ImageDecoder$IncompleteException;,
        Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;,
        Landroid/graphics/ImageDecoder$AssetInputStreamSource;
    }
.end annotation


# static fields
.field public static final ALLOCATOR_DEFAULT:I = 0x0

.field public static final ALLOCATOR_HARDWARE:I = 0x3

.field public static final ALLOCATOR_SHARED_MEMORY:I = 0x2

.field public static final ALLOCATOR_SOFTWARE:I = 0x1

.field public static final ERROR_SOURCE_ERROR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_SOURCE_EXCEPTION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_SOURCE_INCOMPLETE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_POLICY_DEFAULT:I = 0x1

.field public static final MEMORY_POLICY_LOW_RAM:I

.field private static sIsHevcDecoderSupported:Z

.field private static sIsHevcDecoderSupportedInitialized:Z

.field private static final sIsHevcDecoderSupportedLock:Ljava/lang/Object;

.field private static sIsP010SupportedFlagsInitialized:Z

.field private static sIsP010SupportedForAV1:Z

.field private static sIsP010SupportedForHEVC:Z

.field private static final sIsP010SupportedLock:Ljava/lang/Object;


# instance fields
.field private mAllocator:I

.field private final mAnimated:Z

.field private mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConserveMemory:Z

.field private mCropRect:Landroid/graphics/Rect;

.field private mDecodeAsAlphaMask:Z

.field private mDesiredColorSpace:Landroid/graphics/ColorSpace;

.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private final mHeight:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mIsNinePatch:Z

.field private mMutable:Z

.field private mNativePtr:J

.field private mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

.field private mOutPaddingRect:Landroid/graphics/Rect;

.field private mOwnsInputStream:Z

.field private mPostProcessor:Landroid/graphics/PostProcessor;

.field private mSource:Landroid/graphics/ImageDecoder$Source;

.field private mTempStorage:[B

.field private mUnpremultipliedRequired:Z

.field private final mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$smcreateFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateFromAssetQMG(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAssetQMG(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateFromStreamQMG(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->createFromStreamQMG(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smdescribeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder;->nCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 2251
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    .line 2252
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    .line 2253
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedLock:Ljava/lang/Object;

    .line 2273
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    .line 2274
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    .line 2275
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    .line 2276
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JIIZZ)V
    .registers 9
    .param p1, "nativePtr"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "animated"    # Z
    .param p6, "isNinePatch"    # Z

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 992
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 993
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 994
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 995
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 1009
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1010
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 1019
    iput-wide p1, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 1020
    iput p3, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    .line 1021
    iput p4, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    .line 1022
    iput p3, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 1023
    iput p4, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1024
    iput-boolean p5, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 1025
    iput-boolean p6, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    .line 1026
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method private callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V
    .registers 10
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 1952
    if-eqz p1, :cond_1f

    .line 1953
    new-instance v6, Landroid/graphics/ImageDecoder$ImageInfo;

    new-instance v1, Landroid/util/Size;

    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    iget-boolean v2, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 1955
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder$ImageInfo-IA;)V

    .line 1956
    .local v0, "info":Landroid/graphics/ImageDecoder$ImageInfo;
    invoke-interface {p1, p0, v0, p2}, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    .line 1958
    .end local v0    # "info":Landroid/graphics/ImageDecoder$ImageInfo;
    :cond_1f
    return-void
.end method

.method private checkForExtended()Z
    .registers 4

    .line 1925
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1926
    return v1

    .line 1928
    :cond_6
    sget-object v2, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eq v0, v2, :cond_18

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1929
    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-ne v0, v2, :cond_19

    :cond_18
    const/4 v1, 0x1

    .line 1928
    :cond_19
    return v1
.end method

.method private static checkP010SupportforAV1HEVC()V
    .registers 16

    .line 2311
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2312
    .local v0, "codecList":Landroid/media/MediaCodecList;
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_c
    const/4 v5, 0x1

    if-ge v4, v3, :cond_5b

    aget-object v6, v2, v4

    .line 2313
    .local v6, "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2314
    goto :goto_58

    .line 2316
    :cond_18
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v1

    :goto_1e
    if-ge v9, v8, :cond_58

    aget-object v10, v7, v9

    .line 2317
    .local v10, "mediaType":Ljava/lang/String;
    const-string/jumbo v11, "video/av01"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_34

    .line 2318
    const-string/jumbo v12, "video/hevc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_55

    .line 2319
    :cond_34
    nop

    .line 2320
    invoke-virtual {v6, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v12

    .line 2321
    .local v12, "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3a
    iget-object v14, v12, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v14, v14

    if-ge v13, v14, :cond_55

    .line 2322
    iget-object v14, v12, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v14, v14, v13

    const/16 v15, 0x36

    if-ne v14, v15, :cond_52

    .line 2324
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_50

    .line 2325
    sput-boolean v5, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    goto :goto_52

    .line 2327
    :cond_50
    sput-boolean v5, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    .line 2321
    :cond_52
    :goto_52
    add-int/lit8 v13, v13, 0x1

    goto :goto_3a

    .line 2316
    .end local v10    # "mediaType":Ljava/lang/String;
    .end local v12    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v13    # "i":I
    :cond_55
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 2312
    .end local v6    # "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_58
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2334
    :cond_5b
    sput-boolean v5, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    .line 2335
    return-void
.end method

.method private checkState(Z)V
    .registers 6
    .param p1, "animated"    # Z

    .line 1889
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_43

    .line 1893
    iget v0, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroid/graphics/ImageDecoder;->checkSubset(IILandroid/graphics/Rect;)V

    .line 1897
    if-nez p1, :cond_31

    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    .line 1898
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v0, :cond_29

    .line 1901
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    if-nez v0, :cond_21

    goto :goto_31

    .line 1902
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make HARDWARE Alpha mask Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1899
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make mutable HARDWARE Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1906
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v0, :cond_3a

    goto :goto_42

    .line 1907
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot draw to unpremultiplied pixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1909
    :cond_42
    :goto_42
    return-void

    .line 1890
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use closed ImageDecoder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSubset(IILandroid/graphics/Rect;)V
    .registers 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 1912
    if-nez p2, :cond_3

    .line 1913
    return-void

    .line 1915
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v1, "Subset "

    if-lez v0, :cond_53

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_53

    .line 1918
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, p0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p1, :cond_22

    .line 1922
    return-void

    .line 1919
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not contained by scaled image bounds: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1916
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is empty/unsorted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeDensity(Landroid/graphics/ImageDecoder$Source;)I
    .registers 10
    .param p1, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 2174
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->requestedResize()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2175
    const/4 v0, 0x0

    return v0

    .line 2178
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getDensity()I

    move-result v0

    .line 2179
    .local v0, "srcDensity":I
    if-nez v0, :cond_f

    .line 2180
    return v0

    .line 2188
    :cond_f
    iget-boolean v1, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-nez v1, :cond_18

    .line 2189
    return v0

    .line 2199
    :cond_18
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2200
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v2, v0, :cond_27

    .line 2201
    return v0

    .line 2204
    :cond_27
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v2

    .line 2205
    .local v2, "dstDensity":I
    if-ne v0, v2, :cond_2e

    .line 2206
    return v0

    .line 2211
    :cond_2e
    if-ge v0, v2, :cond_39

    .line 2212
    invoke-static {}, Landroid/graphics/Compatibility;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_39

    .line 2213
    return v0

    .line 2216
    :cond_39
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 2217
    .local v3, "scale":F
    iget v4, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2218
    .local v4, "scaledWidth":I
    iget v7, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2219
    .local v5, "scaledHeight":I
    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 2220
    return v2
.end method

.method private static createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 8
    .param p0, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 657
    .local v2, "asset":J
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    move-object v0, v4

    .line 659
    .end local v2    # "asset":J
    if-nez v0, :cond_11

    .line 660
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_16

    .line 662
    :cond_11
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 663
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 665
    nop

    .line 666
    :goto_16
    return-object v0

    .line 659
    :catchall_17
    move-exception v2

    if-nez v0, :cond_1e

    .line 660
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_22

    .line 662
    :cond_1e
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 663
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 665
    :goto_22
    throw v2
.end method

.method private static createFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 10
    .param p0, "assetFd"    # Landroid/content/res/AssetFileDescriptor;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    if-eqz p0, :cond_3b

    .line 399
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 400
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    .line 402
    .local v1, "offset":J
    const/4 v3, 0x0

    .line 405
    .local v3, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_b
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v1, v2, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 406
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-static {v0, v4, v5, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_18} :catch_1c
    .catchall {:try_start_b .. :try_end_18} :catchall_1a

    move-object v3, v4

    .line 409
    goto :goto_28

    .line 411
    :catchall_1a
    move-exception v4

    goto :goto_32

    .line 407
    :catch_1c
    move-exception v4

    .line 408
    .local v4, "e":Landroid/system/ErrnoException;
    :try_start_1d
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v6, 0x1

    invoke-static {v5, v6, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v5
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1a

    move-object v3, v5

    .line 411
    .end local v4    # "e":Landroid/system/ErrnoException;
    :goto_28
    if-nez v3, :cond_2e

    .line 412
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_31

    .line 414
    :cond_2e
    iput-object p0, v3, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 416
    nop

    .line 417
    :goto_31
    return-object v3

    .line 411
    :goto_32
    if-nez v3, :cond_38

    .line 412
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3a

    .line 414
    :cond_38
    iput-object p0, v3, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 416
    :goto_3a
    throw v4

    .line 397
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "offset":J
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    :cond_3b
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method private static createFromAssetQMG(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 8
    .param p0, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 679
    .local v2, "asset":J
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/ImageDecoder;->nCreateQMG(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    move-object v0, v4

    .line 681
    .end local v2    # "asset":J
    if-nez v0, :cond_11

    .line 682
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_16

    .line 684
    :cond_11
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 685
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 687
    nop

    .line 688
    :goto_16
    return-object v0

    .line 681
    :catchall_17
    move-exception v2

    if-nez v0, :cond_1e

    .line 682
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_22

    .line 684
    :cond_1e
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 685
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 687
    :goto_22
    throw v2
.end method

.method private static createFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 321
    .local v0, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 323
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x1

    :try_start_a
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_11} :catch_32

    .line 326
    nop

    .line 328
    const/4 v3, 0x0

    .line 330
    .local v3, "decoder":Landroid/graphics/ImageDecoder;
    const-wide/16 v4, -0x1

    :try_start_15
    invoke-static {v1, v4, v5, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_26

    move-object v3, v4

    .line 332
    if-nez v3, :cond_20

    .line 333
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_25

    .line 335
    :cond_20
    iput-object v0, v3, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 336
    iput-boolean v2, v3, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 338
    nop

    .line 339
    :goto_25
    return-object v3

    .line 332
    :catchall_26
    move-exception v4

    if-nez v3, :cond_2d

    .line 333
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_31

    .line 335
    :cond_2d
    iput-object v0, v3, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 336
    iput-boolean v2, v3, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 338
    :goto_31
    throw v4

    .line 324
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    :catch_32
    move-exception v3

    .line 325
    .local v3, "e":Landroid/system/ErrnoException;
    invoke-static {v0, v2, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2

    return-object v2
.end method

.method private static createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "closeInputStream"    # Z
    .param p2, "preferAnimation"    # Z
    .param p3, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 347
    .local v0, "storage":[B
    const/4 v1, 0x0

    .line 349
    .local v1, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_5
    invoke-static {p0, v0, p2, p3}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1a

    move-object v1, v2

    .line 351
    if-nez v1, :cond_12

    .line 352
    if-eqz p1, :cond_19

    .line 353
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_19

    .line 356
    :cond_12
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 357
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 358
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 360
    nop

    .line 362
    :cond_19
    :goto_19
    return-object v1

    .line 351
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_23

    .line 352
    if-eqz p1, :cond_29

    .line 353
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_29

    .line 356
    :cond_23
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 357
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 358
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 360
    :cond_29
    :goto_29
    throw v2
.end method

.method private static createFromStreamQMG(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "closeInputStream"    # Z
    .param p2, "preferAnimation"    # Z
    .param p3, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 375
    .local v0, "storage":[B
    const/4 v1, 0x0

    .line 377
    .local v1, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_5
    invoke-static {p0, v0, p2, p3}, Landroid/graphics/ImageDecoder;->nCreateQMG(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1a

    move-object v1, v2

    .line 379
    if-nez v1, :cond_12

    .line 380
    if-eqz p1, :cond_19

    .line 381
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_19

    .line 384
    :cond_12
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 385
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 386
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 388
    nop

    .line 390
    :cond_19
    :goto_19
    return-object v1

    .line 379
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_23

    .line 380
    if-eqz p1, :cond_29

    .line 381
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_29

    .line 384
    :cond_23
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 385
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 386
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 388
    :cond_29
    :goto_29
    throw v2
.end method

.method public static createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1119
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1131
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;
    .registers 3
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1140
    new-instance v0, Landroid/graphics/ImageDecoder$AssetSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 1096
    new-instance v0, Landroid/graphics/ImageDecoder$ResourceSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$ResourceSource;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 1231
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "density"    # I

    .line 1245
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 1273
    new-instance v0, Landroid/graphics/ImageDecoder$FileSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$FileSource;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1218
    new-instance v0, Landroid/graphics/ImageDecoder$ByteBufferSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$ByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;)",
            "Landroid/graphics/ImageDecoder$Source;"
        }
    .end annotation

    .line 1294
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/content/res/AssetFileDescriptor;>;"
    new-instance v0, Landroid/graphics/ImageDecoder$CallableSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$CallableSource;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static createSource([B)Landroid/graphics/ImageDecoder$Source;
    .registers 3
    .param p0, "data"    # [B

    .line 1196
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/ImageDecoder;->createSource([BII)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    return-object v0
.end method

.method public static createSource([BII)Landroid/graphics/ImageDecoder$Source;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1167
    if-eqz p0, :cond_1c

    .line 1170
    if-ltz p1, :cond_14

    if-ltz p2, :cond_14

    array-length v0, p0

    if-ge p1, v0, :cond_14

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_14

    .line 1175
    new-instance v0, Landroid/graphics/ImageDecoder$ByteArraySource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ByteArraySource;-><init>([BII)V

    return-object v0

    .line 1172
    :cond_14
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "invalid offset/length!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1168
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null byte[] in createSource!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createSourceQMG(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "density"    # I

    .line 1256
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2248
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2113
    if-eqz p1, :cond_7

    .line 2117
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2114
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null! Use decodeBitmap(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2124
    const-string v0, "ImageDecoder#decodeBitmap"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2125
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_59

    .line 2126
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_c
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    .line 2127
    invoke-direct {v0, p1, p0}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 2128
    new-instance v3, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;

    invoke-direct {v3, v0}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;-><init>(Landroid/graphics/ImageDecoder;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_4d

    .line 2131
    .local v3, "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    :try_start_16
    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v4

    .line 2132
    .local v4, "srcDensity":I
    invoke-direct {v0}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2133
    .local v5, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 2135
    iget-object v6, v0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 2136
    .local v6, "padding":Landroid/graphics/Rect;
    if-eqz v6, :cond_36

    .line 2137
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    .line 2138
    .local v7, "np":[B
    if-eqz v7, :cond_36

    invoke-static {v7}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 2139
    iget-wide v8, v0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v8, v9, v6}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_43

    .line 2142
    .end local v7    # "np":[B
    :cond_36
    nop

    .line 2143
    :try_start_37
    invoke-virtual {v3}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4d

    .line 2144
    if-eqz v0, :cond_3f

    :try_start_3c
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_59

    .line 2146
    :cond_3f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2142
    return-object v5

    .line 2128
    .end local v4    # "srcDensity":I
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "padding":Landroid/graphics/Rect;
    :catchall_43
    move-exception v4

    :try_start_44
    invoke-virtual {v3}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v5

    :try_start_49
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "decoder":Landroid/graphics/ImageDecoder;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :goto_4c
    throw v4
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 2125
    .end local v3    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .restart local v0    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_4d
    move-exception v3

    if-eqz v0, :cond_58

    :try_start_50
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v4

    :try_start_55
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :cond_58
    :goto_58
    throw v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 2146
    .end local v0    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_59
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2147
    throw v0
.end method

.method private decodeBitmapInternal()Landroid/graphics/Bitmap;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1942
    move-object/from16 v15, p0

    const/4 v0, 0x0

    invoke-direct {v15, v0}, Landroid/graphics/ImageDecoder;->checkState(Z)V

    .line 1943
    iget-wide v1, v15, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget-object v3, v15, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v3, :cond_d

    const/4 v0, 0x1

    :cond_d
    move v3, v0

    iget v4, v15, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v5, v15, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v6, v15, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-boolean v7, v15, Landroid/graphics/ImageDecoder;->mMutable:Z

    iget v8, v15, Landroid/graphics/ImageDecoder;->mAllocator:I

    iget-boolean v9, v15, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    iget-boolean v10, v15, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    iget-boolean v11, v15, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1946
    invoke-direct/range {p0 .. p0}, Landroid/graphics/ImageDecoder;->getColorSpacePtr()J

    move-result-wide v12

    .line 1947
    invoke-direct/range {p0 .. p0}, Landroid/graphics/ImageDecoder;->checkForExtended()Z

    move-result v14

    .line 1943
    move-wide v0, v1

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v14}, Landroid/graphics/ImageDecoder;->nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2094
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2005
    if-eqz p1, :cond_7

    .line 2009
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 2006
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null! Use decodeDrawable(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .registers 24
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2016
    move-object/from16 v1, p0

    const-string v0, "ImageDecoder#decodeDrawable"

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2017
    const/4 v0, 0x1

    :try_start_a
    invoke-virtual {v1, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_101

    .line 2018
    .local v4, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_e
    iput-object v1, v4, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_ef

    .line 2019
    move-object/from16 v5, p1

    :try_start_12
    invoke-direct {v4, v5, v1}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 2021
    new-instance v6, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;

    invoke-direct {v6, v4}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;-><init>(Landroid/graphics/ImageDecoder;)V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_ed

    .line 2022
    .local v6, "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    :try_start_1a
    iget-boolean v7, v4, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v7, :cond_d9

    .line 2029
    iget-boolean v7, v4, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v7, :cond_d1

    .line 2035
    invoke-direct {v4, v1}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v7

    .line 2036
    .local v7, "srcDensity":I
    iget-boolean v8, v4, Landroid/graphics/ImageDecoder;->mAnimated:Z

    if-eqz v8, :cond_72

    .line 2039
    iget-object v8, v4, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    const/4 v14, 0x0

    if-nez v8, :cond_31

    move-object v11, v14

    goto :goto_32

    :cond_31
    move-object v11, v4

    .line 2040
    .local v11, "postProcessPtr":Landroid/graphics/ImageDecoder;
    :goto_32
    invoke-direct {v4, v0}, Landroid/graphics/ImageDecoder;->checkState(Z)V

    .line 2041
    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-wide v9, v4, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget v12, v4, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v13, v4, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 2043
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->getColorSpacePtr()J

    move-result-wide v15

    .line 2044
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->checkForExtended()Z

    move-result v17

    .line 2045
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v18

    iget-object v8, v4, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-object v2, v4, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iget-object v3, v4, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v19, v8

    move-object v8, v0

    move-object v1, v14

    move-wide v14, v15

    move/from16 v16, v17

    move/from16 v17, v7

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v8 .. v21}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>(JLandroid/graphics/ImageDecoder;IIJZIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    .line 2048
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v1, v4, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 2049
    iput-object v1, v4, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_e1

    .line 2050
    nop

    .line 2071
    :try_start_64
    invoke-virtual {v6}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_ed

    .line 2072
    if-eqz v4, :cond_6c

    :try_start_69
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_ff

    .line 2074
    :cond_6c
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2050
    return-object v0

    .line 2053
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "postProcessPtr":Landroid/graphics/ImageDecoder;
    :cond_72
    :try_start_72
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2054
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 2056
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2057
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 2058
    .local v2, "np":[B
    if-eqz v2, :cond_be

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 2059
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2060
    .local v3, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 2061
    iget-object v8, v4, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 2062
    .local v8, "padding":Landroid/graphics/Rect;
    if-nez v8, :cond_9d

    .line 2063
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v9

    move-object v15, v8

    goto :goto_9e

    .line 2062
    :cond_9d
    move-object v15, v8

    .line 2065
    .end local v8    # "padding":Landroid/graphics/Rect;
    .local v15, "padding":Landroid/graphics/Rect;
    :goto_9e
    iget-wide v8, v4, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v8, v9, v15}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V

    .line 2066
    new-instance v16, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v14, 0x0

    move-object/from16 v8, v16

    move-object v9, v1

    move-object v10, v0

    move-object v11, v2

    move-object v12, v15

    move-object v13, v3

    invoke-direct/range {v8 .. v14}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_72 .. :try_end_b0} :catchall_e1

    .line 2071
    :try_start_b0
    invoke-virtual {v6}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_ed

    .line 2072
    if-eqz v4, :cond_b8

    :try_start_b5
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_ff

    .line 2074
    :cond_b8
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2066
    return-object v16

    .line 2070
    .end local v3    # "opticalInsets":Landroid/graphics/Rect;
    .end local v15    # "padding":Landroid/graphics/Rect;
    :cond_be
    :try_start_be
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_e1

    .line 2071
    :try_start_c3
    invoke-virtual {v6}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_ed

    .line 2072
    if-eqz v4, :cond_cb

    :try_start_c8
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_ff

    .line 2074
    :cond_cb
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2070
    return-object v3

    .line 2030
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "np":[B
    .end local v7    # "srcDensity":I
    :cond_d1
    :try_start_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode a mutable Drawable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .end local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    throw v0

    .line 2025
    .restart local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :cond_d9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode a Drawable with unpremultiplied pixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .end local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    throw v0
    :try_end_e1
    .catchall {:try_start_d1 .. :try_end_e1} :catchall_e1

    .line 2021
    .restart local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_e1
    move-exception v0

    move-object v1, v0

    :try_start_e3
    invoke-virtual {v6}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    goto :goto_ec

    :catchall_e7
    move-exception v0

    move-object v2, v0

    :try_start_e9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :goto_ec
    throw v1
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_ed

    .line 2017
    .end local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .restart local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_ed
    move-exception v0

    goto :goto_f2

    :catchall_ef
    move-exception v0

    move-object/from16 v5, p1

    :goto_f2
    move-object v1, v0

    if-eqz v4, :cond_fe

    :try_start_f5
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_f9

    goto :goto_fe

    :catchall_f9
    move-exception v0

    move-object v2, v0

    :try_start_fb
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :cond_fe
    :goto_fe
    throw v1
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_ff

    .line 2074
    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_ff
    move-exception v0

    goto :goto_104

    :catchall_101
    move-exception v0

    move-object/from16 v5, p1

    :goto_104
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2075
    throw v0
.end method

.method public static decodeHeader(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder$ImageInfo;
    .registers 11
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1975
    const-string v0, "ImageDecoder#decodeHeader"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1976
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_3b

    .line 1978
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_c
    new-instance v9, Landroid/graphics/ImageDecoder$ImageInfo;

    new-instance v4, Landroid/util/Size;

    iget v3, v0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v5, v0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-direct {v4, v3, v5}, Landroid/util/Size;-><init>(II)V

    iget-boolean v5, v0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 1981
    invoke-direct {v0}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 1982
    invoke-direct {v0}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder$ImageInfo-IA;)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2f

    .line 1983
    if-eqz v0, :cond_2b

    :try_start_28
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3b

    .line 1985
    :cond_2b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1978
    return-object v9

    .line 1976
    :catchall_2f
    move-exception v3

    if-eqz v0, :cond_3a

    :try_start_32
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v4

    :try_start_37
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    :cond_3a
    :goto_3a
    throw v3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    .line 1985
    .end local v0    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    :catchall_3b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1986
    throw v0
.end method

.method private static describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .registers 4
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;

    .line 2374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2376
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ID#w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2377
    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2378
    const-string v1, ";h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    iget v1, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2381
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v2, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    if-ne v1, v2, :cond_25

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    if-eq v1, v2, :cond_39

    .line 2383
    :cond_25
    const-string v1, ";dw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2385
    const-string v1, ";dh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2389
    :cond_39
    const-string v1, ";src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 2230
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method private getColorSpacePtr()J
    .registers 3

    .line 1933
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_7

    .line 1934
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1936
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method private getMimeType()Ljava/lang/String;
    .registers 3

    .line 2225
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSampledSize(I)Landroid/util/Size;
    .registers 6
    .param p1, "sampleSize"    # I

    .line 1313
    if-lez p1, :cond_17

    .line 1317
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 1321
    invoke-static {v0, v1, p1}, Landroid/graphics/ImageDecoder;->nGetSampledSize(JI)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 1318
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageDecoder is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sampleSize must be positive! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTargetDimension(III)I
    .registers 7
    .param p1, "original"    # I
    .param p2, "sampleSize"    # I
    .param p3, "computed"    # I

    .line 1375
    if-lt p2, p1, :cond_4

    .line 1376
    const/4 v0, 0x1

    return v0

    .line 1381
    :cond_4
    div-int v0, p1, p2

    .line 1382
    .local v0, "target":I
    if-ne p3, v0, :cond_9

    .line 1383
    return p3

    .line 1389
    :cond_9
    mul-int v1, p3, p2

    .line 1390
    .local v1, "reverse":I
    sub-int v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p2, :cond_14

    .line 1392
    return p3

    .line 1396
    :cond_14
    return v0
.end method

.method private static isHevcDecoderSupported()Z
    .registers 6

    .line 2260
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2261
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    if-eqz v1, :cond_b

    .line 2262
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    monitor-exit v0

    return v1

    .line 2264
    :cond_b
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 2265
    .local v1, "format":Landroid/media/MediaFormat;
    const-string/jumbo v2, "mime"

    const-string/jumbo v3, "video/hevc"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    new-instance v2, Landroid/media/MediaCodecList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2267
    .local v2, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v2, v1}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_27

    move v3, v5

    :cond_27
    sput-boolean v3, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    .line 2268
    sput-boolean v5, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    .line 2269
    monitor-exit v0

    return v3

    .line 2270
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mcl":Landroid/media/MediaCodecList;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static isMimeTypeSupported(Ljava/lang/String;)Z
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 1053
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_104

    :cond_12
    goto/16 :goto_f3

    :sswitch_14
    const-string v1, "image/x-canon-cr2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x8

    goto/16 :goto_f4

    :sswitch_20
    const-string v1, "image/x-nikon-nrw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    goto/16 :goto_f4

    :sswitch_2c
    const-string v1, "image/x-nikon-nef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    goto/16 :goto_f4

    :sswitch_38
    const-string v1, "image/x-olympus-orf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xc

    goto/16 :goto_f4

    :sswitch_44
    const-string v1, "image/x-ico"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    goto/16 :goto_f4

    :sswitch_4f
    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x6

    goto/16 :goto_f4

    :sswitch_5a
    const-string v1, "image/x-pentax-pef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xf

    goto/16 :goto_f4

    :sswitch_66
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto/16 :goto_f4

    :sswitch_71
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    goto/16 :goto_f4

    :sswitch_7c
    const-string v1, "image/bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    goto/16 :goto_f4

    :sswitch_87
    const-string v1, "image/x-panasonic-rw2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    goto/16 :goto_f4

    :sswitch_93
    const-string v1, "image/x-adobe-dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x9

    goto :goto_f4

    :sswitch_9e
    const-string v1, "image/webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    goto :goto_f4

    :sswitch_a8
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    goto :goto_f4

    :sswitch_b2
    const-string v1, "image/heif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    goto :goto_f4

    :sswitch_bd
    const-string v1, "image/heic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x12

    goto :goto_f4

    :sswitch_c8
    const-string v1, "image/avif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    goto :goto_f4

    :sswitch_d3
    const-string v1, "image/x-sony-arw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    goto :goto_f4

    :sswitch_dd
    const-string v1, "image/x-samsung-srw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x10

    goto :goto_f4

    :sswitch_e8
    const-string v1, "image/x-fuji-raf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xd

    goto :goto_f4

    :goto_f3
    const/4 v0, -0x1

    :goto_f4
    packed-switch v0, :pswitch_data_156

    .line 1079
    return v2

    .line 1077
    :pswitch_f8
    invoke-static {}, Landroid/graphics/ImageDecoder;->isP010SupportedForAV1()Z

    move-result v0

    return v0

    .line 1075
    :pswitch_fd
    invoke-static {}, Landroid/graphics/ImageDecoder;->isHevcDecoderSupported()Z

    move-result v0

    return v0

    .line 1072
    :pswitch_102
    return v3

    nop

    :sswitch_data_104
    .sparse-switch
        -0x6fc6acff -> :sswitch_e8
        -0x617ac9e4 -> :sswitch_dd
        -0x5f082c57 -> :sswitch_d3
        -0x58abd7ba -> :sswitch_c8
        -0x58a8e8f5 -> :sswitch_bd
        -0x58a8e8f2 -> :sswitch_b2
        -0x58a7d764 -> :sswitch_a8
        -0x58a21830 -> :sswitch_9e
        -0x54d6098a -> :sswitch_93
        -0x3ab85cc1 -> :sswitch_87
        -0x3468a12f -> :sswitch_7c
        -0x34688ef0 -> :sswitch_71
        -0x34686c8b -> :sswitch_66
        -0x13d592a1 -> :sswitch_5a
        0x2c2ee2ec -> :sswitch_4f
        0x4453ce0c -> :sswitch_44
        0x52243d4a -> :sswitch_38
        0x7d1e84e8 -> :sswitch_2c
        0x7d1e868c -> :sswitch_20
        0x7dd6e2bc -> :sswitch_14
    .end sparse-switch

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_fd
        :pswitch_fd
        :pswitch_f8
    .end packed-switch
.end method

.method private static isP010SupportedForAV1()Z
    .registers 2

    .line 2283
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2284
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    if-eqz v1, :cond_b

    .line 2285
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    monitor-exit v0

    return v1

    .line 2287
    :cond_b
    invoke-static {}, Landroid/graphics/ImageDecoder;->checkP010SupportforAV1HEVC()V

    .line 2288
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    monitor-exit v0

    return v1

    .line 2289
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static isP010SupportedForHEVC()Z
    .registers 2

    .line 2298
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2299
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    if-eqz v1, :cond_b

    .line 2300
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    monitor-exit v0

    return v1

    .line 2302
    :cond_b
    invoke-static {}, Landroid/graphics/ImageDecoder;->checkP010SupportforAV1HEVC()V

    .line 2303
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    monitor-exit v0

    return v1

    .line 2304
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static native nClose(J)V
.end method

.method private static native nCreate(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreateQMG(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreateQMG(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZJZ)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nGetColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native nGetMimeType(J)Ljava/lang/String;
.end method

.method private static native nGetPadding(JLandroid/graphics/Rect;)V
.end method

.method private static native nGetSampledSize(JI)Landroid/util/Size;
.end method

.method private onPartialImage(ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/graphics/ImageDecoder$DecodeException;
        }
    .end annotation

    .line 2355
    new-instance v0, Landroid/graphics/ImageDecoder$DecodeException;

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-direct {v0, p1, p2, v1}, Landroid/graphics/ImageDecoder$DecodeException;-><init>(ILjava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V

    .line 2356
    .local v0, "exception":Landroid/graphics/ImageDecoder$DecodeException;
    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    if-eqz v1, :cond_12

    .line 2357
    invoke-interface {v1, v0}, Landroid/graphics/ImageDecoder$OnPartialImageListener;->onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2360
    return-void

    .line 2358
    :cond_12
    throw v0
.end method

.method private postProcessAndRelease(Landroid/graphics/Canvas;)I
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2343
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    invoke-interface {v0, p1}, Landroid/graphics/PostProcessor;->onPostProcess(Landroid/graphics/Canvas;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 2345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 2343
    return v0

    .line 2345
    :catchall_a
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 2346
    throw v0
.end method

.method private requestedResize()Z
    .registers 3

    .line 1435
    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    if-eq v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static traceDecoderSource(Landroid/graphics/ImageDecoder;)Ljava/lang/AutoCloseable;
    .registers 5
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;

    .line 2156
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    .line 2157
    .local v2, "resourceTracingEnabled":Z
    if-eqz v2, :cond_f

    .line 2158
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2161
    :cond_f
    new-instance v0, Landroid/graphics/ImageDecoder$1;

    invoke-direct {v0, v2}, Landroid/graphics/ImageDecoder$1;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 1871
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1872
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1873
    return-void

    .line 1875
    :cond_10
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nClose(J)V

    .line 1876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 1878
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    if-eqz v0, :cond_22

    .line 1879
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1881
    :cond_22
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1883
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1884
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 1885
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 1886
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1032
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 1033
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1037
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1038
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 1040
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    .line 1042
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1043
    nop

    .line 1044
    return-void

    .line 1042
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1043
    throw v0
.end method

.method public getAllocator()I
    .registers 2

    .line 1505
    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    return v0
.end method

.method public getAsAlphaMask()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1822
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->getDecodeAsAlphaMask()Z

    move-result v0

    return v0
.end method

.method public getConserveMemory()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1757
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    return v0
.end method

.method public getCrop()Landroid/graphics/Rect;
    .registers 2

    .line 1631
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDecodeAsAlphaMask()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1814
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public getMemorySizePolicy()I
    .registers 2

    .line 1741
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMutable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1696
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->isMutableRequired()Z

    move-result v0

    return v0
.end method

.method public getOnPartialImageListener()Landroid/graphics/ImageDecoder$OnPartialImageListener;
    .registers 2

    .line 1603
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    return-object v0
.end method

.method public getPostProcessor()Landroid/graphics/PostProcessor;
    .registers 2

    .line 1581
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    return-object v0
.end method

.method public getRequireUnpremultiplied()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1549
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->isUnpremultipliedRequired()Z

    move-result v0

    return v0
.end method

.method public isDecodeAsAlphaMaskEnabled()Z
    .registers 2

    .line 1806
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public isMutableRequired()Z
    .registers 2

    .line 1688
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    return v0
.end method

.method public isUnpremultipliedRequired()Z
    .registers 2

    .line 1541
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    return v0
.end method

.method public setAllocator(I)V
    .registers 5
    .param p1, "allocator"    # I

    .line 1494
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 1497
    iput p1, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 1498
    return-void

    .line 1495
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid allocator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsAlphaMask(Z)Landroid/graphics/ImageDecoder;
    .registers 2
    .param p1, "asAlphaMask"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1793
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setDecodeAsAlphaMask(Z)Landroid/graphics/ImageDecoder;

    .line 1794
    return-object p0
.end method

.method public setConserveMemory(Z)V
    .registers 2
    .param p1, "conserveMemory"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1749
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 1750
    return-void
.end method

.method public setCrop(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "subset"    # Landroid/graphics/Rect;

    .line 1623
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    .line 1624
    return-void
.end method

.method public setDecodeAsAlphaMask(Z)Landroid/graphics/ImageDecoder;
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1784
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setDecodeAsAlphaMaskEnabled(Z)V

    .line 1785
    return-object p0
.end method

.method public setDecodeAsAlphaMaskEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1776
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1777
    return-void
.end method

.method public setMemorySizePolicy(I)V
    .registers 3
    .param p1, "policy"    # I

    .line 1733
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 1734
    return-void
.end method

.method public setMutable(Z)Landroid/graphics/ImageDecoder;
    .registers 2
    .param p1, "mutable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1680
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 1681
    return-object p0
.end method

.method public setMutableRequired(Z)V
    .registers 2
    .param p1, "mutable"    # Z

    .line 1672
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 1673
    return-void
.end method

.method public setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1595
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1596
    return-void
.end method

.method public setOutPaddingRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "outPadding"    # Landroid/graphics/Rect;

    .line 1648
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1649
    return-void
.end method

.method public setPostProcessor(Landroid/graphics/PostProcessor;)V
    .registers 2
    .param p1, "postProcessor"    # Landroid/graphics/PostProcessor;

    .line 1573
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    .line 1574
    return-void
.end method

.method public setRequireUnpremultiplied(Z)Landroid/graphics/ImageDecoder;
    .registers 2
    .param p1, "unpremultipliedRequired"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1533
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setUnpremultipliedRequired(Z)V

    .line 1534
    return-object p0
.end method

.method public setResize(I)Landroid/graphics/ImageDecoder;
    .registers 2
    .param p1, "sampleSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1369
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 1370
    return-object p0
.end method

.method public setResize(II)Landroid/graphics/ImageDecoder;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1330
    invoke-virtual {p0, p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1331
    return-object p0
.end method

.method public setTargetColorSpace(Landroid/graphics/ColorSpace;)V
    .registers 2
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1858
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 1859
    return-void
.end method

.method public setTargetSampleSize(I)V
    .registers 6
    .param p1, "sampleSize"    # I

    .line 1428
    invoke-direct {p0, p1}, Landroid/graphics/ImageDecoder;->getSampledSize(I)Landroid/util/Size;

    move-result-object v0

    .line 1429
    .local v0, "size":Landroid/util/Size;
    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v1

    .line 1430
    .local v1, "targetWidth":I
    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, p1, v3}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v2

    .line 1431
    .local v2, "targetHeight":I
    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1432
    return-void
.end method

.method public setTargetSize(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1355
    if-lez p1, :cond_9

    if-lez p2, :cond_9

    .line 1360
    iput p1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 1361
    iput p2, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1362
    return-void

    .line 1356
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions must be positive! provided ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUnpremultipliedRequired(Z)V
    .registers 2
    .param p1, "unpremultipliedRequired"    # Z

    .line 1525
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 1526
    return-void
.end method
