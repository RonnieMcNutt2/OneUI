.class public Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

.field private mIris:Lcom/samsung/android/camera/iris/Iris;


# direct methods
.method public constructor <init>(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Lcom/samsung/android/camera/iris/Iris;)V
    .registers 3
    .param p1, "crypto"    # Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .param p2, "iris"    # Lcom/samsung/android/camera/iris/Iris;

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    .line 1539
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mIris:Lcom/samsung/android/camera/iris/Iris;

    .line 1541
    return-void
.end method


# virtual methods
.method public getCryptoObject()Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .registers 2

    .line 1557
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    return-object v0
.end method

.method public getIris()Lcom/samsung/android/camera/iris/Iris;
    .registers 2

    .line 1577
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mIris:Lcom/samsung/android/camera/iris/Iris;

    return-object v0
.end method

.method public getToken()[B
    .registers 2

    .line 1605
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    invoke-virtual {v0}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->getFidoResultData()[B

    move-result-object v0

    return-object v0
.end method

.method public setToken([B)V
    .registers 3
    .param p1, "token"    # [B

    .line 1588
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->setFidoResultData([B)V

    .line 1590
    return-void
.end method
