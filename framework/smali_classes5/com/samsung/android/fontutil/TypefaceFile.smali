.class public Lcom/samsung/android/fontutil/TypefaceFile;
.super Ljava/lang/Object;
.source "TypefaceFile.java"


# instance fields
.field private mDroidName:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "droidName"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getDroidName()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setDroidName(Ljava/lang/String;)V
    .registers 2
    .param p1, "droidName"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filename : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / Droidname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
