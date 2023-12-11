.class final Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;
.super Ljava/lang/Object;
.source "AuthenticatorTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field private static final APP_ID:Ljava/lang/String; = "authnr"

.field private static final TAG:Ljava/lang/String; = "ATA"


# instance fields
.field private final mHandle:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mHandle:I

    .line 32
    return-void
.end method


# virtual methods
.method public execute([B)[B
    .registers 3
    .param p1, "command"    # [B

    .line 46
    const-string v0, "authnr"

    invoke-static {p1, v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->processWithPreloadedTa([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getHandle()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mHandle:I

    return v0
.end method

.method public load()I
    .registers 3

    .line 36
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->initializeWithPreloadedTa()Z

    move-result v0

    if-nez v0, :cond_10

    .line 37
    const-string v0, "ATA"

    const-string/jumbo v1, "iwpt failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, -0x1

    return v0

    .line 41
    :cond_10
    iget v0, p0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mHandle:I

    return v0
.end method

.method public unload()I
    .registers 3

    .line 51
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->terminateWithPreloadedTa()Z

    move-result v0

    if-nez v0, :cond_10

    .line 52
    const-string v0, "ATA"

    const-string/jumbo v1, "twpt failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, -0x1

    return v0

    .line 56
    :cond_10
    const/4 v0, 0x0

    return v0
.end method
