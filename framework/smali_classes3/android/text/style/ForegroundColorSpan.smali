.class public Landroid/text/style/ForegroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ForegroundColorSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "color"    # I

    .line 50
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 51
    iput p1, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundColor()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .line 63
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .line 69
    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForegroundColorSpan{color=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 102
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/text/style/ForegroundColorSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 80
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
