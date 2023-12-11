.class public final Landroid/stats/mediametrics_message/MediametricsMessage$AudioTrackData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioTrackData"
.end annotation


# static fields
.field public static final ATTRIBUTES:J = 0x1090000000bL

.field public static final CHANNEL_MASK:J = 0x10300000005L

.field public static final CONTENT_TYPE:J = 0x10900000002L

.field public static final ENCODING:J = 0x10900000009L

.field public static final FRAME_COUNT:J = 0x1050000000aL

.field public static final PORT_ID:J = 0x10500000008L

.field public static final SAMPLE_RATE:J = 0x10500000004L

.field public static final STARTUP_GLITCH:J = 0x10500000007L

.field public static final STREAM_TYPE:J = 0x10900000001L

.field public static final TRACK_USAGE:J = 0x10900000003L

.field public static final UNDERRUN_FRAMES:J = 0x10500000006L


# instance fields
.field final synthetic this$0:Landroid/stats/mediametrics_message/MediametricsMessage;


# direct methods
.method public constructor <init>(Landroid/stats/mediametrics_message/MediametricsMessage;)V
    .registers 2
    .param p1, "this$0"    # Landroid/stats/mediametrics_message/MediametricsMessage;

    .line 175
    iput-object p1, p0, Landroid/stats/mediametrics_message/MediametricsMessage$AudioTrackData;->this$0:Landroid/stats/mediametrics_message/MediametricsMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
