.class public Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private mFace:Lcom/samsung/android/bio/face/SemBioFace;

.field private mIsStrongBiometric:Z

.field private mUserId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;)V
    .registers 3
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "face"    # Lcom/samsung/android/bio/face/SemBioFace;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 540
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/SemBioFace;

    .line 541
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;IZ)V
    .registers 5
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p3, "userId"    # I
    .param p4, "isStrongBiometric"    # Z

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 526
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/SemBioFace;

    .line 527
    iput p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mUserId:I

    .line 528
    iput-boolean p4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    .line 529
    return-void
.end method


# virtual methods
.method public getCryptoObject()Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .registers 2

    .line 551
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object v0
.end method

.method public getFace()Lcom/samsung/android/bio/face/SemBioFace;
    .registers 2

    .line 560
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/SemBioFace;

    return-object v0
.end method

.method public getSecureInfo()Landroid/os/Bundle;
    .registers 2

    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 568
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mUserId:I

    return v0
.end method

.method public isStrongBiometric()Z
    .registers 3

    .line 576
    invoke-static {}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isStrong = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBioFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_21
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    return v0
.end method
