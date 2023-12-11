.class public Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSpecificPoseAlertAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextSpecificPoseAlertAttribute"


# instance fields
.field private mMaximumAngle:I

.field private mMinimumAngle:I

.field private mMovingThrs:I

.field private mRetentionTime:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 32
    const/16 v1, -0x5a

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 34
    const/16 v1, 0x5a

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 43
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7
    .param p1, "retentionTime"    # I
    .param p2, "minimumAngle"    # I
    .param p3, "maximumAngle"    # I
    .param p4, "movingThrs"    # I

    .line 62
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 32
    const/16 v1, -0x5a

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 34
    const/16 v1, 0x5a

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 63
    iput p1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 64
    iput p2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 65
    iput p3, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 66
    iput p4, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 67
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 68
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "retention_time"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v1, "minimum_angle"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v1, "maximum_angle"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v1, "moving_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const/16 v1, 0x1c

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 103
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 7

    .line 73
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/4 v1, 0x0

    const-string v2, "SContextSpecificPoseAlertAttribute"

    if-gez v0, :cond_d

    .line 74
    const-string v0, "The retention time is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v1

    .line 77
    :cond_d
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v3, -0x5a

    if-lt v0, v3, :cond_39

    const/16 v4, 0x5a

    if-le v0, v4, :cond_18

    goto :goto_39

    .line 81
    :cond_18
    iget v5, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-lt v5, v3, :cond_33

    if-le v5, v4, :cond_1f

    goto :goto_33

    .line 85
    :cond_1f
    if-le v0, v5, :cond_27

    .line 86
    const-string v0, "The minimum angle must be less than the maximum angle."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 89
    :cond_27
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    if-gez v0, :cond_31

    .line 90
    const-string v0, "The moving threshold is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v1

    .line 93
    :cond_31
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_33
    :goto_33
    const-string v0, "The maximum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 78
    :cond_39
    :goto_39
    const-string v0, "The minimum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v1
.end method
