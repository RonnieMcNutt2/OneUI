.class public Landroid/media/MediaCodec$ParameterDescriptor;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterDescriptor"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 5034
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5035
    return v0

    .line 5037
    :cond_4
    instance-of v1, p1, Landroid/media/MediaCodec$ParameterDescriptor;

    if-nez v1, :cond_9

    .line 5038
    return v0

    .line 5040
    :cond_9
    move-object v1, p1

    check-cast v1, Landroid/media/MediaCodec$ParameterDescriptor;

    .line 5041
    .local v1, "other":Landroid/media/MediaCodec$ParameterDescriptor;
    iget-object v2, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    iget-object v3, v1, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    iget v3, v1, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    if-ne v2, v3, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 5020
    iget-object v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 5029
    iget v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 5046
    iget-object v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    .line 5048
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 5046
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5048
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 5046
    return v0
.end method
