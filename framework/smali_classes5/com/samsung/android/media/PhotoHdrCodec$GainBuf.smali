.class Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;
.super Ljava/lang/Object;
.source "PhotoHdrCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/PhotoHdrCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GainBuf"
.end annotation


# static fields
.field private static length:I

.field private static offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->offset:I

    .line 82
    sput v0, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->length:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->offset:I

    .line 85
    sput p2, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->length:I

    .line 86
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .line 91
    sget v0, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->length:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 88
    sget v0, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->offset:I

    return v0
.end method

.method public setLength(I)V
    .registers 2
    .param p1, "length"    # I

    .line 97
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->length:I

    .line 98
    return-void
.end method

.method public setOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .line 94
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->offset:I

    .line 95
    return-void
.end method
