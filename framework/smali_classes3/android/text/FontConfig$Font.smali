.class public final Landroid/text/FontConfig$Font;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig$Font;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mFontFamilyName:Ljava/lang/String;

.field private final mFontVariationSettings:Ljava/lang/String;

.field private final mIndex:I

.field private final mOriginalFile:Ljava/io/File;

.field private final mPostScriptName:Ljava/lang/String;

.field private final mStyle:Landroid/graphics/fonts/FontStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 257
    new-instance v0, Landroid/text/FontConfig$Font$1;

    invoke-direct {v0}, Landroid/text/FontConfig$Font$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig$Font;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "originalFile"    # Ljava/io/File;
    .param p3, "postScriptName"    # Ljava/lang/String;
    .param p4, "style"    # Landroid/graphics/fonts/FontStyle;
    .param p5, "index"    # I
    .param p6, "fontVariationSettings"    # Ljava/lang/String;
    .param p7, "fontFamilyName"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    .line 232
    iput-object p2, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    .line 233
    iput-object p3, p0, Landroid/text/FontConfig$Font;->mPostScriptName:Ljava/lang/String;

    .line 234
    iput-object p4, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 235
    iput p5, p0, Landroid/text/FontConfig$Font;->mIndex:I

    .line 236
    iput-object p6, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    .line 237
    iput-object p7, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    .line 238
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 382
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 383
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_50

    .line 384
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/text/FontConfig$Font;

    .line 385
    .local v2, "font":Landroid/text/FontConfig$Font;
    iget v3, p0, Landroid/text/FontConfig$Font;->mIndex:I

    iget v4, v2, Landroid/text/FontConfig$Font;->mIndex:I

    if-ne v3, v4, :cond_4e

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    .line 386
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    .line 387
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 388
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    .line 389
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    .line 390
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    .line 385
    :goto_4f
    return v0

    .line 383
    .end local v2    # "font":Landroid/text/FontConfig$Font;
    :cond_50
    :goto_50
    return v1
.end method

.method public getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFontFamilyName()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalFile()Ljava/io/File;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    return-object v0
.end method

.method public getPostScriptName()Ljava/lang/String;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mPostScriptName:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Landroid/graphics/fonts/FontStyle;
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    return-object v0
.end method

.method public getTtcIndex()I
    .registers 2

    .line 337
    iget v0, p0, Landroid/text/FontConfig$Font;->mIndex:I

    return v0
.end method

.method public getWeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    invoke-virtual {p0}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 395
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    iget-object v2, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    iget v3, p0, Landroid/text/FontConfig$Font;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    iget-object v5, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-virtual {p0}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font{mFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginalFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig$Font;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFontVariationSettings=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFontFamilyName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mPostScriptName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Landroid/text/FontConfig$Font;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 255
    return-void
.end method
