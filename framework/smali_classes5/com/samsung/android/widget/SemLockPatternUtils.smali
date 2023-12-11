.class public Lcom/samsung/android/widget/SemLockPatternUtils;
.super Ljava/lang/Object;
.source "SemLockPatternUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemLockPatternUtils"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 29
    return-void
.end method

.method private createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "credentialType"    # I

    .line 228
    packed-switch p2, :pswitch_data_40

    .line 245
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCredential : wrong credential type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemLockPatternUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 242
    :pswitch_20
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_29
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 235
    :pswitch_2e
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 230
    :pswitch_33
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_2e
        :pswitch_3
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public clearEncryptionPassword()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 80
    return-void
.end method

.method public clearLock(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 213
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 214
    .local v0, "credentialType":I
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 215
    .local v1, "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 217
    .local v2, "newCredential":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v3, 0x0

    .line 219
    .local v3, "result":Z
    :try_start_f
    iget-object v4, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_18

    move v3, v4

    .line 223
    nop

    .line 224
    return v3

    .line 220
    :catch_18
    move-exception v4

    .line 221
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "SemLockPatternUtils"

    const-string v6, "clearLock : catch exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    const/4 v5, 0x0

    return v5
.end method

.method public getBiometricTypeForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    return v0
.end method

.method public getCredentialTypeForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 120
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    return v0
.end method

.method public getDeviceOwnerInfo()Ljava/lang/String;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .line 48
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .registers 4
    .param p1, "userId"    # I

    .line 189
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockoutAttemptTimeout(I)J
    .registers 4
    .param p1, "userId"    # I

    .line 200
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptTimeout(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 298
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 269
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public isCarrierLockEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 109
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isFmmLockEnabled(I)Z
    .registers 3
    .param p1, "userid"    # I

    .line 89
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 59
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method public isRemoteMobileManagerLockEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 99
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 38
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public setDeviceOwnerInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwnerInfo(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public setLockCredential(Ljava/lang/String;ILjava/lang/String;II)Z
    .registers 12
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "currentLockType"    # I
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "newLockType"    # I
    .param p5, "userId"    # I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 138
    .local v0, "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 140
    .local v1, "newCredential":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v2, 0x0

    .line 142
    .local v2, "result":Z
    :try_start_9
    iget-object v3, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1, v0, p5}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_12

    move v2, v3

    .line 146
    nop

    .line 147
    return v2

    .line 143
    :catch_12
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SemLockPatternUtils"

    const-string/jumbo v5, "setLockCredential : catch exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v4, 0x0

    return v4
.end method

.method public setLockScreenDisabled(ZI)V
    .registers 4
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .line 70
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 71
    return-void
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 307
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 308
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .line 316
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 317
    return-void
.end method

.method public verifyCredential(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 161
    .local v0, "credentialType":I
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 162
    .local v1, "credential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    const-string v3, "SemLockPatternUtils"

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    .line 163
    const-string/jumbo v2, "verifyCredential : credential is none."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v4

    .line 168
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1, p2, v4}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 169
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-eqz v5, :cond_42

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential : return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_41} :catch_45

    .line 171
    return v4

    .line 176
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_42
    nop

    .line 178
    const/4 v2, 0x1

    return v2

    .line 173
    :catch_45
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "verifyCredential : catch exception"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    return v4
.end method
