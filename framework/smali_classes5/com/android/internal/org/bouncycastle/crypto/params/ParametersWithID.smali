.class public Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;
.super Ljava/lang/Object;
.source "ParametersWithID.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private id:[B

.field private parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V
    .registers 3
    .param p1, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .param p2, "id"    # [B

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 20
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->id:[B

    .line 21
    return-void
.end method


# virtual methods
.method public getID()[B
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->id:[B

    return-object v0
.end method

.method public getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
