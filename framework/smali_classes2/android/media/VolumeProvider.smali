.class public abstract Landroid/media/VolumeProvider;
.super Ljava/lang/Object;
.source "VolumeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeProvider$Callback;,
        Landroid/media/VolumeProvider$ControlType;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/media/VolumeProvider$Callback;

.field private final mControlId:Ljava/lang/String;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "volumeControl"    # I
    .param p2, "maxVolume"    # I
    .param p3, "currentVolume"    # I

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/VolumeProvider;-><init>(IIILjava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .registers 5
    .param p1, "volumeControl"    # I
    .param p2, "maxVolume"    # I
    .param p3, "currentVolume"    # I
    .param p4, "volumeControlId"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Landroid/media/VolumeProvider;->mControlType:I

    .line 94
    iput p2, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    .line 95
    iput p3, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    .line 96
    iput-object p4, p0, Landroid/media/VolumeProvider;->mControlId:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    return v0
.end method

.method public final getMaxVolume()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    return v0
.end method

.method public final getVolumeControl()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/media/VolumeProvider;->mControlType:I

    return v0
.end method

.method public final getVolumeControlId()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/media/VolumeProvider;->mControlId:Ljava/lang/String;

    return-object v0
.end method

.method public onAdjustVolume(I)V
    .registers 2
    .param p1, "direction"    # I

    .line 176
    return-void
.end method

.method public onSetVolumeTo(I)V
    .registers 2
    .param p1, "volume"    # I

    .line 164
    return-void
.end method

.method public setCallback(Landroid/media/VolumeProvider$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/VolumeProvider$Callback;

    .line 183
    iput-object p1, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    .line 184
    return-void
.end method

.method public final setCurrentVolume(I)V
    .registers 3
    .param p1, "currentVolume"    # I

    .line 138
    iput p1, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    .line 139
    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    if-eqz v0, :cond_9

    .line 140
    invoke-virtual {v0, p0}, Landroid/media/VolumeProvider$Callback;->onVolumeChanged(Landroid/media/VolumeProvider;)V

    .line 142
    :cond_9
    return-void
.end method
