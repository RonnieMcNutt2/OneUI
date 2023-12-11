.class public abstract Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Identifier"
.end annotation


# instance fields
.field private mBiometricId:I

.field private mDeviceId:J

.field private mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IJ)V
    .registers 5
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "biometricId"    # I
    .param p3, "deviceId"    # J

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    .line 107
    iput p2, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mBiometricId:I

    .line 108
    iput-wide p3, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    .line 109
    return-void
.end method


# virtual methods
.method public getBiometricId()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mBiometricId:I

    return v0
.end method

.method public getDeviceId()J
    .registers 3

    .line 131
    iget-wide v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setDeviceId(J)V
    .registers 3
    .param p1, "deviceId"    # J

    .line 139
    iput-wide p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    .line 140
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 135
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    .line 136
    return-void
.end method
