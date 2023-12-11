.class public abstract Lcom/android/internal/widget/LockSettingsInternal;
.super Ljava/lang/Object;
.source "LockSettingsInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockSettingsInternal$ArmRebootEscrowErrorCode;
    }
.end annotation


# static fields
.field public static final ARM_REBOOT_ERROR_ESCROW_NOT_READY:I = 0x2

.field public static final ARM_REBOOT_ERROR_KEYSTORE_FAILURE:I = 0x6

.field public static final ARM_REBOOT_ERROR_NONE:I = 0x0

.field public static final ARM_REBOOT_ERROR_NO_ESCROW_KEY:I = 0x5

.field public static final ARM_REBOOT_ERROR_NO_PROVIDER:I = 0x3

.field public static final ARM_REBOOT_ERROR_PROVIDER_MISMATCH:I = 0x4

.field public static final ARM_REBOOT_ERROR_STORE_ESCROW_KEY:I = 0x7

.field public static final ARM_REBOOT_ERROR_UNSPECIFIED:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
.end method

.method public abstract armRebootEscrow()I
.end method

.method public abstract clearRebootEscrow()Z
.end method

.method public abstract clearStorageForUser(I)V
.end method

.method public abstract createNewUser(II)V
.end method

.method public abstract getCredentialType(I)I
.end method

.method public abstract getSecureMode(I)I
.end method

.method public abstract getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
.end method

.method public abstract isEscrowTokenActive(JI)Z
.end method

.method public abstract onThirdPartyAppsStarted()V
.end method

.method public abstract prepareRebootEscrow()Z
.end method

.method public abstract refreshStrongAuthTimeout(I)V
.end method

.method public abstract removeEscrowToken(JI)Z
.end method

.method public abstract removeUser(I)V
.end method

.method public abstract setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
.end method

.method public abstract setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
.end method

.method public abstract unlockUserKeyIfUnsecured(I)V
.end method

.method public abstract unlockUserWithToken(J[BI)Z
.end method
