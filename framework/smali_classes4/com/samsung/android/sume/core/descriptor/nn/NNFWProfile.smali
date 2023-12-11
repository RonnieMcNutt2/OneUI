.class public Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;
.super Ljava/lang/Object;
.source "NNFWProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

.field private final hw:Lcom/samsung/android/sume/core/types/HwUnit;

.field private units:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V
    .registers 4
    .param p1, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p2, "hw"    # Lcom/samsung/android/sume/core/types/HwUnit;
    .param p3, "units"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    .line 17
    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 18
    iput p3, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->units:I

    .line 19
    return-void
.end method


# virtual methods
.method public flatten()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;",
            ">;"
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->units:I

    .line 35
    .local v0, "copies":I
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->units:I

    .line 36
    invoke-static {v0, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-object v0
.end method

.method public getHw()Lcom/samsung/android/sume/core/types/HwUnit;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method

.method public getUnits()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->units:I

    return v0
.end method
