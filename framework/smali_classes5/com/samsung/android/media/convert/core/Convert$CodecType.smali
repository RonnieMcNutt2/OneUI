.class public final Lcom/samsung/android/media/convert/core/Convert$CodecType;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/convert/core/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecType"
.end annotation


# static fields
.field public static final AUDIO_CODEC_AAC:I = 0x2

.field public static final AUDIO_CODEC_AMR:I = 0x1

.field public static final VIDEO_CODEC_H263:I = 0x3

.field public static final VIDEO_CODEC_H264:I = 0x4

.field public static final VIDEO_CODEC_H265:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
