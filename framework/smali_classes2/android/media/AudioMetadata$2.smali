.class Landroid/media/AudioMetadata$2;
.super Ljava/lang/Object;
.source "AudioMetadata.java"

# interfaces
.implements Landroid/media/AudioMetadata$DataPackage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/AudioMetadata$DataPackage<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Integer;)Z
    .registers 4
    .param p1, "output"    # Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .param p2, "obj"    # Ljava/lang/Integer;

    .line 647
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->putInt(I)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z
    .registers 3

    .line 638
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioMetadata$2;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Integer;
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 642
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 2

    .line 638
    invoke-virtual {p0, p1}, Landroid/media/AudioMetadata$2;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
