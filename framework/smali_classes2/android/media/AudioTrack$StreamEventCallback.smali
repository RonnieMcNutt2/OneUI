.class public abstract Landroid/media/AudioTrack$StreamEventCallback;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StreamEventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .registers 3
    .param p1, "track"    # Landroid/media/AudioTrack;
    .param p2, "sizeInFrames"    # I

    .line 4068
    return-void
.end method

.method public onPresentationEnded(Landroid/media/AudioTrack;)V
    .registers 2
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 4060
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .registers 2
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 4053
    return-void
.end method
