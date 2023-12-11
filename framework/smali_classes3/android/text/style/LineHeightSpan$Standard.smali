.class public Landroid/text/style/LineHeightSpan$Standard;
.super Ljava/lang/Object;
.source "LineHeightSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LineHeightSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final mHeight:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "height"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Height: %d must be positive"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iput p1, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    .line 101
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "lineHeight"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 142
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    .line 144
    .local v0, "originHeight":I
    if-gtz v0, :cond_8

    .line 145
    return-void

    .line 147
    :cond_8
    iget v1, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 148
    .local v1, "ratio":F
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 149
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    sub-int/2addr v2, v3

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 150
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .line 113
    invoke-virtual {p0}, Landroid/text/style/LineHeightSpan$Standard;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .line 119
    const/16 v0, 0x1c

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LineHeightSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 130
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget v0, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void
.end method
