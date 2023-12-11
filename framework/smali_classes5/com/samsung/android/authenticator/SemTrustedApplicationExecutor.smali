.class public Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor;
.super Ljava/lang/Object;
.source "SemTrustedApplicationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;,
        Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    }
.end annotation


# static fields
.field private static final PERMISSION_REQUEST_AUTHNR_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I[B)[B
    .registers 5
    .param p1, "taHandle"    # I
    .param p2, "command"    # [B

    .line 140
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 141
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->execute(I[B)[B

    move-result-object v1

    return-object v1
.end method

.method public getCommandVersion()I
    .registers 3

    .line 177
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 178
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getCommandVersion()I

    move-result v1

    return v1
.end method

.method public load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I
    .registers 5
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p2, "file"    # Landroid/content/res/AssetFileDescriptor;

    .line 114
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 115
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I

    move-result v1

    return v1
.end method

.method public load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I
    .registers 4
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 94
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 95
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v1

    return v1
.end method

.method public unload(I)Z
    .registers 4
    .param p1, "taHandle"    # I

    .line 161
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 162
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->unload(I)Z

    move-result v1

    return v1
.end method
