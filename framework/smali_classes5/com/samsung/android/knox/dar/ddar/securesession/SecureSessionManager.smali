.class Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager;
.super Ljava/lang/Object;
.source "SecureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;,
        Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;,
        Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;
    }
.end annotation


# static fields
.field private static final CRYPTO_PROVIDER:Ljava/lang/String; = "AndroidOpenSSL"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
