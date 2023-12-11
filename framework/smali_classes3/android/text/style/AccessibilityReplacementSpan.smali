.class public Landroid/text/style/AccessibilityReplacementSpan;
.super Landroid/text/style/ReplacementSpan;
.source "AccessibilityReplacementSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/AccessibilityReplacementSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Landroid/text/style/AccessibilityReplacementSpan$1;

    invoke-direct {v0}, Landroid/text/style/AccessibilityReplacementSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/AccessibilityReplacementSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 53
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Landroid/text/style/AccessibilityReplacementSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 42
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Landroid/text/style/AccessibilityReplacementSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 90
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/text/style/AccessibilityReplacementSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .line 63
    const/16 v0, 0x1d

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityReplacementSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 74
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    invoke-virtual {p0}, Landroid/text/style/AccessibilityReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
