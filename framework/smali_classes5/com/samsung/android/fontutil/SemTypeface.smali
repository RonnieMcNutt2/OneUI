.class public Lcom/samsung/android/fontutil/SemTypeface;
.super Ljava/lang/Object;
.source "SemTypeface.java"


# instance fields
.field private mFontPackageName:Ljava/lang/String;

.field public final mMonospaceFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/fontutil/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/fontutil/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mSerifFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/fontutil/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mFontPackageName:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mTypefaceFilename:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mSerifFonts:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mMonospaceFonts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFontPackageName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSansName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypefaceFilename()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/fontutil/SemTypeface;->mTypefaceFilename:Ljava/lang/String;

    return-object v0
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/fontutil/SemTypeface;->mFontPackageName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/fontutil/SemTypeface;->mName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTypefaceFilename(Ljava/lang/String;)V
    .registers 2
    .param p1, "typefaceFilename"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/fontutil/SemTypeface;->mTypefaceFilename:Ljava/lang/String;

    .line 65
    return-void
.end method
