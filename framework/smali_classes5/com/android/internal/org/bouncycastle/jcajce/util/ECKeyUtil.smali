.class public Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil;
.super Ljava/lang/Object;
.source "ECKeyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKeyWithCompression(Ljava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPublicKey;
    .registers 2
    .param p0, "ecPublicKey"    # Ljava/security/interfaces/ECPublicKey;

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    return-object v0
.end method
